// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/21_5/src/21_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_5_0_0 16
#define LOCK_21_5_1_0 17
#define LOCK_22_5_2_0 50
#define LOCK_22_5_3_0 51
#define LOCK_21_6_0_0 32
#define LOCK_21_6_1_0 33
#define LOCK_21_6_2_0 34
#define LOCK_21_6_3_0 35

// Declare shared memory buffers
v4float buf322[65];
v4float buf322d[65];
v4float buf329[65];
v4float buf329d[65];
v4float buf338[65];
v4float buf338d[65];
v4float buf345[65];
v4float buf345d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf322_buf322d_i[1] = {{(float*)buf322, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf329_buf329d_i[1] = {{(float*)buf329, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf338_buf338d_o[1] = {{(float*)buf338, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf345_buf345d_o[1] = {{(float*)buf345, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_5_bounds = sync_buffer[1];

  while (proc_21_5_bounds)
  {

    // Kernel call : i166:orthogonalize<256>
    window_buf322_buf322d_i->setData(*window_buf322_buf322d_i, (float*)buf322, (float*)buf322d, 1-index, 0);
    window_buf322_buf322d_i->acquire(*window_buf322_buf322d_i, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf329_buf329d_i->setData(*window_buf329_buf329d_i, (float*)buf329, (float*)buf329d, 1-index, 0);
    window_buf329_buf329d_i->acquire(*window_buf329_buf329d_i, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    window_buf338_buf338d_o->setData(*window_buf338_buf338d_o, (float*)buf338, (float*)buf338d, 1-index, 0);
    window_buf338_buf338d_o->acquire(*window_buf338_buf338d_o, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf345_buf345d_o->setData(*window_buf345_buf345d_o, (float*)buf345, (float*)buf345d, 1-index, 0);
    window_buf345_buf345d_o->acquire(*window_buf345_buf345d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    orthogonalize<256>(window_buf322_buf322d_i[0],window_buf329_buf329d_i[0],window_buf338_buf338d_o[0],window_buf345_buf345d_o[0]);
    window_buf322_buf322d_i->release(*window_buf322_buf322d_i, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf329_buf329d_i->release(*window_buf329_buf329d_i, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    window_buf338_buf338d_o->release(*window_buf338_buf338d_o, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf345_buf345d_o->release(*window_buf345_buf345d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_5_bounds > 0)
      --proc_21_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}