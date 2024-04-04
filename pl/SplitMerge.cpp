#include "config.h"

static ap_uint<32> generateHeader(unsigned int pktType, unsigned int ID){
    #pragma HLS inline
    ap_uint<32> header = 0;
    header(4, 0) = ID;
    header(11, 5) = 0;
    header(14, 12) = pktType;
    header[15] = 0;
    header(20, 16) = -1; // source row
    header(27, 21) = -1; // source column
    header(30, 28) = 0;
    header[31] = header(30, 0).xor_reduce() ? (ap_uint<1>)0 : (ap_uint<1>)1;
    return header;
}

static unsigned int getPacketID(ap_uint<32> header){
    #pragma HLS inline
    ap_uint<32> ID = 0;
    ID(4, 0) = header(4, 0);
    return ID;
}

void send2AIE(axis_stream_128& block, axis_pkt_stream& toAIEstrm) {

    #pragma HLS FUNCTION_INSTANTIATE variable=toAIEstrm
    #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2];

    for(int i = 0;i < BLOCK_SIZE;i ++) {
      unsigned int COL_INDEX = i;
      header = generateHeader(0, COL_INDEX);
      data_temp[0] = block.read();
      tmp.data(31, 0) = header;
      tmp.data(63, 32) = data_temp[0](31, 0);
      tmp.data(95, 64) = data_temp[0](63, 32);
      tmp.data(127, 96) = data_temp[0](95, 64);
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        data_temp[j%2] = block.read();
        tmp.data(31, 0) = data_temp[(j-1)%2](127, 96);
        tmp.data(63, 32) = data_temp[j%2](31, 0);
        tmp.data(95, 64) = data_temp[j%2](63, 32);
        tmp.data(127, 96) = data_temp[j%2](95, 64);
        tmp.keep = -1;
        tmp.last = 0;
        toAIEstrm.write(tmp);
      }
      
      tmp.data(31, 0) = data_temp[(ROW/ELEM_NUM-1)%2](127, 96);
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x000f;
      tmp.last = 1;
      toAIEstrm.write(tmp);

    }
    
}

void receive4AIE(axis_stream_128& block, axis_pkt_stream& fromAIEstrm) {
    #pragma HLS FUNCTION_INSTANTIATE variable=fromAIEstrm
    #pragma HLS inline off 
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2] = {0, 0};

    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }
        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        block.write(data_temp[(ROW/ELEM_NUM-1)%2]);
    }
}

void norm_receive4AIE(axis_stream_128& block, axis_pkt_stream& fromAIEstrm) {
    #pragma HLS FUNCTION_INSTANTIATE variable=fromAIEstrm
    #pragma HLS inline off 
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2] = {0, 0};

    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }
        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        block.write(data_temp[(ROW/ELEM_NUM-1)%2]);
        ap_uint<32> sigma = 0;
        sigma(31, 0) = tmp.data(63, 32);
        block.write(sigma); 
    }
}

void Split(axis_stream_128& dataIn, 
           axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_tx0_1, 
           axis_pkt_stream& norm_tx0) {
    
    /* Sweep Stage */
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int i = 0;i < SWEEP_STEP;i ++) {
        int index = i%SWEEP_PLIO_NUM;
        if(index == 0) {
            send2AIE(dataIn, sweep_tx0_0);
            send2AIE(dataIn, sweep_tx0_1);
        }
    }

    /* norm Stage */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int index = i%NORM_PLIO_NUM;
        if(index == 0) {
            send2AIE(dataIn, norm_tx0);
        }
    }
}

void Merge(axis_stream_128& dataOut,
           axis_pkt_stream& sweep_rx0_0, axis_pkt_stream& sweep_rx0_1,
           axis_pkt_stream& norm_rx0) {

    /* Sweep Stage */
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int i = 0;i < SWEEP_STEP;i ++) {
        int index = i%SWEEP_PLIO_NUM;
        if(index == 0) {
            receive4AIE(dataOut, sweep_rx0_0);
            receive4AIE(dataOut, sweep_rx0_1);
        }
    }

    /* Norm Stage */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int index = i%NORM_PLIO_NUM;
        if(index == 0) {
            norm_receive4AIE(dataOut, norm_rx0);
        }
    }        

}

void SplitMerge(const int ITER, axis_stream_128& dataIn, axis_stream_128& dataOut,
                axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_rx0_0,
                axis_pkt_stream& sweep_tx0_1, axis_pkt_stream& sweep_rx0_1,
                axis_pkt_stream& norm_tx0, axis_pkt_stream& norm_rx0) {
#pragma HLS INTERFACE s_axilite port = ITER bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS INTERFACE axis port = dataIn
#pragma HLS INTERFACE axis port = dataOut

#pragma HLS INTERFACE axis port = sweep_tx0_0
#pragma HLS INTERFACE axis port = sweep_tx0_1
#pragma HLS INTERFACE axis port = sweep_rx0_0
#pragma HLS INTERFACE axis port = sweep_rx0_1

#pragma HLS INTERFACE axis port = norm_tx0
#pragma HLS INTERFACE axis port = norm_rx0

    #pragma HLS dataflow
    
    Split(dataIn,
          sweep_tx0_0, sweep_tx0_1,
          norm_tx0);
    Merge(dataOut,
          sweep_rx0_0, sweep_rx0_1,
          norm_rx0);
}