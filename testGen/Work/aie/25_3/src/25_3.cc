// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_3/src/25_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_3_0_3936 16
#define LOCK_25_3_1_2080 17
#define LOCK_26_3_2_0 50
#define LOCK_26_3_3_0 51
#define LOCK_25_4_0_0 32
#define LOCK_25_4_1_0 33
#define LOCK_25_4_2_0 34
#define LOCK_25_4_3_0 35

// Declare shared memory buffers
v4float buf389[9];
v4float buf389d[9];
v4float buf393[9];
v4float buf393d[9];
v4float buf411[9];
v4float buf411d[9];
v4float buf415[9];
v4float buf415d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf389_buf389d_i[1] = {{(float*)buf389, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf393_buf393d_i[1] = {{(float*)buf393, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf411_buf411d_o[1] = {{(float*)buf411, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf415_buf415d_o[1] = {{(float*)buf415, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_3_bounds = sync_buffer[1];

  while (proc_25_3_bounds)
  {

    // Kernel call : i187:orthogonalize<32>
    window_buf389_buf389d_i->setData(*window_buf389_buf389d_i, (float*)buf389, (float*)buf389d, 1-index, 0);
    window_buf389_buf389d_i->acquire(*window_buf389_buf389d_i, LOCK_25_3_0_3936, LOCK_25_3_1_2080, 1-index);
    window_buf393_buf393d_i->setData(*window_buf393_buf393d_i, (float*)buf393, (float*)buf393d, 1-index, 0);
    window_buf393_buf393d_i->acquire(*window_buf393_buf393d_i, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    window_buf411_buf411d_o->setData(*window_buf411_buf411d_o, (float*)buf411, (float*)buf411d, 1-index, 0);
    window_buf411_buf411d_o->acquire(*window_buf411_buf411d_o, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf415_buf415d_o->setData(*window_buf415_buf415d_o, (float*)buf415, (float*)buf415d, 1-index, 0);
    window_buf415_buf415d_o->acquire(*window_buf415_buf415d_o, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    orthogonalize<32>(window_buf389_buf389d_i[0],window_buf393_buf393d_i[0],window_buf411_buf411d_o[0],window_buf415_buf415d_o[0]);
    window_buf389_buf389d_i->release(*window_buf389_buf389d_i, LOCK_25_3_0_3936, LOCK_25_3_1_2080, 1-index);
    window_buf393_buf393d_i->release(*window_buf393_buf393d_i, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    window_buf411_buf411d_o->release(*window_buf411_buf411d_o, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf415_buf415d_o->release(*window_buf415_buf415d_o, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_3_bounds > 0)
      --proc_25_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}