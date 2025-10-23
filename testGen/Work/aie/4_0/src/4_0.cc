// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_0/src/4_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_0_0_0 48
#define LOCK_4_0_1_0 49
#define LOCK_4_1_4_0 36
#define LOCK_4_1_5_0 37
#define LOCK_4_1_2_4256 34
#define LOCK_4_1_3_8032 35
#define LOCK_4_1_0_160 32
#define LOCK_4_1_1_160 33

// Declare shared memory buffers
v4float buf28[9];
v4float buf28d[9];
v4float buf29[9];
v4float buf29d[9];
v4float buf6[9];
v4float buf6d[9];
v4float buf7[9];
v4float buf7d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf6_buf6d_i[1] = {{(float*)buf6, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf7_buf7d_i[1] = {{(float*)buf7, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_o[1] = {{(float*)buf28, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_o[1] = {{(float*)buf29, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_0_bounds = sync_buffer[1];

  while (proc_4_0_bounds)
  {

    // Kernel call : i3:orthogonalize<32>
    window_buf6_buf6d_i->setData(*window_buf6_buf6d_i, (float*)buf6, (float*)buf6d, 1-index, 0);
    window_buf6_buf6d_i->acquire(*window_buf6_buf6d_i, LOCK_4_0_0_0, LOCK_4_0_1_0, 1-index);
    window_buf7_buf7d_i->setData(*window_buf7_buf7d_i, (float*)buf7, (float*)buf7d, 1-index, 0);
    window_buf7_buf7d_i->acquire(*window_buf7_buf7d_i, LOCK_4_1_4_0, LOCK_4_1_5_0, 1-index);
    window_buf28_buf28d_o->setData(*window_buf28_buf28d_o, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_o->acquire(*window_buf28_buf28d_o, LOCK_4_1_2_4256, LOCK_4_1_3_8032, 1-index);
    window_buf29_buf29d_o->setData(*window_buf29_buf29d_o, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_o->acquire(*window_buf29_buf29d_o, LOCK_4_1_0_160, LOCK_4_1_1_160, 1-index);
    orthogonalize<32>(window_buf6_buf6d_i[0],window_buf7_buf7d_i[0],window_buf28_buf28d_o[0],window_buf29_buf29d_o[0]);
    window_buf6_buf6d_i->release(*window_buf6_buf6d_i, LOCK_4_0_0_0, LOCK_4_0_1_0, 1-index);
    window_buf7_buf7d_i->release(*window_buf7_buf7d_i, LOCK_4_1_4_0, LOCK_4_1_5_0, 1-index);
    window_buf28_buf28d_o->release(*window_buf28_buf28d_o, LOCK_4_1_2_4256, LOCK_4_1_3_8032, 1-index);
    window_buf29_buf29d_o->release(*window_buf29_buf29d_o, LOCK_4_1_0_160, LOCK_4_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_0_bounds > 0)
      --proc_4_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}