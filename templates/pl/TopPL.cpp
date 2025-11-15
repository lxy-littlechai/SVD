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

void OrthDDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, int level1_block_L_index, int level1_block_R_index, axis_stream_128 send_fifo_L[parallel_num][IO_NUM], axis_stream_128 send_fifo_R[parallel_num][IO_NUM]) {

  const int SUB_BLOCK_DATA_SIZE = SUB_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_L_offset = level1_block_L_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_R_offset = level1_block_R_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;

  for(int i = 0;i < LEVEL1_BLOCK_SIZE/IO_NUM/SUB_BLOCK_SIZE;i ++) {
    {% for p in range(0, parallel_num) %}
      if({{p}} <= i%(parallel_num) && i%(parallel_num) < {{p+1}}) {
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = dataIn[block_R_offset + i*IO_NUM*SUB_BLOCK_DATA_SIZE + j*SUB_BLOCK_DATA_SIZE + k];
              send_fifo_R[{{p}}][j].write(tmp); 
            }
          }
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = dataIn[block_L_offset + i*IO_NUM*SUB_BLOCK_DATA_SIZE + j*SUB_BLOCK_DATA_SIZE + k];
              send_fifo_L[{{p}}][j].write(tmp); 
            }
          }
      }
    {% endfor %}
    
  }
}

void OrthFIFO2DDR(ap_uint<DDR_WIDTH>* dataIn, int level1_block_L_index, int level1_block_R_index, axis_stream_128 receive_fifo_L[parallel_num][IO_NUM], axis_stream_128 receive_fifo_R[parallel_num][IO_NUM]) {

  const int SUB_BLOCK_DATA_SIZE = SUB_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_L_offset = level1_block_L_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  const int block_R_offset = level1_block_R_index*LEVEL1_BLOCK_SIZE*ROW/DDR_ELEM_NUM;

  for(int i = 0;i < LEVEL1_BLOCK_SIZE/IO_NUM/SUB_BLOCK_SIZE;i ++) {
    {% for p in range(0, parallel_num) %}
      if({{p}} <= i%(parallel_num) && i%(parallel_num) < {{p+1}}) {
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = receive_fifo_R[{{p}}][j].read();
              dataIn[block_R_offset + i*IO_NUM*SUB_BLOCK_DATA_SIZE + j*SUB_BLOCK_DATA_SIZE + k] = tmp;
              
            }
          }
          for(int j = 0;j < IO_NUM;j ++) {
            for(int k = 0;k < SUB_BLOCK_DATA_SIZE;k ++) {
              #pragma HLS PIPELINE II = 1
              ap_uint<128> tmp = receive_fifo_L[{{p}}][j].read();
              dataIn[block_L_offset + i*IO_NUM*SUB_BLOCK_DATA_SIZE + j*SUB_BLOCK_DATA_SIZE + k] = tmp;
              
            }
          }
      }
    {% endfor %}
    
  }
}

void Send(axis_stream_sig& syscontrol,
                    axis_stream_128 fifo_L[parallel_num][IO_NUM], axis_stream_128 fifo_R[parallel_num][IO_NUM]
{% for i in range(0, parallel_num) %}
  {% for j in range(0, IO_NUM) %}
                    ,axis_pkt_stream& sweep_tx{{i+1}}_L_{{j}}, axis_pkt_stream& sweep_tx{{i+1}}_R_{{j}}
  {% endfor %}
{% endfor %}
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
{% for i in range(0, parallel_num) %}
  {% for j in range(0, IO_NUM) %}
        send2AIE(fifo_L[{{i}}][{{j}}], sweep_tx{{i+1}}_L_{{j}});
        send2AIE(fifo_R[{{i}}][{{j}}], sweep_tx{{i+1}}_R_{{j}});
  {% endfor %}
{% endfor %}
      }
    }

}



void Receive(axis_stream_sig& syscontrol, axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM],
                       axis_stream_deep_128 fifo_L[parallel_num][IO_NUM], axis_stream_deep_128 fifo_R[parallel_num][IO_NUM]
{% for i in range(0, parallel_num) %}
  {% for j in range(0, IO_NUM) %}
                    ,axis_pkt_stream& sweep_rx{{i+1}}_L_{{j}}, axis_pkt_stream& sweep_rx{{i+1}}_R_{{j}}
  {% endfor %}
{% endfor %}
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
{% for i in range(0, parallel_num) %}
  {% for j in range(0, IO_NUM) %}
        float conv{{i}}L{{j}} = receive4AIE(fifo_L[{{i}}][{{j}}], sweep_rx{{i+1}}_L_{{j}});
        float conv{{i}}R{{j}} = receive4AIE(fifo_R[{{i}}][{{j}}], sweep_rx{{i+1}}_R_{{j}});
        hls::print("conv{{i}}L{{j}}: %f\n", conv{{i}}L{{j}});
        hls::print("conv{{i}}R{{j}}: %f\n", conv{{i}}R{{j}});
  {% endfor %}
{% endfor %}
{% for i in range(0, parallel_num) %}
  {% for j in range(0, IO_NUM) %}
        convSet_L[{{i}}][{{j}}].write(conv{{i}}L{{j}});
        convSet_R[{{i}}][{{j}}].write(conv{{i}}R{{j}});
  {% endfor %}
{% endfor %}
      }
      
      
    }  

}


void Level1OrderingGenerator(axis_stream_sig& syscontrol, axis_stream_ordering& ordering_L, axis_stream_ordering& ordering_R) {
  axis_stream_ordering gen_L, gen_R;
  for(int i = 0;i < LEVEL1_BLOCK_NUM;i += 2) {
    gen_R.write(i+1);
    gen_L.write(i);
  }
  int tmp_L, tmp_R;
  while(true) {
    ap_uint<1> sig = syscontrol.read();
    if(sig == END) break;

    if(LEVEL1_BLOCK_PAIR_NUM == 1) {
      tmp_L = gen_L.read();
      tmp_R = gen_R.read();
      ordering_L.write(tmp_L);
      ordering_R.write(tmp_R);
      gen_L.write(tmp_L);
      gen_R.write(tmp_R);

      tmp_L = gen_L.read();
      tmp_R = gen_R.read();
      ordering_L.write(tmp_L);
      ordering_R.write(tmp_R);
      gen_L.write(tmp_L);
      gen_R.write(tmp_R);
    }
    else {
      for(int j = 0;j < LEVEL1_BLOCK_NUM-1;j ++) {
        tmp_L = gen_L.read();
        tmp_R = gen_R.read();
        ordering_L.write(tmp_L);
        ordering_R.write(tmp_R);
        gen_L.write(tmp_R);
        gen_L.write(tmp_L);
  
        for(int i = 0;i < LEVEL1_BLOCK_PAIR_NUM-2;i ++) {
          tmp_L = gen_L.read();
          tmp_R = gen_R.read();
          ordering_L.write(tmp_L);
          ordering_R.write(tmp_R);
          gen_L.write(tmp_L);
          gen_R.write(tmp_R);
        }
  
        tmp_L = gen_L.read();
        tmp_R = gen_R.read();
        ordering_L.write(tmp_L);
        ordering_R.write(tmp_R);
        gen_R.write(tmp_L);
        gen_R.write(tmp_R);
      }     
    }
     
  }

}

template<typename TS, typename TE>
void FIFOExchange(TS src_fifo_L[parallel_num][IO_NUM], TS src_fifo_R[parallel_num][IO_NUM], TE dst_fifo_L[parallel_num][IO_NUM], TE dst_fifo_R[parallel_num][IO_NUM]) {
  #pragma HLS INLINE off

  const int STAGE1_SIZE = SUB_BLOCK_SIZE*ROW/ELEM_NUM;
  const int STAGE2_SIZE = (BLOCK_PAIR_NUM-2*parallel_num)/parallel_num*SUB_BLOCK_SIZE*ROW/ELEM_NUM;
  const int STAGE3_SIZE = SUB_BLOCK_SIZE*ROW/ELEM_NUM;
  
  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      ap_uint<W> tmp_R0 = src_fifo_R[0][k].read();
      dst_fifo_L[0][k].write(tmp_R0);
    }
  }


  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      {% for p in range(0, parallel_num) %}
      ap_uint<W> tmp_L{{p}} = src_fifo_L[{{p}}][k].read();
      dst_fifo_L[{{(p+1)%parallel_num}}][k].write(tmp_L{{p}});
      {% endfor %}
    }
  }



  for(int j = 0;j < STAGE1_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      {% for p in range(1, parallel_num) %}
      ap_uint<W> tmp_R{{p}} = src_fifo_R[{{p}}][k].read();
      dst_fifo_R[{{(p-1+parallel_num)%parallel_num}}][k].write(tmp_R{{p}});
      {% endfor %}
    }
  }

  
  

  for(int j = 0;j < STAGE2_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      {% for p in range(0, parallel_num) %}
      ap_uint<W> tmp_L{{p}} = src_fifo_L[{{p}}][k].read();
      dst_fifo_L[{{(p+1)%parallel_num}}][k].write(tmp_L{{p}});
      ap_uint<W> tmp_R{{p}} = src_fifo_R[{{p}}][k].read();
      dst_fifo_R[{{(p-1+parallel_num)%parallel_num}}][k].write(tmp_R{{p}});
      {% endfor %}
    }
  }



  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      {% for p in range(0, parallel_num-1) %}
      ap_uint<W> tmp_L{{p}} = src_fifo_L[{{p}}][k].read();
      dst_fifo_L[{{(p+1)%parallel_num}}][k].write(tmp_L{{p}});
      {% endfor %}
    }
  }


  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      ap_uint<W> tmp_L{{parallel_num-1}} = src_fifo_L[{{parallel_num-1}}][k].read();
      dst_fifo_R[{{((parallel_num-2+parallel_num)%parallel_num)}}][k].write(tmp_L{{parallel_num-1}});
    }
  }

 
    for(int j = 0;j < STAGE3_SIZE;j ++) {
      #pragma HLS PIPELINE II = 1
      for(int k = 0;k < IO_NUM;k ++) {
        #pragma HLS unroll
        {% for p in range(0, parallel_num-1) %}
        ap_uint<W> tmp_R{{p}} = src_fifo_R[{{p}}][k].read();
        dst_fifo_R[{{(p-1+parallel_num)%parallel_num}}][k].write(tmp_R{{p}});
        {% endfor %}
      }
    }


  for(int j = 0;j < STAGE3_SIZE;j ++) {
    #pragma HLS PIPELINE II = 1
    for(int k = 0;k < IO_NUM;k ++) {
      #pragma HLS unroll
      ap_uint<W> tmp_R{{parallel_num-1}} = src_fifo_R[{{parallel_num-1}}][k].read();
      dst_fifo_R[{{parallel_num-1}}][k].write(tmp_R{{parallel_num-1}});
    }
  }
}


void RoundRobin(axis_stream_sig& syscontrol, axis_stream_ordering& ordering_L, axis_stream_ordering& ordering_R,
                ap_uint<DDR_WIDTH>* dataIn, 
                axis_stream_128 send_fifo_L[parallel_num][IO_NUM], axis_stream_128 send_fifo_R[parallel_num][IO_NUM], 
                axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM], axis_stream_deep_128 receive_fifo_R[parallel_num][IO_NUM]) {
  

  axis_stream_128 tmp_fifo_L[parallel_num][IO_NUM], tmp_fifo_R[parallel_num][IO_NUM];

  //Sweep
  const int LEVEL1_STEP = LEVEL1_BLOCK_PAIR_NUM*(LEVEL1_BLOCK_NUM-1);
  const int LEVEL2_STEP = (BLOCK_NUM-1) - 1;

  while(true) {
    ap_uint<1> sig = syscontrol.read();
    hls::print("sig: %d\n", sig);
    if(sig == END) break;
    
    for(int level1 = 0; level1 < LEVEL1_STEP;level1 ++) {
      const int level1_block_L_index = ordering_L.read();
      const int level1_block_R_index = ordering_R.read();
      hls::print("level1_block_L_index: %d\n", level1_block_L_index);
      hls::print("level1_block_R_index: %d\n", level1_block_R_index);
      OrthDDR2FIFO(dataIn, level1_block_L_index, level1_block_R_index, send_fifo_L, send_fifo_R);

      for(int i = 0;i < LEVEL2_STEP;i ++) {
        hls::print("stage1 start: %d\n", i);

        FIFOExchange(receive_fifo_L, receive_fifo_R, send_fifo_L, send_fifo_R);

        hls::print("stage1 end: %d\n", i);
      }

      FIFOExchange(receive_fifo_L, receive_fifo_R, tmp_fifo_L, tmp_fifo_R);

      OrthFIFO2DDR(dataIn, level1_block_L_index, level1_block_R_index, tmp_fifo_L, tmp_fifo_R);
    }
  }
}


void SystemControl(const int ITER, ap_uint<32>* ConvArray, axis_stream_sig syscontrol[3], 
  axis_stream_float convSet_L[parallel_num][IO_NUM], axis_stream_float convSet_R[parallel_num][IO_NUM]) {

  const int FUNCNUM = 4;
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
                
{% for i in range(1, parallel_num+1) %}
  {% for j in range(0, IO_NUM) %}
                ,axis_pkt_stream& sweep_tx{{i}}_L_{{j}}, axis_pkt_stream& sweep_tx{{i}}_R_{{j}},
                axis_pkt_stream& sweep_rx{{i}}_L_{{j}}, axis_pkt_stream& sweep_rx{{i}}_R_{{j}}
  {% endfor %}
{% endfor %}
                ) {

  axis_stream_float convSet_L[parallel_num][IO_NUM], convSet_R[parallel_num][IO_NUM];
  axis_stream_sig syscontrol[4];
  axis_stream_ordering ordering_L, ordering_R;
  axis_stream_128 send_fifo_L[parallel_num][IO_NUM], send_fifo_R[parallel_num][IO_NUM]; // the first param is parrallel AIE graph
  axis_stream_deep_128 receive_fifo_L[parallel_num][IO_NUM], receive_fifo_R[parallel_num][IO_NUM];
  
  #pragma HLS dataflow
  SystemControl(ITER, ConvArray, syscontrol, convSet_L, convSet_R);
  Level1OrderingGenerator(syscontrol[0], ordering_L, ordering_R);
  Send(syscontrol[1], 
                 send_fifo_L, send_fifo_R
{% for i in range(1, parallel_num+1) %}
  {% for j in range(0, IO_NUM) %}
                   ,sweep_tx{{i}}_L_{{j}}, sweep_tx{{i}}_R_{{j}}
  {% endfor %}
{% endfor %});
  RoundRobin(syscontrol[2],ordering_L, ordering_R,
                dataIn, 
               send_fifo_L, send_fifo_R, receive_fifo_L, receive_fifo_R);
  Receive(syscontrol[3], convSet_L, convSet_R,
                     receive_fifo_L, receive_fifo_R
{% for i in range(1, parallel_num+1) %}
  {% for j in range(0, IO_NUM) %}
                     ,sweep_rx{{i}}_L_{{j}}, sweep_rx{{i}}_R_{{j}}
  {% endfor %}
{% endfor %});
}

template<typename T>
void NormDDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, T& tmp_fifo) {
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    for(int j = 0;j < SUB_BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
      tmp_fifo.write(dataIn[i*SUB_BLOCK_SIZE*ROW/ELEM_NUM + j]);
    }
  }
}

template<typename T>
void NormSend(T& norm_send_fifo, axis_pkt_stream& norm_tx0) {
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    send2AIE(norm_send_fifo, norm_tx0);
  }
}

template<typename T>
void NormReceive(T& norm_receive_fifo, axis_pkt_stream& norm_rx0) {
  for(int i = 0;i < COL/SUB_BLOCK_SIZE;i ++) {
    receive4DDR(norm_receive_fifo, norm_rx0);
  }
}

template<typename T>
void NormFIFO2DDR(ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, T& norm_receive_fifo) {
  ap_uint<W> sigma;
  ap_uint<W> data_temp;

  for(int i = 0;i < COL;i ++) {
    for(int j = 0;j < ROW/ELEM_NUM;j ++) {
      #pragma HLS PIPELINE II = 1
      U[i*ROW/ELEM_NUM + j] = norm_receive_fifo.read();
    }
    sigma = norm_receive_fifo.read();
    S[i] = sigma(31, 0);
  }
}

void Normalize(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, axis_pkt_stream& norm_tx0, axis_pkt_stream& norm_rx0) {
  #pragma HLS dataflow

  axis_stream_128 norm_send_fifo, norm_receive_fifo;

  NormDDR2FIFO(dataIn, norm_send_fifo);
  NormSend(norm_send_fifo, norm_tx0);
  NormReceive(norm_receive_fifo, norm_rx0);
  NormFIFO2DDR(U, S, norm_receive_fifo);
  
}

void TopPL(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, ap_uint<32>* ConvArray,
                const int ITER, 
                {% for i in range(1, parallel_num+1) %}
                {% for j in range(0, IO_NUM) %}
                axis_pkt_stream& sweep_tx{{i}}_L_{{j}}, axis_pkt_stream& sweep_tx{{i}}_R_{{j}},
                axis_pkt_stream& sweep_rx{{i}}_L_{{j}}, axis_pkt_stream& sweep_rx{{i}}_R_{{j}},
                {% endfor %}
                {% endfor %}
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

{% for i in range(1, parallel_num+1) %}
{% for j in range(0, IO_NUM) %}
#pragma HLS INTERFACE axis port = sweep_tx{{i}}_L_{{j}}
#pragma HLS INTERFACE axis port = sweep_tx{{i}}_R_{{j}}
#pragma HLS INTERFACE axis port = sweep_rx{{i}}_L_{{j}}
#pragma HLS INTERFACE axis port = sweep_rx{{i}}_R_{{j}}
{% endfor %}
{% endfor %}
#pragma HLS INTERFACE axis port = norm_tx0
#pragma HLS INTERFACE axis port = norm_rx0

    Orthogonalize(dataIn, ConvArray, ITER 
      {% for i in range(1, parallel_num+1) %}
      {% for j in range(0, IO_NUM) %}
      ,sweep_tx{{i}}_L_{{j}}, sweep_tx{{i}}_R_{{j}},
      sweep_rx{{i}}_L_{{j}}, sweep_rx{{i}}_R_{{j}}
      {% endfor %}
      {% endfor %}
    );
    Normalize(dataIn, U, S, norm_tx0, norm_rx0);
}