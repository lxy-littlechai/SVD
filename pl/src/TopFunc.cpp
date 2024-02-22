#include "TopFunc.h"

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
/*
void load4DDR(ap_uint<DDR_WIDTH>* dataIn, axis_stream block[BLOCK_NUM]) {
#pragma HLS inline off
  ap_uint<W> data;
  for(int k = 0;k < BLOCK_NUM;k ++) {
    hls::print("load4DDR write_lock %d get\n",k);
    for(int i = 0;i < BLOCK_SIZE*ROW/ELEM_NUM;i ++) {
      for(int u = 0;u < ELEM_NUM;u ++) {
        data(32*(u+1)-1,32*u) = dataIn[k*BLOCK_SIZE*ROW + i*ELEM_NUM + u];
        hls::print("%d \n",data(32*(u+1)-1,32*u));
      }
      
      mem[i] = i;
      hls::print("\n%d\n",mem[i]);
    }
    hls::print("load4DDR write_lock k release\n");
 
  }
}
*/
void generateOrder(const int ITER, axis_stream& order2AIE0, axis_stream& order2AIE1) {
  #pragma HLS inline off 
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
            order2AIE0.write(pu[j][0]);
            order2AIE1.write(pu[j][1]);
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

void receive4AIE(axis_stream_128 block[BLOCK_NUM], axis_stream_32 col_index[BLOCK_NUM], axis_stream& order4AIE, axis_pkt_stream& fromAIEstrm) {
    #pragma HLS inline off  
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2];

    int id = order4AIE.read();
    hls::print("write_lock %d get\n",id);
    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        int COL_INDEX = getPacketID(header);
        col_index[id].write(COL_INDEX);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block[id].write(data_temp[(j-1)%2]);
          //mem[ID*ROW/ELEM_NUM + j-1] = data_temp[(j-1)%2];
          //hls::print("data %d\n",data_temp[(j-1)%2]);
        }
        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        block[id].write(data_temp[(ROW/ELEM_NUM-1)%2]);
        //mem[ID*ROW/ELEM_NUM + ROW/ELEM_NUM-1] = data_temp[(ROW/ELEM_NUM-1)%2];
    }
    hls::print("write_lock %d release\n", id);
}

void svd_receive(const int ITER, axis_stream_128 block[BLOCK_NUM], axis_stream_32 col_index[BLOCK_NUM],
                   axis_stream& order4AIE0, axis_pkt_stream& fromSweepstrm0, 
                   axis_stream& order4AIE1, axis_pkt_stream& fromSweepstrm1) {
    #pragma HLS inline off

    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int step = 0;step < SWEEP_STEP;step ++){    
     // if(step < SWEEP_STEP - BLOCK_NUM/2) {
        receive4AIE(block, col_index, order4AIE0, fromSweepstrm0);
        receive4AIE(block, col_index, order4AIE1, fromSweepstrm1);
      //}
      /*else {
        receive4AIE(blockOut, col_index, order4AIE0, fromSweepstrm0);
        receive4AIE(blockOut, col_index, order4AIE1, fromSweepstrm1);
      }*/
    }
    
}
void send2AIE(ap_uint<DDR_WIDTH>* dataIn, axis_stream& order2AIE, axis_stream& order4AIE, axis_pkt_stream& toAIEstrm) {
  #pragma HLS inline off    
    axis_pkt tmp;
    ap_uint<32> header;
    hls::print("before read\n");
    int id = order2AIE.read();
    order4AIE.write(id);
    hls::print("block %d\n",id);

    hls::print("read_lock %d get\n",id);
    int index = id*BLOCK_SIZE*ROW;
    for(int i = 0;i < BLOCK_SIZE;i ++) {
      header = generateHeader(0, i);
      //hls::print("header %d\n",header);
      tmp.data(31, 0) = header;
      tmp.data(63, 32) = dataIn[index ++]; 
      tmp.data(95, 64) = dataIn[index ++];
      tmp.data(127, 96) = dataIn[index ++];
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      //hls::print("data %d\n",tmp.data);
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        //tmp.data = mem[i*ROW/ELEM_NUM + j];
        tmp.data(31, 0) = dataIn[index ++];
        tmp.data(63, 32) = dataIn[index ++];
        tmp.data(95, 64) = dataIn[index ++];
        tmp.data(127, 96) = dataIn[index ++];
        tmp.keep = -1;
        tmp.last = 0;
        toAIEstrm.write(tmp);
        //hls::print("data %d\n",tmp.data);
      }
      

      tmp.data(31, 0) = dataIn[index ++];
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x000f;
      tmp.last = 1;
      toAIEstrm.write(tmp);
      //hls::print("data %d\n",tmp.data);

    }
    hls::print("read_lock %d release\n", id);
}

void send2AIE(axis_stream_128 block[BLOCK_NUM], axis_stream_32 col_index[BLOCK_NUM],
              axis_stream& order2AIE, axis_stream& order4AIE, axis_pkt_stream& toAIEstrm) {
  #pragma HLS inline off    
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2];
    hls::print("before read\n");
    int id = order2AIE.read();
    order4AIE.write(id);
    hls::print("block %d\n",id);
    
    hls::print("read_lock %d get\n",id);
    for(int i = 0;i < BLOCK_SIZE;i ++) {
      int header = col_index[id].read();
      data_temp[0] = block[id].read();
      //hls::print("header %d\n",header);
      tmp.data(31, 0) = header;
      tmp.data(63, 32) = data_temp[0](31, 0);
      tmp.data(95, 64) = data_temp[0](63, 32);
      tmp.data(127, 96) = data_temp[0](95, 64);
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      //hls::print("data %d\n",tmp.data);
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        //tmp.data = mem[i*ROW/ELEM_NUM + j];
        data_temp[j%2] = block[id].read();
        tmp.data(31, 0) = data_temp[(j-1)%2](127, 96);
        tmp.data(63, 32) = data_temp[j%2](31, 0);
        tmp.data(95, 64) = data_temp[j%2](63, 32);
        tmp.data(127, 96) = data_temp[j%2](95, 64);
        tmp.keep = -1;
        tmp.last = 0;
        toAIEstrm.write(tmp);
        //hls::print("data %d\n",tmp.data);
      }
      

      tmp.data(31, 0) = data_temp[(ROW/ELEM_NUM-1)%2](127, 96);
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x000f;
      tmp.last = 1;
      toAIEstrm.write(tmp);
      //hls::print("data %d\n",tmp.data);

    }
    
    hls::print("read_lock %d release\n", id);
}

void svd_send(const int ITER, ap_uint<DDR_WIDTH>* dataIn, axis_stream_128 block[BLOCK_NUM], axis_stream_32 col_index[BLOCK_NUM],
                axis_stream& order2AIE0, axis_stream& order4AIE0, axis_pkt_stream& toSweepstrm0, 
                axis_stream& order2AIE1, axis_stream& order4AIE1, axis_pkt_stream& toSweepstrm1){
    #pragma HLS inline off
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int step = 0;step < SWEEP_STEP;step ++){
//#pragma HLS dataflow
      if(step < BLOCK_NUM/2) {
        send2AIE(dataIn, order2AIE0, order4AIE0, toSweepstrm0);
        send2AIE(dataIn, order2AIE1, order4AIE1, toSweepstrm1);
      }
      else {
        send2AIE(block, col_index, order2AIE0, order4AIE0, toSweepstrm0);
        send2AIE(block, col_index, order2AIE1, order4AIE1, toSweepstrm1);
      }
    }
                  
}


void norm_send(axis_stream_128 block[BLOCK_NUM], axis_pkt_stream& toAIEstrm) {
  for(int i = 0;i < BLOCK_NUM;i ++) {
    //send2AIE(block[i], toAIEstrm);
  }
}

void norm_receive(ap_uint<DDR_WIDTH>* dataOut, axis_pkt_stream& fromAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<32> sigma;
    for(int i = 0;i < BLOCK_NUM;i ++) {
      for(int j = 0;j < BLOCK_SIZE;j ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        sigma = tmp.data(63, 32);
        dataOut[i*BLOCK_SIZE + header] = sigma;
      }
    }
}

void norm(ap_uint<DDR_WIDTH>* out, axis_stream blockIn[BLOCK_NUM],
          axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0) {
  #pragma HLS dataflow
  //norm_send(blockIn, toNormstrm0);
  //norm_receive(out, fromNormstrm0);

}

void TopFunc(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* dataOut,
         const int ITER, 
         axis_pkt_stream& toSweepstrm0, axis_pkt_stream& fromSweepstrm0,
         axis_pkt_stream& toSweepstrm1, axis_pkt_stream& fromSweepstrm1
         /*axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0*/) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = dataIn depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = dataOut depth = 8192
#pragma HLS INTERFACE s_axilite port = dataIn bundle = control
#pragma HLS INTERFACE s_axilite port = dataOut bundle = control
#pragma HLS INTERFACE s_axilite port = ITER bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS INTERFACE axis port = toSweepstrm0
#pragma HLS INTERFACE axis port = toSweepstrm1
#pragma HLS INTERFACE axis port = fromSweepstrm0
#pragma HLS INTERFACE axis port = fromSweepstrm1
/*
#pragma HLS INTERFACE axis port = toNormstrm0
#pragma HLS INTERFACE axis port = fromNormstrm0   
*/
    #pragma HLS dataflow
    axis_stream_128 block[BLOCK_NUM];
    axis_stream_32 col_index[BLOCK_NUM];
    axis_stream order2AIE[2], order4AIE[2];
    generateOrder(ITER, order2AIE[0], order2AIE[1]);
    svd_send(ITER, dataIn, block, col_index,
               order2AIE[0], order4AIE[0], toSweepstrm0,
               order2AIE[1], order4AIE[1], toSweepstrm1);
    svd_receive(ITER, block, col_index,
                  order4AIE[0], fromSweepstrm0,
                  order4AIE[1], fromSweepstrm1);
}

void simulateAIE(axis_pkt_stream& toSweepstrm0, axis_pkt_stream& toSweepstrm1,
                  axis_pkt_stream& fromSweepstrm0, axis_pkt_stream& fromSweepstrm1) {
                    axis_pkt tmp;
                    ap_uint<32> header;
                    for(int i = 0;i < BLOCK_SIZE;i ++) {
                      tmp = toSweepstrm0.read();
                      //cout << tmp.data << "\n";
                      for(int u = 1;u < ELEM_NUM;u ++) {
                        //tmp.data(31*(u+1), 32*u) = 1;
                      }
                      fromSweepstrm0.write(tmp);

                      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
                        tmp = toSweepstrm0.read();
                        //cout << tmp.data << "\n";
                        for(int u = 0;u < ELEM_NUM;u ++) {
                          //tmp.data(31*(u+1), 32*u) = 1;
                        }
                        fromSweepstrm0.write(tmp);
                      }
                      tmp = toSweepstrm0.read();
                      //cout << tmp.data << "\n";
                      //tmp.data(31, 0) = 1;
                      fromSweepstrm0.write(tmp);
                    }


                    for(int i = 0;i < BLOCK_SIZE;i ++) {
                      tmp = toSweepstrm1.read();
                      for(int u = 1;u < ELEM_NUM;u ++) {
                        //tmp.data(31*(u+1), 32*u) = 1;
                      }
                      fromSweepstrm1.write(tmp);

                      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
                        tmp = toSweepstrm1.read();
                        for(int u = 0;u < ELEM_NUM;u ++) {
                          //tmp.data(31*(u+1), 32*u) = 1;
                        }
                        fromSweepstrm1.write(tmp);
                      }
                      tmp = toSweepstrm1.read();
                      tmp.data(31, 0) = 1;
                      fromSweepstrm1.write(tmp);
                    }
  }
