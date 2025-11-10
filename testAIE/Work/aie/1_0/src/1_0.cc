// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIE/./Work/aie/1_0/src/1_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_0_0_0 16
#define LOCK_0_0_1_8096 17
#define LOCK_0_0_2_0 18
#define LOCK_0_0_3_8096 19
#define LOCK_1_1_0_8096 32
#define LOCK_1_1_1_0 33
#define LOCK_1_1_2_0 34
#define LOCK_1_1_3_0 35

// Declare shared memory buffers
v4float buf0[5];
v4float buf0d[5];
v4float buf1[5];
v4float buf1d[5];
v4float buf2[5];
v4float buf2d[5];
v4float buf3[5];
v4float buf3d[5];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/OrthTop.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  input_stream_float stream_0 = input_stream_float(0);
  output_stream_float stream_1 = output_stream_float(0);
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf0_buf0d_i[1] = {{(float*)buf0, 17, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf1_buf1d_i[1] = {{(float*)buf1, 17, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf2_buf2d_o[1] = {{(float*)buf2, 17, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<17u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf3_buf3d_o[1] = {{(float*)buf3, 17, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_0_bounds = sync_buffer[1];

  while (proc_1_0_bounds)
  {

    // Kernel call : i0:orthTop<16>
    window_buf0_buf0d_i->setData(*window_buf0_buf0d_i, (float*)buf0, (float*)buf0d, 1-index, 0);
    window_buf0_buf0d_i->acquire(*window_buf0_buf0d_i, LOCK_0_0_0_0, LOCK_0_0_1_8096, 1-index);
    window_buf1_buf1d_i->setData(*window_buf1_buf1d_i, (float*)buf1, (float*)buf1d, 1-index, 0);
    window_buf1_buf1d_i->acquire(*window_buf1_buf1d_i, LOCK_0_0_2_0, LOCK_0_0_3_8096, 1-index);
    window_buf2_buf2d_o->setData(*window_buf2_buf2d_o, (float*)buf2, (float*)buf2d, 1-index, 0);
    window_buf2_buf2d_o->acquire(*window_buf2_buf2d_o, LOCK_1_1_0_8096, LOCK_1_1_1_0, 1-index);
    window_buf3_buf3d_o->setData(*window_buf3_buf3d_o, (float*)buf3, (float*)buf3d, 1-index, 0);
    window_buf3_buf3d_o->acquire(*window_buf3_buf3d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    orthTop<16>(window_buf0_buf0d_i[0],window_buf1_buf1d_i[0],&stream_0,window_buf2_buf2d_o[0],window_buf3_buf3d_o[0],&stream_1);
    window_buf0_buf0d_i->release(*window_buf0_buf0d_i, LOCK_0_0_0_0, LOCK_0_0_1_8096, 1-index);
    window_buf1_buf1d_i->release(*window_buf1_buf1d_i, LOCK_0_0_2_0, LOCK_0_0_3_8096, 1-index);
    window_buf2_buf2d_o->release(*window_buf2_buf2d_o, LOCK_1_1_0_8096, LOCK_1_1_1_0, 1-index);
    window_buf3_buf3d_o->release(*window_buf3_buf3d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_0_bounds > 0)
      --proc_1_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}