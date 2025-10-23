// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/3_3/src/3_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_3_0_0 16
#define LOCK_3_3_1_0 17
#define LOCK_4_3_0_8032 48
#define LOCK_4_3_1_0 49
#define LOCK_3_4_0_0 32
#define LOCK_3_4_1_0 33
#define LOCK_3_4_2_0 34
#define LOCK_3_4_3_0 35

// Declare shared memory buffers
v4float buf26[9];
v4float buf26d[9];
v4float buf28[9];
v4float buf28d[9];
v4float buf34[9];
v4float buf34d[9];
v4float buf36[9];
v4float buf36d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_i[1] = {{(float*)buf26, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_i[1] = {{(float*)buf28, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_o[1] = {{(float*)buf34, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_o[1] = {{(float*)buf36, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_3_bounds = sync_buffer[1];

  while (proc_3_3_bounds)
  {

    // Kernel call : i14:orthogonalize<32>
    window_buf26_buf26d_i->setData(*window_buf26_buf26d_i, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_i->acquire(*window_buf26_buf26d_i, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf28_buf28d_i->setData(*window_buf28_buf28d_i, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_i->acquire(*window_buf28_buf28d_i, LOCK_4_3_0_8032, LOCK_4_3_1_0, 1-index);
    window_buf34_buf34d_o->setData(*window_buf34_buf34d_o, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_o->acquire(*window_buf34_buf34d_o, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf36_buf36d_o->setData(*window_buf36_buf36d_o, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_o->acquire(*window_buf36_buf36d_o, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    orthogonalize<32>(window_buf26_buf26d_i[0],window_buf28_buf28d_i[0],window_buf34_buf34d_o[0],window_buf36_buf36d_o[0]);
    window_buf26_buf26d_i->release(*window_buf26_buf26d_i, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf28_buf28d_i->release(*window_buf28_buf28d_i, LOCK_4_3_0_8032, LOCK_4_3_1_0, 1-index);
    window_buf34_buf34d_o->release(*window_buf34_buf34d_o, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf36_buf36d_o->release(*window_buf36_buf36d_o, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_3_bounds > 0)
      --proc_3_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}