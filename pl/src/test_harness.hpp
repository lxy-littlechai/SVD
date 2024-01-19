#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "config.h"

void loadAFromDDR(ap_uint<W>* dataIn, 
                  hls::stream<ap_uint<W>>(& puA)[BLOCK_NUM]) {
  for(int k = 0;k < BLOCK_NUM;k += 2) {
    for(int j = 0;j < BLOCK_SIZE;j ++) {//col first
      for(int i = 0;i < ROW;i ++) {
        ap_uint data;
        for(int u = 0;u < ELEM_NUM_PER_PKT;u ++) {
          data(32*(u+1)-1,32*u) = dataIn[k*BLOCK_SIZE*ROW + j*ROW + i];
        }
        puA[k/2].write(data);
      }
    }
  }
}

void loadBFromDDR(ap_uint<W>* dataIn, 
                  hls::stream<ap_uint<W>>(& puB)[BLOCK_NUM]) {
  for(int k = 1;k < BLOCK_NUM;k += 2) {
    for(int j = 0;j < BLOCK_SIZE;j ++) {//col first
      for(int i = 0;i < ROW;i ++) {
        ap_uint data;
        for(int u = 0;u < ELEM_NUM_PER_PKT;u ++) {
          data(32*(u+1)-1,32*u) = dataIn[k*BLOCK_SIZE*ROW + j*ROW + i];
        }
        puB[k/2].write(data);
      }
    }
  }
}

void loadFromDDR(ap_uint<W>* dataIn, 
                hls::stream<ap_uint<W>>(& puA)[BLOCK_NUM], 
                hls::stream<ap_uint<W>>(& puB)[BLOCK_NUM]) {
#pragma HLS DATAFLOW
  loadAFromDDR(dataIn, puA[BLOCK_NUM]);
  loadBFromDDR(dataIn, puB[BLOCK_NUM]);
}

void storeFromAIE(hls::stream<ap_uint<W>>(& puA)[BLOCK_NUM], hls::stream<ap_uint<W>>(& puB)[BLOCK_NUM], 
                  hls::stream<ap_uint<W>>& fromAIE_fifoA, hls::stream<ap_uint<W>>& fromAIE_fifoB) {
  for(int step = 1; step <= one_sweep; step ++) {
    for(int i = 0;i < PU_NUM;i ++) {
      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM_PER_PKT;j ++) {
          auto tempA = fromAIE_fifoA.read();
          auto tempB = fromAIE_fifoB.read();

          if(i == 0) {
            puA[1].write(tempA);
            puA[0].write(tempB);
          }
          else if(i == PU_NUM-1) {
            puB[PU_NUM-2].write(tempA);
            puB[PU_NUM-1].write(tempB);
          }
          else {
            puA[i+1].write(tempA);
            puB[i-1].write(tempB);
          }
      }
    }
  }
}


void loadData(ap_uint<W>& dataIn, 
              hls::stream<ap_uint<W>>(& puA)[BLOCK_NUM], hls::stream<ap_uint<W>>(& puB)[BLOCK_NUM], 
              hls::stream<ap_uint<W>>& fromAIE_fifoA, hls::stream<ap_uint<W>>& fromAIE_fifoB) {
  loadFromDDR(dataIn, puA[BLOCK_NUM], puB[BLOCK_NUM]);
  storeFromAIE(puA[BLOCK_NUM], puB[BLOCK_NUM], fromAIE_fifoA, fromAIE_fifoB);
}

void send(hls::stream<ap_uint<W>>(& puA)[BLOCK_NUM], hls::stream<ap_uint<W>>(& puB)[BLOCK_NUM], 
          hls::stream<ap_uint<W>>& toAIE_fifoA, hls::stream<ap_uint<W>>& toAIE_fifoB) {
  for(int i = 0;i < SWEEP_STEP;i ++) {
    for(int i = 0;i < PU_NUM;i ++) {
      for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM_PER_PKT;j ++) {
          auto tempA = puA[i].read();
          auto tempB = puB[i].read();
          toAIE_fifoA.write(tempA);
          toAIE_fifoB.write(tempB);
      }
    }
  }
}

void fifoToAIE(hls::stream<ap_uint<W>>& toAIE_fifoA, hls::stream<ap_uint<W>>& toAIE_fifoB,
              axis_stream& toAIE_strmA, axis_stream& toAIE_strmB) {
                
              }