// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_3/src/29_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_3_0_0 16
#define LOCK_29_3_1_0 17
#define LOCK_30_3_2_0 50
#define LOCK_30_3_3_0 51
#define LOCK_29_4_0_0 32
#define LOCK_29_4_1_0 33
#define LOCK_29_4_2_0 34
#define LOCK_29_4_3_0 35

// Declare shared memory buffers
v4float buf381[9];
v4float buf381d[9];
v4float buf388[9];
v4float buf388d[9];
v4float buf403[9];
v4float buf403d[9];
v4float buf410[9];
v4float buf410d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf381_buf381d_i[1] = {{(float*)buf381, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf388_buf388d_i[1] = {{(float*)buf388, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf403_buf403d_o[1] = {{(float*)buf403, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf410_buf410d_o[1] = {{(float*)buf410, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_3_bounds = sync_buffer[1];

  while (proc_29_3_bounds)
  {

    // Kernel call : i191:orthogonalize<32>
    window_buf381_buf381d_i->setData(*window_buf381_buf381d_i, (float*)buf381, (float*)buf381d, 1-index, 0);
    window_buf381_buf381d_i->acquire(*window_buf381_buf381d_i, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf388_buf388d_i->setData(*window_buf388_buf388d_i, (float*)buf388, (float*)buf388d, 1-index, 0);
    window_buf388_buf388d_i->acquire(*window_buf388_buf388d_i, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    window_buf403_buf403d_o->setData(*window_buf403_buf403d_o, (float*)buf403, (float*)buf403d, 1-index, 0);
    window_buf403_buf403d_o->acquire(*window_buf403_buf403d_o, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf410_buf410d_o->setData(*window_buf410_buf410d_o, (float*)buf410, (float*)buf410d, 1-index, 0);
    window_buf410_buf410d_o->acquire(*window_buf410_buf410d_o, LOCK_29_4_2_0, LOCK_29_4_3_0, 1-index);
    orthogonalize<32>(window_buf381_buf381d_i[0],window_buf388_buf388d_i[0],window_buf403_buf403d_o[0],window_buf410_buf410d_o[0]);
    window_buf381_buf381d_i->release(*window_buf381_buf381d_i, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf388_buf388d_i->release(*window_buf388_buf388d_i, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    window_buf403_buf403d_o->release(*window_buf403_buf403d_o, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf410_buf410d_o->release(*window_buf410_buf410d_o, LOCK_29_4_2_0, LOCK_29_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_3_bounds > 0)
      --proc_29_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}