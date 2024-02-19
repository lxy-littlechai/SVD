#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_burst_maxi.h>
#include "config.h"

template<int ROW, int BLOCK_SIZE>
class Block {
private:
  ap_uint<W> mem[ROW*BLOCK_SIZE/ELEM_NUM];

public:

  Block() {
    #pragma HLS bind_storage variable=mem type=RAM_T2P impl=URAM
    #pragma HLS array_partition variable = mem type = complete dim = 1
//#pragma HLS INTERFACE axis port = ready
  }
  void load4DDR(ap_uint<DDR_WIDTH>* dataIn, int k) {
  #pragma HLS inline off
    for(int j = 0;j < BLOCK_SIZE;j ++) {//col first
      for(int i = 0;i < ROW/ELEM_NUM;i ++) {
        ap_uint<W> data;
        for(int u = 0;u < ELEM_NUM;u ++) {
          data(32*(u+1)-1,32*u) = dataIn[k*BLOCK_SIZE*ROW + j*ROW + i*ELEM_NUM + u];
        }
        mem[j*ROW/ELEM_NUM + i] = data;
      }
    }
    //ready.write(1);
  }

  void send2AIE(axis_pkt_stream& toAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;

    for(int i = 0;i < BLOCK_SIZE;i ++) {
      header = generateHeader(0, i);

      tmp.data(31, 0) = header;
      tmp.data(63, 32) = mem[i*ROW/ELEM_NUM](31, 0);
      tmp.data(95, 64) = mem[i*ROW/ELEM_NUM](63, 32);
      tmp.data(127, 96) = mem[i*ROW/ELEM_NUM](95, 64);
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        tmp.data = mem[i*ROW/ELEM_NUM + j];
        tmp.data(31, 0) = mem[i*ROW/ELEM_NUM + j - 1](127, 96);
        tmp.data(63, 32) = mem[i*ROW/ELEM_NUM + j](31, 0);
        tmp.data(95, 64) = mem[i*ROW/ELEM_NUM + j](63, 32);
        tmp.data(127, 96) = mem[i*ROW/ELEM_NUM + j](95, 64);
        tmp.keep = -1;
        tmp.last = 0;
        toAIEstrm.write(tmp);
      }
      

      tmp.data(31, 0) = mem[i*ROW/ELEM_NUM + ROW/ELEM_NUM - 1](127, 96);
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x000f;
      tmp.last = 1;
      toAIEstrm.write(tmp);

    }
    
  }

  void receive4AIE(axis_pkt_stream& fromAIEstrm, axis_stream& ready) {
  #pragma HLS inline off
      axis_pkt tmp;
      ap_uint<32> header;
      ap_int<W> data_temp[2];
      for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        int ID = getPacketID(header);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          mem[ID*ROW/ELEM_NUM + j-1] = data_temp[(j-1)%2];
          
        }
        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        mem[ID*ROW/ELEM_NUM + ROW/ELEM_NUM-1] = data_temp[(ROW/ELEM_NUM-1)%2];


      }
      ready.write(1);

  }

  void store2DDR(ap_uint<DDR_WIDTH>* dataOut, int k) {
  #pragma HLS inline off
      for(int j = 0;j < BLOCK_SIZE;j ++) {//col first
        for(int i = 0;i < ROW/ELEM_NUM;i ++) {
          ap_uint<W> data = mem[j*ROW/ELEM_NUM + i];
          for(int u = 0;u < ELEM_NUM;u ++) {
            dataOut[k*BLOCK_SIZE*ROW + j*ROW + i*ELEM_NUM + u] = data(32*(u+1)-1,32*u);
          }
        }
      }
  }

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

};