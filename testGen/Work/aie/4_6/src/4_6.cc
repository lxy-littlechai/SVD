// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_6/src/4_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_6_0_3936 16
#define LOCK_3_6_1_2080 17
#define LOCK_4_6_2_0 50
#define LOCK_4_6_3_0 51
#define LOCK_4_7_0_8032 32
#define LOCK_4_7_1_0 33
#define LOCK_4_7_2_0 34
#define LOCK_4_7_3_0 35

// Declare shared memory buffers
v4float buf132[9];
v4float buf132d[9];
v4float buf145[9];
v4float buf145d[9];
v4float buf154[9];
v4float buf154d[9];
v4float buf167[9];
v4float buf167d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf132_buf132d_i[1] = {{(float*)buf132, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145_buf145d_i[1] = {{(float*)buf145, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf154_buf154d_o[1] = {{(float*)buf154, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167_buf167d_o[1] = {{(float*)buf167, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_6_bounds = sync_buffer[1];

  while (proc_4_6_bounds)
  {

    // Kernel call : i69:orthogonalize<32>
    window_buf132_buf132d_i->setData(*window_buf132_buf132d_i, (float*)buf132, (float*)buf132d, 1-index, 0);
    window_buf132_buf132d_i->acquire(*window_buf132_buf132d_i, LOCK_3_6_0_3936, LOCK_3_6_1_2080, 1-index);
    window_buf145_buf145d_i->setData(*window_buf145_buf145d_i, (float*)buf145, (float*)buf145d, 1-index, 0);
    window_buf145_buf145d_i->acquire(*window_buf145_buf145d_i, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    window_buf154_buf154d_o->setData(*window_buf154_buf154d_o, (float*)buf154, (float*)buf154d, 1-index, 0);
    window_buf154_buf154d_o->acquire(*window_buf154_buf154d_o, LOCK_4_7_0_8032, LOCK_4_7_1_0, 1-index);
    window_buf167_buf167d_o->setData(*window_buf167_buf167d_o, (float*)buf167, (float*)buf167d, 1-index, 0);
    window_buf167_buf167d_o->acquire(*window_buf167_buf167d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    orthogonalize<32>(window_buf132_buf132d_i[0],window_buf145_buf145d_i[0],window_buf154_buf154d_o[0],window_buf167_buf167d_o[0]);
    window_buf132_buf132d_i->release(*window_buf132_buf132d_i, LOCK_3_6_0_3936, LOCK_3_6_1_2080, 1-index);
    window_buf145_buf145d_i->release(*window_buf145_buf145d_i, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    window_buf154_buf154d_o->release(*window_buf154_buf154d_o, LOCK_4_7_0_8032, LOCK_4_7_1_0, 1-index);
    window_buf167_buf167d_o->release(*window_buf167_buf167d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_6_bounds > 0)
      --proc_4_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}