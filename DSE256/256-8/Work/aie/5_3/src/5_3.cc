// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/5_3/src/5_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_3_0_7136 16
#define LOCK_5_3_1_0 17
#define LOCK_6_3_2_0 50
#define LOCK_6_3_3_0 51
#define LOCK_5_4_0_7136 32
#define LOCK_5_4_1_0 33
#define LOCK_5_4_2_0 34
#define LOCK_5_4_3_0 35

// Declare shared memory buffers
v4float buf54[65];
v4float buf54d[65];
v4float buf61[65];
v4float buf61d[65];
v4float buf70[65];
v4float buf70d[65];
v4float buf77[65];
v4float buf77d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_i[1] = {{(float*)buf54, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_i[1] = {{(float*)buf61, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf70_buf70d_o[1] = {{(float*)buf70, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf77_buf77d_o[1] = {{(float*)buf77, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_3_bounds = sync_buffer[1];

  while (proc_5_3_bounds)
  {

    // Kernel call : i28:orthogonalize<256>
    window_buf54_buf54d_i->setData(*window_buf54_buf54d_i, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_i->acquire(*window_buf54_buf54d_i, LOCK_5_3_0_7136, LOCK_5_3_1_0, 1-index);
    window_buf61_buf61d_i->setData(*window_buf61_buf61d_i, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_i->acquire(*window_buf61_buf61d_i, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    window_buf70_buf70d_o->setData(*window_buf70_buf70d_o, (float*)buf70, (float*)buf70d, 1-index, 0);
    window_buf70_buf70d_o->acquire(*window_buf70_buf70d_o, LOCK_5_4_0_7136, LOCK_5_4_1_0, 1-index);
    window_buf77_buf77d_o->setData(*window_buf77_buf77d_o, (float*)buf77, (float*)buf77d, 1-index, 0);
    window_buf77_buf77d_o->acquire(*window_buf77_buf77d_o, LOCK_5_4_2_0, LOCK_5_4_3_0, 1-index);
    orthogonalize<256>(window_buf54_buf54d_i[0],window_buf61_buf61d_i[0],window_buf70_buf70d_o[0],window_buf77_buf77d_o[0]);
    window_buf54_buf54d_i->release(*window_buf54_buf54d_i, LOCK_5_3_0_7136, LOCK_5_3_1_0, 1-index);
    window_buf61_buf61d_i->release(*window_buf61_buf61d_i, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    window_buf70_buf70d_o->release(*window_buf70_buf70d_o, LOCK_5_4_0_7136, LOCK_5_4_1_0, 1-index);
    window_buf77_buf77d_o->release(*window_buf77_buf77d_o, LOCK_5_4_2_0, LOCK_5_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_3_bounds > 0)
      --proc_5_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}