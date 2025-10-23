// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_6/src/17_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_6_0_3936 16
#define LOCK_16_6_1_2080 17
#define LOCK_17_6_2_0 50
#define LOCK_17_6_3_0 51
#define LOCK_17_5_2_8032 2
#define LOCK_17_5_3_0 3
#define LOCK_17_5_0_0 0
#define LOCK_17_5_1_0 1

// Declare shared memory buffers
v4float buf176[9];
v4float buf176d[9];
v4float buf193[9];
v4float buf193d[9];
v4float buf198[9];
v4float buf198d[9];
v4float buf215[9];
v4float buf215d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf176_buf176d_i[1] = {{(float*)buf176, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf193_buf193d_i[1] = {{(float*)buf193, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf198_buf198d_o[1] = {{(float*)buf198, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_o[1] = {{(float*)buf215, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_6_bounds = sync_buffer[1];

  while (proc_17_6_bounds)
  {

    // Kernel call : i92:orthogonalize<32>
    window_buf176_buf176d_i->setData(*window_buf176_buf176d_i, (float*)buf176, (float*)buf176d, 1-index, 0);
    window_buf176_buf176d_i->acquire(*window_buf176_buf176d_i, LOCK_16_6_0_3936, LOCK_16_6_1_2080, 1-index);
    window_buf193_buf193d_i->setData(*window_buf193_buf193d_i, (float*)buf193, (float*)buf193d, 1-index, 0);
    window_buf193_buf193d_i->acquire(*window_buf193_buf193d_i, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    window_buf198_buf198d_o->setData(*window_buf198_buf198d_o, (float*)buf198, (float*)buf198d, 1-index, 0);
    window_buf198_buf198d_o->acquire(*window_buf198_buf198d_o, LOCK_17_5_2_8032, LOCK_17_5_3_0, 1-index);
    window_buf215_buf215d_o->setData(*window_buf215_buf215d_o, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_o->acquire(*window_buf215_buf215d_o, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    orthogonalize<32>(window_buf176_buf176d_i[0],window_buf193_buf193d_i[0],window_buf198_buf198d_o[0],window_buf215_buf215d_o[0]);
    window_buf176_buf176d_i->release(*window_buf176_buf176d_i, LOCK_16_6_0_3936, LOCK_16_6_1_2080, 1-index);
    window_buf193_buf193d_i->release(*window_buf193_buf193d_i, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    window_buf198_buf198d_o->release(*window_buf198_buf198d_o, LOCK_17_5_2_8032, LOCK_17_5_3_0, 1-index);
    window_buf215_buf215d_o->release(*window_buf215_buf215d_o, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_6_bounds > 0)
      --proc_17_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}