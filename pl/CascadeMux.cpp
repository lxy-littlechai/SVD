#include <hls_stream.h>
#include <hls_print.h>
#include <cmath>
#include "config.h"

void generateOrder(axis_stream mux_insel[MUX_NUM], axis_stream mux_outsel[MUX_NUM],
                  axis_stream& top_insel, axis_stream& top_outsel) {
    #pragma HLS inline off 

    /* Load DDR Stage */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id = i/MUX_SIZE;
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
            top_outsel.write(id0);
            mux_insel[id0].write(pu[j][0]%MUX_SIZE);
            mux_outsel[id0].write(pu[j][0]%MUX_SIZE);

            int id1 = pu[j][1]/MUX_SIZE;
            top_insel.write(id1);
            top_outsel.write(id1);
            mux_insel[id1].write(pu[j][1]%MUX_SIZE);
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


void mux8to1(const int ITER, axis_stream_128 block[MUX_SIZE], axis_stream_128& out, axis_stream& select) {
#pragma HLS INLINE off
    const int MUX_RUN_TIMES = ITER*MUX_SIZE*(BLOCK_NUM-1) + BLOCK_NUM;
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    for(int k = 0;k < MUX_RUN_TIMES;k ++) {
        int index = select.read()%MUX_SIZE;
        hls::print("mux8to1 index: %d\n", index);
        for(int i = 0;i < BLOCK_ELEM_NUM;i ++) {
            ap_uint<128> tmp = block[index].read();
            out.write(tmp);
        }
    }
}


void mux1to8(const int ITER, axis_stream_128 block[MUX_SIZE], axis_stream_128& in, axis_stream& select) {
#pragma HLS INLINE off
    const int MUX_RUN_TIMES = ITER*MUX_SIZE*(BLOCK_NUM-1) + BLOCK_NUM;
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    for(int k = 0;k < MUX_RUN_TIMES;k ++) {
        int index = select.read()%MUX_SIZE;
        hls::print("mux1to8 index: %d\n", index);
        for(int i = 0;i < BLOCK_ELEM_NUM;i ++) {
            ap_uint<128> tmp = in.read();
            block[index].write(tmp);
        }
    }
    
}

void CascadeMuxSend(const int ITER, axis_stream& top_outsel, axis_stream_128 mux_out[BLOCK_NUM], axis_stream_128& CascadeMuxOut) {
    const int TOTAL_SEND_TIMES = ITER*BLOCK_NUM*(BLOCK_NUM-1) + BLOCK_NUM;
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    for(int i = 0;i < TOTAL_SEND_TIMES;i ++) {
        const int id = top_outsel.read();
        hls::print("Cascade Send index: %d\n", id);
        for(int j = 0;j < BLOCK_ELEM_NUM;j ++) {
            ap_uint<128> tmp = mux_out[id].read();
            CascadeMuxOut.write(tmp);
        }
    }
}

void CascadeMuxReceive(const int ITER, axis_stream& top_insel, axis_stream_128 mux_in[BLOCK_NUM], axis_stream_128& CascadeMuxIn,
                       ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S) {
    const int SWEEP_TIMES = ITER*BLOCK_NUM*(BLOCK_NUM-1);
    const int BLOCK_ELEM_NUM = BLOCK_SIZE*ROW/ELEM_NUM;
    ap_uint<128> tmp;

    for(int i = 0;i < BLOCK_NUM;i ++) {
        int id = i/MUX_SIZE;
        for(int j = 0;j < BLOCK_ELEM_NUM;j ++) {
            ap_uint<128> tmp = dataIn[i*BLOCK_ELEM_NUM + j];
            mux_in[id].write(tmp); 
        }
    }

    for(int i = 0;i < SWEEP_TIMES;i ++) {
        const int id = top_insel.read();
        for(int j = 0;j < BLOCK_ELEM_NUM;j ++) {
            ap_uint<128> tmp = CascadeMuxIn.read();
            mux_in[id].write(tmp);
        }
    }
/* Maybe Error READTimes */
    for(int i = 0;i < BLOCK_NUM;i ++) {
        for(int j = 0;j < BLOCK_ELEM_NUM;j ++) {
            tmp = CascadeMuxIn.read();
            U[i*BLOCK_ELEM_NUM + j].write(tmp);
        }
        tmp = CascadeMuxIn.read();
        S[i] = tmp(32, 0);
    }
}




void CascadeMux(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S,
                const int ITER,
                axis_stream_128& CascadeMuxIn, axis_stream_128& CascadeMuxOut
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

#pragma HLS INTERFACE axis port = CascadeMuxIn
#pragma HLS INTERFACE axis port = CascadeMuxOut

    #pragma HLS dataflow

    axis_stream_128 block[BLOCK_NUM];
    axis_stream_128 mux_in[MUX_NUM], mux_out[MUX_NUM];
    axis_stream mux_insel[MUX_NUM], mux_outsel[MUX_NUM];
    axis_stream top_insel, top_outsel;

    generateOrder(mux_insel, mux_outsel,
                  top_insel, top_outsel);
    for(int i = 0;i < MUX_NUM;i ++) {
        #pragma HLS unroll
        mux8to1(ITER, block+i*MUX_SIZE, mux_out[i], mux_outsel[i]);
    }
    for(int i = 0;i < MUX_NUM;i ++) {
        #pragma HLS unroll
        mux1to8(ITER, block+i*MUX_SIZE, mux_in[i], mux_insel[i]);
    } 

    CascadeMuxSend(ITER, top_outsel, mux_out, CascadeMuxOut);
    CascadeMuxReceive(ITER, top_insel, mux_in, CascadeMuxIn, 
                     dataIn, U, S);

    

}
