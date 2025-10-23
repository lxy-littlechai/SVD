// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_2/src/7_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_2_0_8032 16
#define LOCK_6_2_1_0 17
#define LOCK_7_2_2_0 50
#define LOCK_7_2_3_0 51
#define LOCK_7_3_0_8032 32
#define LOCK_7_3_1_0 33
#define LOCK_7_3_2_0 34
#define LOCK_7_3_3_0 35

// Declare shared memory buffers
v4float buf54[9];
v4float buf54d[9];
v4float buf59[9];
v4float buf59d[9];
v4float buf76[9];
v4float buf76d[9];
v4float buf81[9];
v4float buf81d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_i[1] = {{(float*)buf54, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_i[1] = {{(float*)buf59, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf76_buf76d_o[1] = {{(float*)buf76, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81_buf81d_o[1] = {{(float*)buf81, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_2_bounds = sync_buffer[1];

  while (proc_7_2_bounds)
  {

    // Kernel call : i28:orthogonalize<32>
    window_buf54_buf54d_i->setData(*window_buf54_buf54d_i, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_i->acquire(*window_buf54_buf54d_i, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf59_buf59d_i->setData(*window_buf59_buf59d_i, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_i->acquire(*window_buf59_buf59d_i, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    window_buf76_buf76d_o->setData(*window_buf76_buf76d_o, (float*)buf76, (float*)buf76d, 1-index, 0);
    window_buf76_buf76d_o->acquire(*window_buf76_buf76d_o, LOCK_7_3_0_8032, LOCK_7_3_1_0, 1-index);
    window_buf81_buf81d_o->setData(*window_buf81_buf81d_o, (float*)buf81, (float*)buf81d, 1-index, 0);
    window_buf81_buf81d_o->acquire(*window_buf81_buf81d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    orthogonalize<32>(window_buf54_buf54d_i[0],window_buf59_buf59d_i[0],window_buf76_buf76d_o[0],window_buf81_buf81d_o[0]);
    window_buf54_buf54d_i->release(*window_buf54_buf54d_i, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf59_buf59d_i->release(*window_buf59_buf59d_i, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    window_buf76_buf76d_o->release(*window_buf76_buf76d_o, LOCK_7_3_0_8032, LOCK_7_3_1_0, 1-index);
    window_buf81_buf81d_o->release(*window_buf81_buf81d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_2_bounds > 0)
      --proc_7_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}