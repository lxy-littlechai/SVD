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

template<typename T>
void receive4DDR(T& block,
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

        for(int j = 1;j < AIEROW/ELEM_NUM;j ++) {
        #pragma HLS PIPELINE II = 1
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }

        tmp = fromAIEstrm.read();
        data_temp[(AIEROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        block.write(data_temp[(AIEROW/ELEM_NUM-1)%2]);
        ap_int<DDR_WIDTH> sigma = 0;
        sigma(31, 0) = tmp.data(63, 32);
        block.write(sigma);
    }
    
}

template<typename T>
float receive4AIE(T& block, 
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

        for(int j = 1;j < AIEROW/ELEM_NUM;j ++) {
        #pragma HLS PIPELINE II = 1
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }
        tmp = fromAIEstrm.read();
        data_temp[(AIEROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        fp_uint_tmp.data_uint = tmp.data(63, 32);
        conv.data_float = fmax(conv.data_float, fp_uint_tmp.data_float);
        block.write(data_temp[(AIEROW/ELEM_NUM-1)%2]);
    }
    return conv.data_float;
}

template<typename T>
void send2AIE(T& block, 
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
      for(int j = 1;j < AIEROW/ELEM_NUM;j ++) {
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
      

      tmp.data(31, 0) = data_temp[(AIEROW/ELEM_NUM-1)%2](127, 96);
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x00ff;//ff
      tmp.last = 1;
      toAIEstrm.write(tmp);

    }
    
}

void OrthDDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, int level1_block_L_index, int level1_block_R_index, 
  axis_stream_128 send_fifo_L[parallel_num][IO_NUM][CascadeLevel], axis_stream_128 send_fifo_R[parallel_num][IO_NUM][CascadeLevel]) {
  #pragma HLS INLINE off  

  const int AIE_DATA_SIZE = AIEROW/DDR_ELEM_NUM;
  const int ROW_DATA_SIZE = ROW/DDR_ELEM_NUM;
  const int block_L_offset = level1_block_L_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_R_offset = level1_block_R_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;

  for(int i_base = 0;i_base < LEVEL1_BLOCK_SIZE/IO_NUM/SUB_BLOCK_SIZE;i_base += parallel_num) {
    
    for(int p = 0;p < parallel_num;p ++) {
      int i = i_base + p;
      for(int j = 0;j < IO_NUM;j ++) {
        for(int subblock = 0; subblock < SUB_BLOCK_SIZE; subblock ++) {
          for(int c = 0;c < CascadeLevel;c ++) {
            for(int k = 0;k < AIE_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = dataIn[block_R_offset + i*IO_NUM*SUB_BLOCK_SIZE*ROW_DATA_SIZE + j*SUB_BLOCK_SIZE*ROW_DATA_SIZE + subblock*ROW_DATA_SIZE + c*AIE_DATA_SIZE + k];
              send_fifo_R[p][j][c].write(tmp);
            }
          }
        }
      }
      for(int j = 0;j < IO_NUM;j ++) {
        for(int subblock = 0; subblock < SUB_BLOCK_SIZE; subblock ++) {
          for(int c = 0;c < CascadeLevel;c ++) {
            for(int k = 0;k < AIE_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = dataIn[block_L_offset + i*IO_NUM*SUB_BLOCK_SIZE*ROW_DATA_SIZE + j*SUB_BLOCK_SIZE*ROW_DATA_SIZE + subblock*ROW_DATA_SIZE + c*AIE_DATA_SIZE + k];
              send_fifo_L[p][j][c].write(tmp);
            }
          }
        }
      }
    }
  }
}

template<typename T>
void OrthFIFO2DDR(ap_uint<DDR_WIDTH>* dataIn, int level1_block_L_index, int level1_block_R_index, 
  T receive_fifo_L[parallel_num][IO_NUM][CascadeLevel], T receive_fifo_R[parallel_num][IO_NUM][CascadeLevel]) {
  #pragma HLS INLINE off  

  const int AIE_DATA_SIZE = AIEROW/DDR_ELEM_NUM;
  const int ROW_DATA_SIZE = ROW/DDR_ELEM_NUM;
  const int block_L_offset = level1_block_L_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_R_offset = level1_block_R_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  int cur_block_offset = 0;
  const int ordering_L[LEVEL1_BLOCK_SIZE/BLOCK_SIZE] = {
     2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 126, 128, 130, 132, 134, 136, 138, 140, 142, 144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164, 166, 168, 170, 172, 174, 176, 178, 180, 182, 184, 186, 188, 190, 192, 194, 196, 198, 200, 202, 204, 206, 208, 210, 212, 214, 216, 218, 220, 222, 224, 226, 228, 230, 232, 234, 236, 238, 240, 242, 244, 246, 248, 250, 252, 254, 253,
  };
  const int ordering_R[LEVEL1_BLOCK_SIZE/BLOCK_SIZE] = {
     0, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127, 129, 131, 133, 135, 137, 139, 141, 143, 145, 147, 149, 151, 153, 155, 157, 159, 161, 163, 165, 167, 169, 171, 173, 175, 177, 179, 181, 183, 185, 187, 189, 191, 193, 195, 197, 199, 201, 203, 205, 207, 209, 211, 213, 215, 217, 219, 221, 223, 225, 227, 229, 231, 233, 235, 237, 239, 241, 243, 245, 247, 249, 251, 255,
  };

  for(int i = 0;i < LEVEL1_BLOCK_SIZE/IO_NUM/SUB_BLOCK_SIZE;i += parallel_num) { // num of sub-blocks with BLOCK_SIZE
    for(int p = 0;p < parallel_num;p ++) {
      int i_base = i + p;
      int L_order = ordering_L[i_base];
      int R_order = ordering_R[i_base];
      int L_idx = L_order/2;
      int R_idx = R_order/2;
      cur_block_offset = (R_order&1) ? block_R_offset : block_L_offset;
      for(int j = 0;j < IO_NUM;j ++) {
        for(int subblock = 0; subblock < SUB_BLOCK_SIZE; subblock ++) {
          for(int c = 0;c < CascadeLevel;c ++) {
            for(int k = 0;k < AIE_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = receive_fifo_R[p][j][c].read();
              dataIn[cur_block_offset + R_idx*IO_NUM*SUB_BLOCK_SIZE*ROW_DATA_SIZE + j*SUB_BLOCK_SIZE*ROW_DATA_SIZE + subblock*ROW_DATA_SIZE + c*AIE_DATA_SIZE + k] = tmp;
            }
          }
        }
      }
      cur_block_offset = (L_order&1) ? block_R_offset : block_L_offset;
      for(int j = 0;j < IO_NUM;j ++) {
        for(int subblock = 0; subblock < SUB_BLOCK_SIZE; subblock ++) {
          for(int c = 0;c < CascadeLevel;c ++) {
            for(int k = 0;k < AIE_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = receive_fifo_L[p][j][c].read();
              dataIn[cur_block_offset + L_idx*IO_NUM*SUB_BLOCK_SIZE*ROW_DATA_SIZE + j*SUB_BLOCK_SIZE*ROW_DATA_SIZE + subblock*ROW_DATA_SIZE + c*AIE_DATA_SIZE + k] = tmp;
            }
          }
        }
      }
    } 
  }
}

void Send(axis_stream_sig& syscontrol,
                    axis_stream_128 fifo_L[parallel_num][IO_NUM][CascadeLevel], axis_stream_128 fifo_R[parallel_num][IO_NUM][CascadeLevel]

  
  
                    ,axis_pkt_stream& sweep_tx1_L_io0_cas0, axis_pkt_stream& sweep_tx1_R_io0_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx1_L_io1_cas0, axis_pkt_stream& sweep_tx1_R_io1_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx1_L_io2_cas0, axis_pkt_stream& sweep_tx1_R_io2_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx1_L_io3_cas0, axis_pkt_stream& sweep_tx1_R_io3_cas0
  
  

  
  
                    ,axis_pkt_stream& sweep_tx2_L_io0_cas0, axis_pkt_stream& sweep_tx2_R_io0_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx2_L_io1_cas0, axis_pkt_stream& sweep_tx2_R_io1_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx2_L_io2_cas0, axis_pkt_stream& sweep_tx2_R_io2_cas0
  
  
  
                    ,axis_pkt_stream& sweep_tx2_L_io3_cas0, axis_pkt_stream& sweep_tx2_R_io3_cas0
  
  

) {
  #pragma HLS bind_storage variable=fifo_L type=fifo impl=bram
  #pragma HLS bind_storage variable=fifo_R type=fifo impl=bram

    #pragma HLS INLINE off

    const int LEVEL1_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
    const int LEVEL2_STEP = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;
    const int SWEEP_STEP = LEVEL1_STEP*LEVEL2_STEP;

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;
      for(int i = 0;i < SWEEP_STEP;i ++) {
        #pragma HLS dataflow

  
    
        send2AIE(fifo_L[0][0][0], sweep_tx1_L_io0_cas0);
        send2AIE(fifo_R[0][0][0], sweep_tx1_R_io0_cas0);
    
  
    
        send2AIE(fifo_L[0][1][0], sweep_tx1_L_io1_cas0);
        send2AIE(fifo_R[0][1][0], sweep_tx1_R_io1_cas0);
    
  
    
        send2AIE(fifo_L[0][2][0], sweep_tx1_L_io2_cas0);
        send2AIE(fifo_R[0][2][0], sweep_tx1_R_io2_cas0);
    
  
    
        send2AIE(fifo_L[0][3][0], sweep_tx1_L_io3_cas0);
        send2AIE(fifo_R[0][3][0], sweep_tx1_R_io3_cas0);
    
  

  
    
        send2AIE(fifo_L[1][0][0], sweep_tx2_L_io0_cas0);
        send2AIE(fifo_R[1][0][0], sweep_tx2_R_io0_cas0);
    
  
    
        send2AIE(fifo_L[1][1][0], sweep_tx2_L_io1_cas0);
        send2AIE(fifo_R[1][1][0], sweep_tx2_R_io1_cas0);
    
  
    
        send2AIE(fifo_L[1][2][0], sweep_tx2_L_io2_cas0);
        send2AIE(fifo_R[1][2][0], sweep_tx2_R_io2_cas0);
    
  
    
        send2AIE(fifo_L[1][3][0], sweep_tx2_L_io3_cas0);
        send2AIE(fifo_R[1][3][0], sweep_tx2_R_io3_cas0);
    
  

      }
    }

}



void Receive(axis_stream_sig& syscontrol, axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM],
                       axis_stream_deep_128 fifo_L[parallel_num][IO_NUM][CascadeLevel], axis_stream_deep_128 fifo_R[parallel_num][IO_NUM][CascadeLevel]

  
  
                    ,axis_pkt_stream& sweep_rx1_L_io0_cas0, axis_pkt_stream& sweep_rx1_R_io0_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx1_L_io1_cas0, axis_pkt_stream& sweep_rx1_R_io1_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx1_L_io2_cas0, axis_pkt_stream& sweep_rx1_R_io2_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx1_L_io3_cas0, axis_pkt_stream& sweep_rx1_R_io3_cas0
  
  

  
  
                    ,axis_pkt_stream& sweep_rx2_L_io0_cas0, axis_pkt_stream& sweep_rx2_R_io0_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx2_L_io1_cas0, axis_pkt_stream& sweep_rx2_R_io1_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx2_L_io2_cas0, axis_pkt_stream& sweep_rx2_R_io2_cas0
  
  
  
                    ,axis_pkt_stream& sweep_rx2_L_io3_cas0, axis_pkt_stream& sweep_rx2_R_io3_cas0
  
  

) {
  #pragma HLS bind_storage variable=fifo_L type=fifo impl=uram
  #pragma HLS bind_storage variable=fifo_R type=fifo impl=uram

    #pragma HLS INLINE off
    
    const int LEVEL1_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
    const int LEVEL2_STEP = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;
    const int SWEEP_STEP = LEVEL1_STEP*LEVEL2_STEP;

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;

      for(int i = 0;i < SWEEP_STEP;i ++) {
        hls::print("Receive i: %d\n", i);
        #pragma HLS dataflow


  
        float conv0L00 = receive4AIE(fifo_L[0][0][0], sweep_rx1_L_io0_cas0);
  
        convSet_L[0][0].write(conv0L00);
  
        float conv0R00 = receive4AIE(fifo_R[0][0][0], sweep_rx1_R_io0_cas0);
  
        convSet_R[0][0].write(conv0R00);
        hls::print("conv0L00: %f\n", conv0L00);
        hls::print("conv0R00: %f\n", conv0R00);

  
        float conv0L10 = receive4AIE(fifo_L[0][1][0], sweep_rx1_L_io1_cas0);
  
        convSet_L[0][1].write(conv0L10);
  
        float conv0R10 = receive4AIE(fifo_R[0][1][0], sweep_rx1_R_io1_cas0);
  
        convSet_R[0][1].write(conv0R10);
        hls::print("conv0L10: %f\n", conv0L10);
        hls::print("conv0R10: %f\n", conv0R10);

  
        float conv0L20 = receive4AIE(fifo_L[0][2][0], sweep_rx1_L_io2_cas0);
  
        convSet_L[0][2].write(conv0L20);
  
        float conv0R20 = receive4AIE(fifo_R[0][2][0], sweep_rx1_R_io2_cas0);
  
        convSet_R[0][2].write(conv0R20);
        hls::print("conv0L20: %f\n", conv0L20);
        hls::print("conv0R20: %f\n", conv0R20);

  
        float conv0L30 = receive4AIE(fifo_L[0][3][0], sweep_rx1_L_io3_cas0);
  
        convSet_L[0][3].write(conv0L30);
  
        float conv0R30 = receive4AIE(fifo_R[0][3][0], sweep_rx1_R_io3_cas0);
  
        convSet_R[0][3].write(conv0R30);
        hls::print("conv0L30: %f\n", conv0L30);
        hls::print("conv0R30: %f\n", conv0R30);



  
        float conv1L00 = receive4AIE(fifo_L[1][0][0], sweep_rx2_L_io0_cas0);
  
        convSet_L[1][0].write(conv1L00);
  
        float conv1R00 = receive4AIE(fifo_R[1][0][0], sweep_rx2_R_io0_cas0);
  
        convSet_R[1][0].write(conv1R00);
        hls::print("conv1L00: %f\n", conv1L00);
        hls::print("conv1R00: %f\n", conv1R00);

  
        float conv1L10 = receive4AIE(fifo_L[1][1][0], sweep_rx2_L_io1_cas0);
  
        convSet_L[1][1].write(conv1L10);
  
        float conv1R10 = receive4AIE(fifo_R[1][1][0], sweep_rx2_R_io1_cas0);
  
        convSet_R[1][1].write(conv1R10);
        hls::print("conv1L10: %f\n", conv1L10);
        hls::print("conv1R10: %f\n", conv1R10);

  
        float conv1L20 = receive4AIE(fifo_L[1][2][0], sweep_rx2_L_io2_cas0);
  
        convSet_L[1][2].write(conv1L20);
  
        float conv1R20 = receive4AIE(fifo_R[1][2][0], sweep_rx2_R_io2_cas0);
  
        convSet_R[1][2].write(conv1R20);
        hls::print("conv1L20: %f\n", conv1L20);
        hls::print("conv1R20: %f\n", conv1R20);

  
        float conv1L30 = receive4AIE(fifo_L[1][3][0], sweep_rx2_L_io3_cas0);
  
        convSet_L[1][3].write(conv1L30);
  
        float conv1R30 = receive4AIE(fifo_R[1][3][0], sweep_rx2_R_io3_cas0);
  
        convSet_R[1][3].write(conv1R30);
        hls::print("conv1L30: %f\n", conv1L30);
        hls::print("conv1R30: %f\n", conv1R30);


      }
      
      
    }  

}

template<typename TS, typename TE>
void FIFOExchange(TS src_fifo_L[parallel_num][IO_NUM][CascadeLevel], TS src_fifo_R[parallel_num][IO_NUM][CascadeLevel], TE dst_fifo_L[parallel_num][IO_NUM][CascadeLevel], TE dst_fifo_R[parallel_num][IO_NUM][CascadeLevel]) {
  #pragma HLS INLINE off

  const int STAGE1_SIZE = SUB_BLOCK_SIZE*AIEROW/ELEM_NUM;
  const int STAGE2_SIZE = (BLOCK_PAIR_NUM-2*parallel_num)/parallel_num*SUB_BLOCK_SIZE*AIEROW/ELEM_NUM;
  const int STAGE3_SIZE = SUB_BLOCK_SIZE*AIEROW/ELEM_NUM;
  
  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      ap_uint<W> tmp_R0 = src_fifo_R[0][k][0].read();
      dst_fifo_L[0][k][0].write(tmp_R0);
      
    }
  }

  
  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      
      ap_uint<W> tmp_L00 = src_fifo_L[0][k][0].read();
      dst_fifo_L[1][k][0].write(tmp_L00);
      
      
      
      ap_uint<W> tmp_L10 = src_fifo_L[1][k][0].read();
      dst_fifo_L[0][k][0].write(tmp_L10);
      
      
    }
  }
  


  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      
      ap_uint<W> tmp_R10 = src_fifo_R[1][k][0].read();
      dst_fifo_R[0][k][0].write(tmp_R10);
      
      
    }
  }


  
  

  for(int j = 0;j < STAGE2_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      
      ap_uint<W> tmp_L00 = src_fifo_L[0][k][0].read();
      dst_fifo_L[1][k][0].write(tmp_L00);
      ap_uint<W> tmp_R00 = src_fifo_R[0][k][0].read();
      dst_fifo_R[1][k][0].write(tmp_R00);
      
      
      
      ap_uint<W> tmp_L10 = src_fifo_L[1][k][0].read();
      dst_fifo_L[0][k][0].write(tmp_L10);
      ap_uint<W> tmp_R10 = src_fifo_R[1][k][0].read();
      dst_fifo_R[0][k][0].write(tmp_R10);
      
      
    }
  }



  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      
      ap_uint<W> tmp_L00 = src_fifo_L[0][k][0].read();
      dst_fifo_L[1][k][0].write(tmp_L00);
      
      
    }
  }


  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      ap_uint<W> tmp_L10 = src_fifo_L[1][k][0].read();
      dst_fifo_R[0][k][0].write(tmp_L10);
      
    }
  }

 
    for(int j = 0;j < STAGE3_SIZE;j ++) {
      #pragma HLS PIPELINE II = 1
      for(int k = 0;k < IO_NUM;k ++) {
        #pragma HLS unroll
        
        
        ap_uint<W> tmp_R00 = src_fifo_R[0][k][0].read();
        dst_fifo_R[1][k][0].write(tmp_R00);
        
        
      }
    }


  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      
      ap_uint<W> tmp_R10 = src_fifo_R[1][k][0].read();
      dst_fifo_R[1][k][0].write(tmp_R10);
      
    }
  }
}


void RoundRobin(axis_stream_sig& syscontrol,
                ap_uint<DDR_WIDTH>* dataIn, 
                axis_stream_128 send_fifo_L[parallel_num][IO_NUM][CascadeLevel], axis_stream_128 send_fifo_R[parallel_num][IO_NUM][CascadeLevel], 
                axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM][CascadeLevel], axis_stream_deep_128 receive_fifo_R[parallel_num][IO_NUM][CascadeLevel]) {
  

  axis_stream_128 tmp_fifo_L[parallel_num][IO_NUM][CascadeLevel], tmp_fifo_R[parallel_num][IO_NUM][CascadeLevel];

  //Sweep
  const int LEVEL1_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
  const int LEVEL2_STEP = (BLOCK_NUM-1) - 1;

  const int ordering_L[LEVEL1_STEP] = {
     0,
  };
  const int ordering_R[LEVEL1_STEP] = {
     1,
  };

  while(true) {
    ap_uint<1> sig = syscontrol.read();
    hls::print("sig: %d\n", sig);
    if(sig == END) break;
    
    for(int level1 = 0; level1 < LEVEL1_STEP;level1 ++) {
      const int level1_block_L_index = ordering_L[level1];
      const int level1_block_R_index = ordering_R[level1];
      hls::print("level1_block_L_index: %d\n", level1_block_L_index);
      hls::print("level1_block_R_index: %d\n", level1_block_R_index);
      OrthDDR2FIFO(dataIn, level1_block_L_index, level1_block_R_index, send_fifo_L, send_fifo_R);

      for(int i = 0;i < LEVEL2_STEP;i ++) {
        hls::print("stage1 start: %d\n", i);

        FIFOExchange(receive_fifo_L, receive_fifo_R, send_fifo_L, send_fifo_R);

        hls::print("stage1 end: %d\n", i);
      }

      OrthFIFO2DDR(dataIn, level1_block_L_index, level1_block_R_index, receive_fifo_L, receive_fifo_R);
    }
  }
}


void SystemControl(const int ITER, ap_uint<32>* ConvArray, axis_stream_sig syscontrol[3], 
  axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM]) {

  const int FUNCNUM = 3;
  for(int i = 0;i < FUNCNUM;i ++) {
    syscontrol[i].write(START);
  }

  int iter = 0;
  const int LEVEL1_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
  const int SWEEP_STEP = BLOCK_PAIR_NUM*(BLOCK_NUM-1) / parallel_num;
  fp_uint maxLevel1Conv, maxLevel2Conv;
  float block_conv[parallel_num*IO_NUM*2];
  

  while(true) {
    maxLevel1Conv.data_float = 0;
    for(int level1 = 0; level1 < LEVEL1_STEP;level1 ++) {
      maxLevel2Conv.data_float = 0;
      for(int i = 0;i < SWEEP_STEP;i ++) {

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
    hls::print("maxConv: %f\n", maxLevel1Conv.data_float);
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

void Orthogonalize(ap_uint<DDR_WIDTH>* dataIn,  ap_uint<32>* ConvArray,
                const int ITER
                

  
  
                ,axis_pkt_stream& sweep_tx1_L_io0_cas0, axis_pkt_stream& sweep_tx1_R_io0_cas0,
                axis_pkt_stream& sweep_rx1_L_io0_cas0, axis_pkt_stream& sweep_rx1_R_io0_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx1_L_io1_cas0, axis_pkt_stream& sweep_tx1_R_io1_cas0,
                axis_pkt_stream& sweep_rx1_L_io1_cas0, axis_pkt_stream& sweep_rx1_R_io1_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx1_L_io2_cas0, axis_pkt_stream& sweep_tx1_R_io2_cas0,
                axis_pkt_stream& sweep_rx1_L_io2_cas0, axis_pkt_stream& sweep_rx1_R_io2_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx1_L_io3_cas0, axis_pkt_stream& sweep_tx1_R_io3_cas0,
                axis_pkt_stream& sweep_rx1_L_io3_cas0, axis_pkt_stream& sweep_rx1_R_io3_cas0
  
  

  
  
                ,axis_pkt_stream& sweep_tx2_L_io0_cas0, axis_pkt_stream& sweep_tx2_R_io0_cas0,
                axis_pkt_stream& sweep_rx2_L_io0_cas0, axis_pkt_stream& sweep_rx2_R_io0_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx2_L_io1_cas0, axis_pkt_stream& sweep_tx2_R_io1_cas0,
                axis_pkt_stream& sweep_rx2_L_io1_cas0, axis_pkt_stream& sweep_rx2_R_io1_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx2_L_io2_cas0, axis_pkt_stream& sweep_tx2_R_io2_cas0,
                axis_pkt_stream& sweep_rx2_L_io2_cas0, axis_pkt_stream& sweep_rx2_R_io2_cas0
  
  
  
                ,axis_pkt_stream& sweep_tx2_L_io3_cas0, axis_pkt_stream& sweep_tx2_R_io3_cas0,
                axis_pkt_stream& sweep_rx2_L_io3_cas0, axis_pkt_stream& sweep_rx2_R_io3_cas0
  
  

                ) {

  axis_stream_float convSet_L[parallel_num][IO_NUM], convSet_R[parallel_num][IO_NUM];
  axis_stream_sig syscontrol[3];
  axis_stream_128 send_fifo_L[parallel_num][IO_NUM][CascadeLevel], send_fifo_R[parallel_num][IO_NUM][CascadeLevel]; // the first param is parrallel AIE graph
  axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM][CascadeLevel], receive_fifo_R[parallel_num][IO_NUM][CascadeLevel];
  
  #pragma HLS dataflow
  SystemControl(ITER, ConvArray, syscontrol, convSet_L, convSet_R);
  Send(syscontrol[0], 
                 send_fifo_L, send_fifo_R

  
  
                   ,sweep_tx1_L_io0_cas0, sweep_tx1_R_io0_cas0
   
  
  
                   ,sweep_tx1_L_io1_cas0, sweep_tx1_R_io1_cas0
   
  
  
                   ,sweep_tx1_L_io2_cas0, sweep_tx1_R_io2_cas0
   
  
  
                   ,sweep_tx1_L_io3_cas0, sweep_tx1_R_io3_cas0
   
  

  
  
                   ,sweep_tx2_L_io0_cas0, sweep_tx2_R_io0_cas0
   
  
  
                   ,sweep_tx2_L_io1_cas0, sweep_tx2_R_io1_cas0
   
  
  
                   ,sweep_tx2_L_io2_cas0, sweep_tx2_R_io2_cas0
   
  
  
                   ,sweep_tx2_L_io3_cas0, sweep_tx2_R_io3_cas0
   
  
);
  RoundRobin(syscontrol[1],
                dataIn, 
               send_fifo_L, send_fifo_R, receive_fifo_L, receive_fifo_R);
  Receive(syscontrol[2], convSet_L, convSet_R,
                     receive_fifo_L, receive_fifo_R

  
  
                     ,sweep_rx1_L_io0_cas0, sweep_rx1_R_io0_cas0
           
  
  
                     ,sweep_rx1_L_io1_cas0, sweep_rx1_R_io1_cas0
           
  
  
                     ,sweep_rx1_L_io2_cas0, sweep_rx1_R_io2_cas0
           
  
  
                     ,sweep_rx1_L_io3_cas0, sweep_rx1_R_io3_cas0
           
  

  
  
                     ,sweep_rx2_L_io0_cas0, sweep_rx2_R_io0_cas0
           
  
  
                     ,sweep_rx2_L_io1_cas0, sweep_rx2_R_io1_cas0
           
  
  
                     ,sweep_rx2_L_io2_cas0, sweep_rx2_R_io2_cas0
           
  
  
                     ,sweep_rx2_L_io3_cas0, sweep_rx2_R_io3_cas0
           
  
);
}

template<typename T>
void NormDDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, T tmp_fifo[CascadeLevel]) {
  const int AIE_DATA_SIZE = AIEROW/DDR_ELEM_NUM;
  const int ROW_DATA_SIZE = ROW/DDR_ELEM_NUM;
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    for(int j = 0;j < SUB_BLOCK_SIZE;j ++) {
      for(int c = 0;c < CascadeLevel;c ++) {
        for(int k = 0;k < AIE_DATA_SIZE;k ++) {
          #pragma HLS PIPELINE II = 1
          tmp_fifo[c].write(dataIn[i*SUB_BLOCK_SIZE*ROW_DATA_SIZE + j*ROW_DATA_SIZE + c*AIE_DATA_SIZE + k]);
        }
      }
    }
  }
}

template<typename T>
void NormSend(T& norm_send_fifo 
  
    ,axis_pkt_stream& norm_tx0_cas0
    ) {
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    #pragma HLS dataflow
    
    send2AIE(norm_send_fifo[0], norm_tx0_cas0);
    
  }
}

template<typename T>
void NormReceive(T& norm_receive_fifo 
  
  ,axis_pkt_stream& norm_rx0_cas0
  
  ) {
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    #pragma HLS dataflow
    
    receive4DDR(norm_receive_fifo[0], norm_rx0_cas0);
    
  }
}

template<typename T>
void NormFIFO2DDR(ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, T norm_receive_fifo[CascadeLevel]) {
  ap_uint<W> sigma;
  ap_uint<W> data_temp;
  const int AIE_DATA_SIZE = AIEROW/DDR_ELEM_NUM;
  const int ROW_DATA_SIZE = ROW/DDR_ELEM_NUM;

  for(int i = 0;i < COL;i ++) {
    for(int c = 0;c < CascadeLevel;c ++) {
      for(int j = 0;j < AIE_DATA_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        U[i*ROW_DATA_SIZE + c*AIE_DATA_SIZE + j] = norm_receive_fifo[c].read();
      }
      sigma = norm_receive_fifo[c].read();
      S[i] = sigma(31, 0);
    }
    
  }
}

void Normalize(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S
  
  ,axis_pkt_stream& norm_tx0_cas0, axis_pkt_stream& norm_rx0_cas0
  
  ) {
  #pragma HLS dataflow

  axis_stream_128 norm_send_fifo[CascadeLevel], norm_receive_fifo[CascadeLevel];

  NormDDR2FIFO(dataIn, norm_send_fifo);
  NormSend(norm_send_fifo
    
    ,norm_tx0_cas0
    
    );
  NormReceive(norm_receive_fifo
    
    ,norm_rx0_cas0
    
    );
  NormFIFO2DDR(U, S, norm_receive_fifo);
  
}

void TopPL(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, ap_uint<32>* ConvArray,
                const int ITER
                
                
                
                ,axis_pkt_stream& sweep_tx1_L_io0_cas0, axis_pkt_stream& sweep_tx1_R_io0_cas0,
                axis_pkt_stream& sweep_rx1_L_io0_cas0, axis_pkt_stream& sweep_rx1_R_io0_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx1_L_io1_cas0, axis_pkt_stream& sweep_tx1_R_io1_cas0,
                axis_pkt_stream& sweep_rx1_L_io1_cas0, axis_pkt_stream& sweep_rx1_R_io1_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx1_L_io2_cas0, axis_pkt_stream& sweep_tx1_R_io2_cas0,
                axis_pkt_stream& sweep_rx1_L_io2_cas0, axis_pkt_stream& sweep_rx1_R_io2_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx1_L_io3_cas0, axis_pkt_stream& sweep_tx1_R_io3_cas0,
                axis_pkt_stream& sweep_rx1_L_io3_cas0, axis_pkt_stream& sweep_rx1_R_io3_cas0
                
                
                
                
                
                ,axis_pkt_stream& sweep_tx2_L_io0_cas0, axis_pkt_stream& sweep_tx2_R_io0_cas0,
                axis_pkt_stream& sweep_rx2_L_io0_cas0, axis_pkt_stream& sweep_rx2_R_io0_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx2_L_io1_cas0, axis_pkt_stream& sweep_tx2_R_io1_cas0,
                axis_pkt_stream& sweep_rx2_L_io1_cas0, axis_pkt_stream& sweep_rx2_R_io1_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx2_L_io2_cas0, axis_pkt_stream& sweep_tx2_R_io2_cas0,
                axis_pkt_stream& sweep_rx2_L_io2_cas0, axis_pkt_stream& sweep_rx2_R_io2_cas0
                
                
                
                ,axis_pkt_stream& sweep_tx2_L_io3_cas0, axis_pkt_stream& sweep_tx2_R_io3_cas0,
                axis_pkt_stream& sweep_rx2_L_io3_cas0, axis_pkt_stream& sweep_rx2_R_io3_cas0
                
                
                
                
                ,axis_pkt_stream& norm_tx0_cas0, axis_pkt_stream& norm_rx0_cas0
                
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




#pragma HLS INTERFACE axis port = sweep_tx1_L_io0_cas0
#pragma HLS INTERFACE axis port = sweep_tx1_R_io0_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_L_io0_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_R_io0_cas0

#pragma HLS INTERFACE axis port = sweep_tx1_L_io1_cas0
#pragma HLS INTERFACE axis port = sweep_tx1_R_io1_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_L_io1_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_R_io1_cas0

#pragma HLS INTERFACE axis port = sweep_tx1_L_io2_cas0
#pragma HLS INTERFACE axis port = sweep_tx1_R_io2_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_L_io2_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_R_io2_cas0

#pragma HLS INTERFACE axis port = sweep_tx1_L_io3_cas0
#pragma HLS INTERFACE axis port = sweep_tx1_R_io3_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_L_io3_cas0
#pragma HLS INTERFACE axis port = sweep_rx1_R_io3_cas0



#pragma HLS INTERFACE axis port = sweep_tx2_L_io0_cas0
#pragma HLS INTERFACE axis port = sweep_tx2_R_io0_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_L_io0_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_R_io0_cas0

#pragma HLS INTERFACE axis port = sweep_tx2_L_io1_cas0
#pragma HLS INTERFACE axis port = sweep_tx2_R_io1_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_L_io1_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_R_io1_cas0

#pragma HLS INTERFACE axis port = sweep_tx2_L_io2_cas0
#pragma HLS INTERFACE axis port = sweep_tx2_R_io2_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_L_io2_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_R_io2_cas0

#pragma HLS INTERFACE axis port = sweep_tx2_L_io3_cas0
#pragma HLS INTERFACE axis port = sweep_tx2_R_io3_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_L_io3_cas0
#pragma HLS INTERFACE axis port = sweep_rx2_R_io3_cas0





#pragma HLS INTERFACE axis port = norm_tx0_cas0
#pragma HLS INTERFACE axis port = norm_rx0_cas0


    Orthogonalize(dataIn, ConvArray, ITER 
      
  
  
                , sweep_tx1_L_io0_cas0, sweep_tx1_R_io0_cas0,
                sweep_rx1_L_io0_cas0, sweep_rx1_R_io0_cas0
  
  
  
                , sweep_tx1_L_io1_cas0, sweep_tx1_R_io1_cas0,
                sweep_rx1_L_io1_cas0, sweep_rx1_R_io1_cas0
  
  
  
                , sweep_tx1_L_io2_cas0, sweep_tx1_R_io2_cas0,
                sweep_rx1_L_io2_cas0, sweep_rx1_R_io2_cas0
  
  
  
                , sweep_tx1_L_io3_cas0, sweep_tx1_R_io3_cas0,
                sweep_rx1_L_io3_cas0, sweep_rx1_R_io3_cas0
  
  

  
  
                , sweep_tx2_L_io0_cas0, sweep_tx2_R_io0_cas0,
                sweep_rx2_L_io0_cas0, sweep_rx2_R_io0_cas0
  
  
  
                , sweep_tx2_L_io1_cas0, sweep_tx2_R_io1_cas0,
                sweep_rx2_L_io1_cas0, sweep_rx2_R_io1_cas0
  
  
  
                , sweep_tx2_L_io2_cas0, sweep_tx2_R_io2_cas0,
                sweep_rx2_L_io2_cas0, sweep_rx2_R_io2_cas0
  
  
  
                , sweep_tx2_L_io3_cas0, sweep_tx2_R_io3_cas0,
                sweep_rx2_L_io3_cas0, sweep_rx2_R_io3_cas0
  
  

    );
    Normalize(dataIn, U, S 
      
      ,norm_tx0_cas0, norm_rx0_cas0
      
      );
}