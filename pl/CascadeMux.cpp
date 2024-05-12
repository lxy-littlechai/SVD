#include <hls_stream.h>
#include <cmath>
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

void norm_receive(ap_uint<DDR_WIDTH>* U,
                  ap_uint<32>* S, 
                  axis_pkt_stream& fromAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<32> sigma;
    for(int k = 0;k < BLOCK_NUM;k ++) {
      ap_int<DDR_WIDTH> data_temp[2] = {0, 0};

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
            U[k*BLOCK_SIZE*ROW/ELEM_NUM + i*ROW/ELEM_NUM + j-1] = data_temp[(j-1)%2];
          }
          tmp = fromAIEstrm.read();
          data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
          U[k*BLOCK_SIZE*ROW/ELEM_NUM + i*ROW/ELEM_NUM + ROW/ELEM_NUM-1] = data_temp[(ROW/ELEM_NUM-1)%2];
          S[k*BLOCK_SIZE + i] = tmp.data(63, 32);
      }
    }
}

void receive4AIE(axis_stream_128& block, 
                   axis_pkt_stream& fromAIEstrm) {
    #pragma HLS inline off 
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<W> data_temp[2] = {0, 0};

    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
	#pragma HLS PIPELINE II = 1
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

void send2AIE(axis_stream_128& block, 
              axis_pkt_stream& toAIEstrm) {

    #pragma HLS inline off     
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<W> data_temp[2];

    for(int i = 0;i < BLOCK_SIZE;i ++) {
      header = generateHeader(0, i);
      data_temp[0] = block.read();
      tmp.data(31, 0) = header;
      tmp.data(63, 32) = data_temp[0](31, 0);
      tmp.data(95, 64) = data_temp[0](63, 32);
      tmp.data(127, 96) = data_temp[0](95, 64);
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
	#pragma HLS PIPELINE II = 1
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

void DDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, axis_stream_128 ddr_fifo[2]) {
  const int BLOCK_DATA_SIZE = BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  for(int i = 0;i < BLOCK_NUM;i ++) {
    if(i&1) {
      for(int j = 0;j < BLOCK_DATA_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        ap_uint<128> tmp = dataIn[i*BLOCK_DATA_SIZE + j];
        ddr_fifo[1].write(tmp); 
      }
      
    }
    else {
      for(int j = 0;j < BLOCK_DATA_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        ap_uint<128> tmp = dataIn[i*BLOCK_DATA_SIZE + j];
        ddr_fifo[0].write(tmp); 
      } 
    }
        
    
  }
}

void Send(const int ITER, axis_stream_128 ddr_fifo[2],
                    axis_stream_128 fifo[2], 
                    axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_tx0_1, 
                    axis_pkt_stream& norm_tx0) {
    #pragma HLS INLINE off

    for(int i = 0;i < BLOCK_NUM/2;i ++) {
      #pragma HLS dataflow
      send2AIE(ddr_fifo[0], sweep_tx0_0);
      send2AIE(ddr_fifo[1], sweep_tx0_1);
    }

    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER - BLOCK_NUM/2;

    for(int i = 0;i < SWEEP_STEP;i ++) {
        #pragma HLS dataflow
        send2AIE(fifo[0], sweep_tx0_0);
        send2AIE(fifo[1], sweep_tx0_1);
    }

    for(int i = 0;i < BLOCK_NUM/2;i ++) {
        send2AIE(fifo[0], norm_tx0);
        send2AIE(fifo[1], norm_tx0);
    }
}

void Receive(const int ITER, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S,
                       axis_stream_128 fifo[2], 
                       axis_pkt_stream& sweep_rx0_0, axis_pkt_stream& sweep_rx0_1,
                       axis_pkt_stream& norm_rx0) {
    #pragma HLS INLINE off
    

    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;

    for(int i = 0;i < SWEEP_STEP;i ++) {
        #pragma HLS dataflow
        receive4AIE(fifo[0], sweep_rx0_0);
        receive4AIE(fifo[1], sweep_rx0_1);
    }


    norm_receive(U, S, norm_rx0); 
}

void RoundRobin(const int ITER, axis_stream_128 send_fifo[2], axis_stream_128 receive_fifo[2]) {
  const int SINGLE_SWEEP_TIMES = ITER*(BLOCK_NUM-1);

  for(int i = 0;i < SINGLE_SWEEP_TIMES;i ++) {
      
      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
        ap_uint<W> tmp = receive_fifo[1].read();
        send_fifo[0].write(tmp);
      }
      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
        ap_uint<W> tmp = receive_fifo[0].read();
        send_fifo[0].write(tmp);
      }
      
      for(int j = 0;j < BLOCK_NUM/2-2;j ++) {
        for(int k = 0;k < BLOCK_SIZE*ROW/ELEM_NUM;k ++) {
          ap_uint<W> tmp0 = receive_fifo[0].read();
          ap_uint<W> tmp1 = receive_fifo[1].read();
          send_fifo[0].write(tmp0);
          send_fifo[1].write(tmp1);
        }
      }

      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
        ap_uint<W> tmp = receive_fifo[0].read();
        send_fifo[1].write(tmp);
      }
      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
        ap_uint<W> tmp = receive_fifo[1].read();
        send_fifo[1].write(tmp);
      }
      
    }
}




void CascadeMux(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S,
                const int ITER,
                axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_rx0_0,
                axis_pkt_stream& sweep_tx0_1, axis_pkt_stream& sweep_rx0_1,
                axis_pkt_stream& norm_tx0, axis_pkt_stream& norm_rx0
                ) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = dataIn depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem1 port = U depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem2 port = S depth = 8192
#pragma HLS INTERFACE s_axilite port = dataIn bundle = control
#pragma HLS INTERFACE s_axilite port = U bundle = control
#pragma HLS INTERFACE s_axilite port = S bundle = control
#pragma HLS INTERFACE s_axilite port = ITER bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS INTERFACE axis port = sweep_tx0_0
#pragma HLS INTERFACE axis port = sweep_tx0_1
#pragma HLS INTERFACE axis port = sweep_rx0_0
#pragma HLS INTERFACE axis port = sweep_rx0_1

#pragma HLS INTERFACE axis port = norm_tx0
#pragma HLS INTERFACE axis port = norm_rx0

    #pragma HLS dataflow

    axis_stream_128 send_fifo[2], receive_fifo[2];
    axis_stream_128 ddr_fifo[2];

    DDR2FIFO(dataIn, ddr_fifo);

    Send(ITER, ddr_fifo,
                   send_fifo,  
                   sweep_tx0_0, sweep_tx0_1,
                   norm_tx0);
    RoundRobin(ITER, send_fifo, receive_fifo);
    Receive(ITER, U, S,
                     receive_fifo, 
                     sweep_rx0_0, sweep_rx0_1,
                     norm_rx0);

    

}
