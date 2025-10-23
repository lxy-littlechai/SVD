// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_5/src/15_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_5_2_8032 18
#define LOCK_15_5_3_0 19
#define LOCK_16_5_0_0 48
#define LOCK_16_5_1_0 49
#define LOCK_15_4_0_0 0
#define LOCK_15_4_1_0 1
#define LOCK_15_4_2_0 2
#define LOCK_15_4_3_0 3

// Declare shared memory buffers
v4float buf201[9];
v4float buf201d[9];
v4float buf213[9];
v4float buf213d[9];
v4float buf223[9];
v4float buf223d[9];
v4float buf235[9];
v4float buf235d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201_buf201d_i[1] = {{(float*)buf201, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_i[1] = {{(float*)buf213, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf223_buf223d_o[1] = {{(float*)buf223, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf235_buf235d_o[1] = {{(float*)buf235, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_5_bounds = sync_buffer[1];

  while (proc_15_5_bounds)
  {

    // Kernel call : i101:orthogonalize<32>
    window_buf201_buf201d_i->setData(*window_buf201_buf201d_i, (float*)buf201, (float*)buf201d, 1-index, 0);
    window_buf201_buf201d_i->acquire(*window_buf201_buf201d_i, LOCK_15_5_2_8032, LOCK_15_5_3_0, 1-index);
    window_buf213_buf213d_i->setData(*window_buf213_buf213d_i, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_i->acquire(*window_buf213_buf213d_i, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    window_buf223_buf223d_o->setData(*window_buf223_buf223d_o, (float*)buf223, (float*)buf223d, 1-index, 0);
    window_buf223_buf223d_o->acquire(*window_buf223_buf223d_o, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf235_buf235d_o->setData(*window_buf235_buf235d_o, (float*)buf235, (float*)buf235d, 1-index, 0);
    window_buf235_buf235d_o->acquire(*window_buf235_buf235d_o, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    orthogonalize<32>(window_buf201_buf201d_i[0],window_buf213_buf213d_i[0],window_buf223_buf223d_o[0],window_buf235_buf235d_o[0]);
    window_buf201_buf201d_i->release(*window_buf201_buf201d_i, LOCK_15_5_2_8032, LOCK_15_5_3_0, 1-index);
    window_buf213_buf213d_i->release(*window_buf213_buf213d_i, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    window_buf223_buf223d_o->release(*window_buf223_buf223d_o, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf235_buf235d_o->release(*window_buf235_buf235d_o, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_5_bounds > 0)
      --proc_15_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}