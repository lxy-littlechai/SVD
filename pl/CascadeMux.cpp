#include <hls_stream.h>
#include <hls_print.h>
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

// todo: split mux_sel & top_sel
void generateInOrder(axis_stream mux_insel[MUX_NUM], axis_stream& top_insel) {
    #pragma HLS inline off 

    /* Load DDR Stage */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id = i/MUX_SIZE;
        top_insel.write(id);
        mux_insel[id].write(i%MUX_SIZE);
    }

    /* Sweep Stage */
    if(BLOCK_NUM%2 == 0) {
      int pu[BLOCK_NUM/2][2], tmp[BLOCK_NUM/2][2];
      for(int k = 0;k < ITER;k ++) {
        for(int i = 0;i < BLOCK_NUM;i += 2) {
          pu[i/2][0] = i;
          pu[i/2][1] = i+1;
        }
        const int PU_NUM = BLOCK_NUM/2;
        for(int i = 0;i < BLOCK_NUM-1;i ++) {
          for(int j = 0;j < PU_NUM;j ++) {
            #pragma HLS PIPELINE II = 1
            int id0 = pu[j][0]/MUX_SIZE;
            top_insel.write(id0);
            mux_insel[id0].write(pu[j][0]%MUX_SIZE);

            int id1 = pu[j][1]/MUX_SIZE;
            top_insel.write(id1);
            mux_insel[id1].write(pu[j][1]%MUX_SIZE);
          }
          tmp[1][0] = pu[0][0];
          tmp[0][0] = pu[0][1];
          for(int j = 1;j < PU_NUM-1;j ++) {
            tmp[j+1][0] = pu[j][0];
            tmp[j-1][1] = pu[j][1];
          }
          tmp[PU_NUM-2][1] = pu[PU_NUM-1][0];
          tmp[PU_NUM-1][1] = pu[PU_NUM-1][1];

          for(int j = 0;j < PU_NUM;j ++) {
            pu[j][0] = tmp[j][0];
            pu[j][1] = tmp[j][1];
          }
        }
      }
    }


}

void generateOutOrder(axis_stream mux_outsel[MUX_NUM], axis_stream& top_outsel) {
    #pragma HLS inline off 

    /* Sweep Stage */
    if(BLOCK_NUM%2 == 0) {
      int pu[BLOCK_NUM/2][2], tmp[BLOCK_NUM/2][2];
      for(int k = 0;k < ITER;k ++) {
        for(int i = 0;i < BLOCK_NUM;i += 2) {
          pu[i/2][0] = i;
          pu[i/2][1] = i+1;
        }
        const int PU_NUM = BLOCK_NUM/2;
        for(int i = 0;i < BLOCK_NUM-1;i ++) {
          for(int j = 0;j < PU_NUM;j ++) {
            #pragma HLS PIPELINE II = 1
            int id0 = pu[j][0]/MUX_SIZE;
            top_outsel.write(id0);
            mux_outsel[id0].write(pu[j][0]%MUX_SIZE);

            int id1 = pu[j][1]/MUX_SIZE;
            top_outsel.write(id1);
            mux_outsel[id1].write(pu[j][1]%MUX_SIZE);
          }
          tmp[1][0] = pu[0][0];
          tmp[0][0] = pu[0][1];
          for(int j = 1;j < PU_NUM-1;j ++) {
            tmp[j+1][0] = pu[j][0];
            tmp[j-1][1] = pu[j][1];
          }
          tmp[PU_NUM-2][1] = pu[PU_NUM-1][0];
          tmp[PU_NUM-1][1] = pu[PU_NUM-1][1];

          for(int j = 0;j < PU_NUM;j ++) {
            pu[j][0] = tmp[j][0];
            pu[j][1] = tmp[j][1];
          }
        }
      }
    }

    /* Norm Stage */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id = i/MUX_SIZE;
        top_outsel.write(id);
        mux_outsel[id].write(i%MUX_SIZE);
    }

}

//todo:1. try fifo 2. try while
void mux8to1(const int ITER, axis_stream_128 block[MUX_SIZE], axis_stream_128& out, axis_stream& select) {
#pragma HLS INLINE off
    const int MUX_RUN_TIMES = ITER*MUX_SIZE*(BLOCK_NUM-1) + BLOCK_NUM;
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    ap_uint<32> sel;
    while(1) {
      if(select.read_nb(sel)) {
        int index = sel%MUX_SIZE;
        hls::print("mux8to1 index: %d\n", index);
        for(int i = 0;i < BLOCK_ELEM_NUM;i ++) {
            ap_uint<128> tmp = block[index].read();
            out.write(tmp);
        }
      }
        
    }
}


void mux1to8(const int ITER, axis_stream_128 block[MUX_SIZE], axis_stream_128& in, axis_stream& select) {
#pragma HLS INLINE off
    const int MUX_RUN_TIMES = ITER*MUX_SIZE*(BLOCK_NUM-1) + BLOCK_NUM;
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    ap_uint<32> sel;
    while(1) {
        if(select.read_nb(sel)) {
          int index = sel%MUX_SIZE;
          hls::print("mux1to8 index: %d\n", index);
          for(int i = 0;i < BLOCK_ELEM_NUM;i ++) {
            ap_uint<128> tmp = in.read();
            block[index].write(tmp);
          } 
        }
        
    }
    
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
          tmp = fromAIEstrm.read();
      }
    }
}

void receive4AIE(axis_stream_128& block, 
                   axis_pkt_stream& fromAIEstrm) {
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

void send2AIE(axis_stream_128& block, 
              axis_pkt_stream& toAIEstrm) {

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

void CascadeMuxSend(const int ITER, axis_stream& top_outsel, axis_stream_128 mux_out[MUX_NUM], 
                    axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_tx0_1, 
                    axis_pkt_stream& norm_tx0) {
    #pragma HLS INLINE off
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;

    for(int i = 0;i < SWEEP_STEP;i ++) {
        int id0 = top_outsel.read();
        int id1 = top_outsel.read();
        int index = i%SWEEP_PLIO_NUM;
        if(index == 0) {
            send2AIE(mux_out[id0], sweep_tx0_0);
            send2AIE(mux_out[id1], sweep_tx0_1);
        }
    }

    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id0 = top_outsel.read();
        int index = i%NORM_PLIO_NUM;
        if(index == 0) {
            send2AIE(mux_out[id0], norm_tx0);
        }
    }
}

void CascadeMuxReceive(const int ITER, axis_stream& top_insel, axis_stream_128 mux_in[MUX_NUM], 
                       ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S,
                       axis_pkt_stream& sweep_rx0_0, axis_pkt_stream& sweep_rx0_1,
                       axis_pkt_stream& norm_rx0) {
    #pragma HLS INLINE off
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id = top_insel.read();
        for(int j = 0;j < BLOCK_SIZE;j ++) {
          for(int k = 0;k < ROW/DDR_ELEM_NUM;k ++) {
            #pragma HLS PIPELINE II = 1
            ap_uint<128> tmp = dataIn[i*BLOCK_SIZE*ROW/DDR_ELEM_NUM + j*ROW/DDR_ELEM_NUM + k];
            mux_in[id].write(tmp); 
          }
        }
    }

    const int SWEEP_TIMES = ITER*BLOCK_NUM/2*(BLOCK_NUM-1);
    for(int i = 0;i < SWEEP_TIMES;i ++) {
        int id0 = top_insel.read();
        int id1 = top_insel.read();
        int index = i%SWEEP_PLIO_NUM;
        if(index == 0) {
            receive4AIE(mux_in[id0], sweep_rx0_0);
            receive4AIE(mux_in[id1], sweep_rx0_1);
        }
    }

    norm_receive(U, S, norm_rx0); 
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

    axis_stream_128 block[BLOCK_NUM];
    axis_stream_128 mux_in[MUX_NUM], mux_out[MUX_NUM];
    axis_stream mux_insel[MUX_NUM], mux_outsel[MUX_NUM];
    axis_stream top_insel, top_outsel;

    generateInOrder(mux_insel, top_insel);
    generateOutOrder(mux_outsel, top_outsel);
    for(int i = 0;i < MUX_NUM;i ++) {
        #pragma HLS unroll
        mux8to1(ITER, block+i*MUX_SIZE, mux_out[i], mux_outsel[i]);
    }
    for(int i = 0;i < MUX_NUM;i ++) {
        #pragma HLS unroll
        mux1to8(ITER, block+i*MUX_SIZE, mux_in[i], mux_insel[i]);
    } 

    CascadeMuxSend(ITER, top_outsel, mux_out, 
                   sweep_tx0_0, sweep_tx0_1,
                   norm_tx0);
    CascadeMuxReceive(ITER, top_insel, mux_in, 
                     dataIn, U, S,
                     sweep_rx0_0, sweep_rx0_1,
                     norm_rx0);

    

}
