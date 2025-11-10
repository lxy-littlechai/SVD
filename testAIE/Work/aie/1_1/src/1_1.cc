// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIE/./Work/aie/1_1/src/1_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_1_0_0 48
#define LOCK_2_1_1_0 49
#define LOCK_1_0_0_0 0
#define LOCK_1_0_1_0 1
#define LOCK_1_2_0_96 32
#define LOCK_1_2_1_96 33
#define LOCK_1_2_2_0 34
#define LOCK_1_2_3_0 35

// Declare shared memory buffers
v4float buf4[5];
v4float buf4d[5];
v4float buf5[5];
v4float buf5d[5];
v4float buf6[5];
v4float buf6d[5];
v4float buf7[5];
v4float buf7d[5];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/OrthBottom.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  input_stream_float stream_0 = input_stream_float(0);
  output_stream_float stream_1 = output_stream_float(0);
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf4_buf4d_i[1] = {{(float*)buf4, 17, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf5_buf5d_i[1] = {{(float*)buf5, 17, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf6_buf6d_o[1] = {{(float*)buf6, 17, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf7_buf7d_o[1] = {{(float*)buf7, 17, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_1_bounds = sync_buffer[1];

  while (proc_1_1_bounds)
  {

    // Kernel call : i1:orthBottom<16>
    window_buf4_buf4d_i->setData(*window_buf4_buf4d_i, (float*)buf4, (float*)buf4d, 1-index, 0);
    window_buf4_buf4d_i->acquire(*window_buf4_buf4d_i, LOCK_2_1_0_0, LOCK_2_1_1_0, 1-index);
    window_buf5_buf5d_i->setData(*window_buf5_buf5d_i, (float*)buf5, (float*)buf5d, 1-index, 0);
    window_buf5_buf5d_i->acquire(*window_buf5_buf5d_i, LOCK_1_0_0_0, LOCK_1_0_1_0, 1-index);
    window_buf6_buf6d_o->setData(*window_buf6_buf6d_o, (float*)buf6, (float*)buf6d, 1-index, 0);
    window_buf6_buf6d_o->acquire(*window_buf6_buf6d_o, LOCK_1_2_0_96, LOCK_1_2_1_96, 1-index);
    window_buf7_buf7d_o->setData(*window_buf7_buf7d_o, (float*)buf7, (float*)buf7d, 1-index, 0);
    window_buf7_buf7d_o->acquire(*window_buf7_buf7d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    orthBottom<16>(window_buf4_buf4d_i[0],window_buf5_buf5d_i[0],&stream_0,window_buf6_buf6d_o[0],window_buf7_buf7d_o[0],&stream_1);
    window_buf4_buf4d_i->release(*window_buf4_buf4d_i, LOCK_2_1_0_0, LOCK_2_1_1_0, 1-index);
    window_buf5_buf5d_i->release(*window_buf5_buf5d_i, LOCK_1_0_0_0, LOCK_1_0_1_0, 1-index);
    window_buf6_buf6d_o->release(*window_buf6_buf6d_o, LOCK_1_2_0_96, LOCK_1_2_1_96, 1-index);
    window_buf7_buf7d_o->release(*window_buf7_buf7d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_1_bounds > 0)
      --proc_1_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}