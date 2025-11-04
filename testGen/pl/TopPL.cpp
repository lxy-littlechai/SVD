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

void receive4AIENorm(axis_stream_deep_128& block,
                  axis_pkt_stream& fromAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<DDR_WIDTH> data_temp[2] = {0, 0};
    for(int i = 0;i < SUB_BLOCK_SIZE;i ++) {
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
        ap_int<DDR_WIDTH> sigma = 0;
        sigma(31, 0) = tmp.data(63, 32);
        block.write(sigma);
    }
    
}

float receive4AIE(axis_stream_deep_128& block, 
                   axis_pkt_stream& fromAIEstrm) {
    #pragma HLS FUNCTION_INSTANTIATE variable=fromAIEstrm
    #pragma HLS inline off 
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2] = {0, 0};
    fp_uint conv, fp_uint_tmp;
    conv.data_float = 0;

    for(int i = 0;i < SUB_BLOCK_SIZE;i ++) {
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
        fp_uint_tmp.data_uint = tmp.data(63, 32);
        conv.data_float = fmax(conv.data_float, fp_uint_tmp.data_float);
        block.write(data_temp[(ROW/ELEM_NUM-1)%2]);
    }
    return conv.data_float;
}

void send2AIE(axis_stream_128& block, 
              axis_pkt_stream& toAIEstrm) {

    #pragma HLS inline off     
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<W> data_temp[2];

    for(int i = 0;i < SUB_BLOCK_SIZE;i ++) {
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
      tmp.keep = 0x00ff;//ff
      tmp.last = 1;
      toAIEstrm.write(tmp);

    }
    
}

void Cache2FIFO(axis_stream_128& cache_fifo_L, axis_stream_128& cache_fifo_R,
   axis_stream_128 send_fifo_L[parallel_num][IO_NUM], axis_stream_128 send_fifo_R[parallel_num][IO_NUM]) {

  const int SUB_BLOCK_DATA_SIZE = SUB_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  for(int i = 0;i < BLOCK_NUM;i ++) {
    
      if(0 <= i%(2*parallel_num) && i%(2*parallel_num) <= 1) {
        if(i&1) {
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = cache_fifo_R.read();
              send_fifo_R[0][j].write(tmp); 
            }
          }
        }
        else {
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = cache_fifo_L.read();
              send_fifo_L[0][j].write(tmp); 
            }
          }
        }
      }
    
    
  }
}

void FIFO2Cache(axis_stream_128& cache_fifo_L, axis_stream_128& cache_fifo_R,
   axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM], axis_stream_deep_128 receive_fifo_R[parallel_num][IO_NUM]) {

    const int SUB_BLOCK_DATA_SIZE = SUB_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
    for(int i = 0;i < BLOCK_NUM;i ++) {
      
        if(0 <= i%(2*parallel_num) && i%(2*parallel_num) <= 1) {
          if(i&1) {
            for(int j = 0;j < IO_NUM;j ++) {
              for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
                #pragma HLS PIPELINE II = 1
                ap_uint<128> tmp = receive_fifo_R[0][j].read();
                cache_fifo_R.write(tmp); 
              }
            }
          }
          else {
            for(int j = 0;j < IO_NUM;j ++) {
              for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
                #pragma HLS PIPELINE II = 1
                ap_uint<128> tmp = receive_fifo_L[0][j].read();
                cache_fifo_L.write(tmp); 
              }
            }
          }
        }
      
      
    }
}

void NormReceive(axis_stream_deep_128& receive_fifo, axis_pkt_stream& norm_rx0) {
  for(int i = 0;i < BLOCK_NUM;i ++) {
    for(int j = 0;j < IO_NUM;j ++) {
      receive4AIENorm(receive_fifo, norm_rx0); // receive subblock
    }
  }
}

void NormFIFO2Cache(axis_stream_128& cache_write_fifo, axis_stream_deep_128& receive_fifo) {
  for(int i = 0;i < BLOCK_NUM;i ++) {
    for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
      ap_uint<128> tmp = receive_fifo.read();
      cache_write_fifo.write(tmp);
    }
    ap_uint<W> sigma = receive_fifo.read();
    cache_write_fifo.write(sigma);
  }
}


void Send(axis_stream_sys& syscontrol, axis_stream_128 fifo_L[parallel_num][IO_NUM], axis_stream_128 fifo_R[parallel_num][IO_NUM], 

  
                    axis_pkt_stream& sweep_tx1_L_0, axis_pkt_stream& sweep_tx1_R_0, 
  

                    axis_pkt_stream& norm_tx0) {
  #pragma HLS bind_storage variable=fifo_L type=fifo impl=bram
  #pragma HLS bind_storage variable=fifo_R type=fifo impl=bram

    #pragma HLS INLINE off
    const int LEVEL1_SWEEP_PAIR_NUM = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
    const int LEVEL2_SWEEP_PAIR_NUM = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;
      for(int level1 = 0;level1 < LEVEL1_SWEEP_PAIR_NUM;level1 ++) {
        for(int i = 0;i < LEVEL2_SWEEP_PAIR_NUM;i ++) {
          #pragma HLS dataflow
        
        
          send2AIE(fifo_L[0][0], sweep_tx1_L_0);
          send2AIE(fifo_R[0][0], sweep_tx1_R_0);
        
        
        }
      }
    }

    for(int i = 0;i < BLOCK_PAIR_NUM/parallel_num;i ++) {
      for(int j = 0;j < parallel_num;j ++) {
        for(int k = 0;k < IO_NUM;k ++) {
          send2AIE(fifo_L[j][k], norm_tx0);
          send2AIE(fifo_R[j][k], norm_tx0);
        }
      }
    }

}



void Receive(axis_stream_sys& syscontrol, axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM],
                       axis_stream_deep_128 fifo_L[parallel_num][IO_NUM], axis_stream_deep_128 fifo_R[parallel_num][IO_NUM], 

  
                    axis_pkt_stream& sweep_rx1_L_0, axis_pkt_stream& sweep_rx1_R_0, 
  

                       axis_pkt_stream& norm_rx0) {
  #pragma HLS bind_storage variable=fifo_L type=fifo impl=uram
  #pragma HLS bind_storage variable=fifo_R type=fifo impl=uram

    #pragma HLS INLINE off
    
    const int LEVEL1_SWEEP_PAIR_NUM = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
    const int LEVEL2_SWEEP_PAIR_NUM = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;

      for(int level1 = 0;level1 < LEVEL1_SWEEP_PAIR_NUM;level1 ++) {
        for(int level2 = 0;level2 < LEVEL2_SWEEP_PAIR_NUM;level2 ++) {
        
          #pragma HLS dataflow

          
          float conv0L0 = receive4AIE(fifo_L[0][0], sweep_rx1_L_0);
          float conv0R0 = receive4AIE(fifo_R[0][0], sweep_rx1_R_0);
          hls::print("conv0L0: %f\n", conv0L0);
          hls::print("conv0R0: %f\n", conv0R0);


          
          convSet_L[0][0].write(conv0L0);
          convSet_R[0][0].write(conv0R0);
          

        }
      }
      
      
    }

    // //Norm Receive
    NormReceive(fifo_L[0][0], norm_rx0);
    

}


void RoundRobin(axis_stream_sys& syscontrol, axis_stream_128 cache_read_fifo_L, axis_stream_128 cache_read_fifo_R,
                axis_stream_128 cache_write_fifo_L, axis_stream_128 cache_write_fifo_R,
                axis_stream_128 send_fifo_L[parallel_num][IO_NUM], axis_stream_128 send_fifo_R[parallel_num][IO_NUM], 
                axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM], axis_stream_deep_128 receive_fifo_R[parallel_num][IO_NUM]) {
  
  //Sweep
  const int LEVEL1_SWEEP_PAIR_NUM = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
  const int LEVEL2_SWEEP_TIMES = (BLOCK_NUM-1);

  while(true) {
    ap_uint<1> sig = syscontrol.read();
    hls::print("sig: %d\n", sig);
    if(sig == END) break;
    for(int level1 = 0;level1 < LEVEL1_SWEEP_PAIR_NUM;level1 ++) {

      Cache2FIFO(cache_read_fifo_L, cache_read_fifo_R, send_fifo_L, send_fifo_R);

      for(int i = 0;i < LEVEL2_SWEEP_TIMES;i ++) {

      const int STAGE1_SIZE = SUB_BLOCK_SIZE*ROW/ELEM_NUM;
      

      for(int j = 0;j < STAGE1_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        for(int k = 0;k < IO_NUM;k ++) {
          #pragma HLS unroll
          ap_uint<W> tmp_R0 = receive_fifo_R[0][k].read();
          send_fifo_L[0][k].write(tmp_R0);
        }
      }

        for(int j = 0;j < STAGE1_SIZE;j ++) {
          #pragma HLS PIPELINE II = 1
          for(int k = 0;k < IO_NUM;k ++) {
            #pragma HLS unroll
            ap_uint<W> tmp_L0 = receive_fifo_L[0][k].read();
            send_fifo_L[0][k].write(tmp_L0);
          }
        }


      const int STAGE2_SIZE = (BLOCK_PAIR_NUM-2*parallel_num)/parallel_num*SUB_BLOCK_SIZE*ROW/ELEM_NUM;
      
      for(int j = 0;j < STAGE2_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        for(int k = 0;k < IO_NUM;k ++) {
          #pragma HLS unroll
          ap_uint<W> tmp_L0 = receive_fifo_L[0][k].read();
          send_fifo_L[0][k].write(tmp_L0);
          ap_uint<W> tmp_R0 = receive_fifo_R[0][k].read();
          send_fifo_R[0][k].write(tmp_R0);
        }
      }
      

      const int STAGE3_SIZE = SUB_BLOCK_SIZE*ROW/ELEM_NUM;
      

      for(int j = 0;j < STAGE3_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        for(int k = 0;k < IO_NUM;k ++) {
          #pragma HLS unroll
          ap_uint<W> tmp_L0 = receive_fifo_L[0][k].read();
          send_fifo_R[0][k].write(tmp_L0);
        }
      }

      

      for(int j = 0;j < STAGE3_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        for(int k = 0;k < IO_NUM;k ++) {
          #pragma HLS unroll
          ap_uint<W> tmp_R0 = receive_fifo_R[0][k].read();
          send_fifo_R[0][k].write(tmp_R0);
        }
      }

      
      }

      FIFO2Cache(cache_write_fifo_L, cache_write_fifo_R, receive_fifo_L, receive_fifo_R);
    }
  }
  Cache2FIFO(cache_read_fifo_L, cache_read_fifo_R, send_fifo_L, send_fifo_R);
  NormFIFO2Cache(cache_write_fifo_L, receive_fifo_L[0][0]);
    //FIFO2DDR(U, S, receive_fifo_L[0][0]);
    
}

void SystemControl(const int ITER, ap_uint<32>* ConvArray, axis_stream_sys syscontrol[4], 
  axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM]) {

  const int FUNCNUM = 5;
  for(int i = 0;i < FUNCNUM;i ++) {
    syscontrol[i].write(START);
  }

  int iter = 0;
  const int LEVEL1_SWEEP_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
  const int LEVEL2_SWEEP_STEP = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;
  while(true) {
    fp_uint  maxLevel1Conv, maxLevel2Conv;
    float block_conv[parallel_num*IO_NUM*2];
    maxLevel1Conv.data_float = 0;
    
    for(int w = 0;w < LEVEL1_SWEEP_STEP;w ++) {
      maxLevel2Conv.data_float = 0;
      for(int i = 0;i < LEVEL2_SWEEP_STEP;i ++) {
        for(int k = 0; k < parallel_num; ++k) {
          for(int l = 0;l < IO_NUM;l ++) {
            block_conv[k*IO_NUM*2+l*2]   = convSet_L[k][l].read();
            block_conv[k*IO_NUM*2+l*2+1] = convSet_R[k][l].read();
          }
        }
        for(int j = 0;j < parallel_num*IO_NUM*2;j ++) {
          maxLevel2Conv.data_float = fmax(maxLevel2Conv.data_float, block_conv[j]);
        }
      }
      maxLevel1Conv.data_float = fmax(maxLevel1Conv.data_float, maxLevel2Conv.data_float);
    }
    ConvArray[iter] = maxLevel1Conv.data_uint;
    hls::print("maxLevel1Conv: %f\n", maxLevel1Conv.data_float);
    iter ++;
    if(maxLevel1Conv.data_float < EPS || iter >= ITER) {
      for(int i = 0;i < FUNCNUM;i ++) {
        syscontrol[i].write(END);
      }
      break;
    }
    else {
      for(int i = 0;i < FUNCNUM;i ++) {
        syscontrol[i].write(START);
      }
    }
  }
}

void DDR2Cache(axis_stream_sys& syscontrol, ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, 
            axis_stream_128 ddr_read_fifo_L, axis_stream_128 ddr_read_fifo_R) {
  int ordering[LEVEL1_BLOCK_NUM-1][LEVEL1_BLOCK_PAIR_NUM][2];
  for(int i = 0;i < LEVEL1_BLOCK_PAIR_NUM-1;i ++) {
    ordering[0][i][0] = 2*i;
    ordering[0][i][1] = 2*i+1;
  }
  for(int i = 0;i < LEVEL1_BLOCK_NUM-2;i ++) {
    ordering[i+1][1][0] = ordering[i][0][0];
    ordering[i+1][0][0] = ordering[i][0][1];
    for(int j = 1;j < LEVEL1_BLOCK_PAIR_NUM-2;j ++) {
      ordering[i+1][j+1][0] = ordering[i][j][0];
      ordering[i+1][j-1][1] = ordering[i][j][1];
    }
    ordering[i+1][LEVEL1_BLOCK_PAIR_NUM-2][1] = ordering[i][LEVEL1_BLOCK_PAIR_NUM-1][0];
    ordering[i+1][LEVEL1_BLOCK_PAIR_NUM-1][1] = ordering[i][LEVEL1_BLOCK_PAIR_NUM-1][1];
  }

  // orthogonalize
  while(true) {
    ap_uint<1> sig = syscontrol.read();
    if(sig == END) break;
    for(int i = 0;i < LEVEL1_BLOCK_NUM-1;i ++) {
      //! sync sig 
      for(int j = 0;j < LEVEL1_BLOCK_PAIR_NUM;j ++) {
        int L_index = ordering[i][j][0];
        int R_index = ordering[i][j][1];
        for(int k = 0;k < LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM;k ++) {
          ap_uint<128> tmp_L = dataIn[L_index*LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM + k];
          ap_uint<128> tmp_R = dataIn[R_index*LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM + k];
          ddr_read_fifo_L.write(tmp_L);
          ddr_read_fifo_R.write(tmp_R);
        }
      }
    }
  }
  // normalize
  for(int i = 0;i < LEVEL1_BLOCK_NUM;i ++) {
    for(int k = 0;k < LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM;k ++) {
      ap_uint<128> tmp = dataIn[i*LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM + k];
      ddr_read_fifo_L.write(tmp);
    }
  }
}

void Cache2DDR(axis_stream_sys& syscontrol, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, 
            axis_stream_128 ddr_write_fifo_L, axis_stream_128 ddr_write_fifo_R) {
  int ordering[LEVEL1_BLOCK_NUM-1][LEVEL1_BLOCK_PAIR_NUM][2];
  for(int i = 0;i < LEVEL1_BLOCK_PAIR_NUM-1;i ++) {
    ordering[0][i][0] = 2*i;
    ordering[0][i][1] = 2*i+1;
  }
  for(int i = 0;i < LEVEL1_BLOCK_NUM-2;i ++) {
    ordering[i+1][1][0] = ordering[i][0][0];
    ordering[i+1][0][0] = ordering[i][0][1];
    for(int j = 1;j < LEVEL1_BLOCK_PAIR_NUM-2;j ++) {
      ordering[i+1][j+1][0] = ordering[i][j][0];
      ordering[i+1][j-1][1] = ordering[i][j][1];
    }
    ordering[i+1][LEVEL1_BLOCK_PAIR_NUM-2][1] = ordering[i][LEVEL1_BLOCK_PAIR_NUM-1][0];
    ordering[i+1][LEVEL1_BLOCK_PAIR_NUM-1][1] = ordering[i][LEVEL1_BLOCK_PAIR_NUM-1][1];
  }

  // orthogonalize
  while(true) {
    ap_uint<1> sig = syscontrol.read();
    if(sig == END) break;

    //DDR write
    for(int i = 0;i < LEVEL1_BLOCK_NUM-1;i ++) {
      for(int j = 0;j < LEVEL1_BLOCK_PAIR_NUM;j ++) {
        int L_index = ordering[i][j][0];
        int R_index = ordering[i][j][1];
        for(int k = 0;k < LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM;k ++) {
          ap_uint<128> tmp_L = ddr_write_fifo_L.read();
          ap_uint<128> tmp_R = ddr_write_fifo_R.read();
          dataIn[L_index*LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM + k] = tmp_L;
          dataIn[R_index*LEVEL1_BLOCK_SIZE*ROW/ELEM_NUM + k] = tmp_R;
        }
      }
    }
  }

  // normalize
  for(int i = 0;i < LEVEL1_BLOCK_NUM;i ++) {
    for(int k = 0;k < ROW/ELEM_NUM;k ++) {
      ap_uint<128> tmp = ddr_write_fifo_L.read();
      U[i*ROW/ELEM_NUM + k] = tmp;
    }
    ap_uint<128> sigma = ddr_write_fifo_L.read();
    S[i] = sigma(31, 0);
  }
}


void TopPL(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, ap_uint<32>* ConvArray,
                const int ITER, 
                
                
                axis_pkt_stream& sweep_tx1_L_0, axis_pkt_stream& sweep_tx1_R_0,
                axis_pkt_stream& sweep_rx1_L_0, axis_pkt_stream& sweep_rx1_R_0,
                
                
                axis_pkt_stream& norm_tx0, axis_pkt_stream& norm_rx0
                ) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = dataIn depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem1 port = U depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem2 port = S depth = 8192
    #pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem3 port = ConvArray depth = 8192
#pragma HLS INTERFACE s_axilite port = dataIn bundle = control
#pragma HLS INTERFACE s_axilite port = U bundle = control
#pragma HLS INTERFACE s_axilite port = S bundle = control
#pragma HLS INTERFACE s_axilite port = ITER bundle = control
#pragma HLS INTERFACE s_axilite port = ConvArray bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control



#pragma HLS INTERFACE axis port = sweep_tx1_L_0
#pragma HLS INTERFACE axis port = sweep_tx1_R_0
#pragma HLS INTERFACE axis port = sweep_rx1_L_0
#pragma HLS INTERFACE axis port = sweep_rx1_R_0


#pragma HLS INTERFACE axis port = norm_tx0
#pragma HLS INTERFACE axis port = norm_rx0

    #pragma HLS dataflow
    
    axis_stream_128 ddr_read_fifo_L, ddr_read_fifo_R, ddr_write_fifo_L, ddr_write_fifo_R;
    axis_stream_float convSet_L[parallel_num][IO_NUM], convSet_R[parallel_num][IO_NUM];
    axis_stream_sys syscontrol[5];
    axis_stream_128 send_fifo_L[parallel_num][IO_NUM], send_fifo_R[parallel_num][IO_NUM]; // the first param is parrallel AIE graph
    axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM], receive_fifo_R[parallel_num][IO_NUM]; 

    DDR2Cache(syscontrol[0], dataIn, ddr_read_fifo_L, ddr_read_fifo_R);
    Cache2DDR(syscontrol[1], U, S, ddr_write_fifo_L, ddr_write_fifo_R);
    SystemControl(ITER, ConvArray, syscontrol, convSet_L, convSet_R);
    Send(syscontrol[2],
                   send_fifo_L, send_fifo_R,  
                   sweep_tx1_L_0, sweep_tx1_R_0,
                   norm_tx0);
    RoundRobin(syscontrol[3],
                ddr_read_fifo_L, ddr_read_fifo_R, ddr_write_fifo_L, ddr_write_fifo_R,
               send_fifo_L, send_fifo_R, receive_fifo_L, receive_fifo_R);
    Receive(syscontrol[4], convSet_L, convSet_R,
                     receive_fifo_L, receive_fifo_R, 
                     sweep_rx1_L_0, sweep_rx1_R_0,
                     norm_rx0);
}