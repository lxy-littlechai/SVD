// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_1/src/7_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_1_2_4256 18
#define LOCK_7_1_3_8032 19
#define LOCK_8_1_0_160 48
#define LOCK_8_1_1_160 49
#define LOCK_7_2_0_0 32
#define LOCK_7_2_1_0 33
#define LOCK_7_2_2_0 34
#define LOCK_7_2_3_0 35

// Declare shared memory buffers
v4float buf34[9];
v4float buf34d[9];
v4float buf37[9];
v4float buf37d[9];
v4float buf56[9];
v4float buf56d[9];
v4float buf59[9];
v4float buf59d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_i[1] = {{(float*)buf34, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_i[1] = {{(float*)buf37, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_o[1] = {{(float*)buf56, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_o[1] = {{(float*)buf59, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_1_bounds = sync_buffer[1];

  while (proc_7_1_bounds)
  {

    // Kernel call : i17:orthogonalize<32>
    window_buf34_buf34d_i->setData(*window_buf34_buf34d_i, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_i->acquire(*window_buf34_buf34d_i, LOCK_7_1_2_4256, LOCK_7_1_3_8032, 1-index);
    window_buf37_buf37d_i->setData(*window_buf37_buf37d_i, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_i->acquire(*window_buf37_buf37d_i, LOCK_8_1_0_160, LOCK_8_1_1_160, 1-index);
    window_buf56_buf56d_o->setData(*window_buf56_buf56d_o, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_o->acquire(*window_buf56_buf56d_o, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf59_buf59d_o->setData(*window_buf59_buf59d_o, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_o->acquire(*window_buf59_buf59d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    orthogonalize<32>(window_buf34_buf34d_i[0],window_buf37_buf37d_i[0],window_buf56_buf56d_o[0],window_buf59_buf59d_o[0]);
    window_buf34_buf34d_i->release(*window_buf34_buf34d_i, LOCK_7_1_2_4256, LOCK_7_1_3_8032, 1-index);
    window_buf37_buf37d_i->release(*window_buf37_buf37d_i, LOCK_8_1_0_160, LOCK_8_1_1_160, 1-index);
    window_buf56_buf56d_o->release(*window_buf56_buf56d_o, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf59_buf59d_o->release(*window_buf59_buf59d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_1_bounds > 0)
      --proc_7_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}