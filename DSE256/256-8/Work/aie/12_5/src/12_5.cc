// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/12_5/src/12_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_5_0_0 16
#define LOCK_12_5_1_0 17
#define LOCK_13_5_2_0 50
#define LOCK_13_5_3_0 51
#define LOCK_12_4_0_0 0
#define LOCK_12_4_1_0 1
#define LOCK_12_4_2_0 2
#define LOCK_12_4_3_0 3

// Declare shared memory buffers
v4float buf147[65];
v4float buf147d[65];
v4float buf158[65];
v4float buf158d[65];
v4float buf163[65];
v4float buf163d[65];
v4float buf174[65];
v4float buf174d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf147_buf147d_i[1] = {{(float*)buf147, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf158_buf158d_i[1] = {{(float*)buf158, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163_buf163d_o[1] = {{(float*)buf163, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174_buf174d_o[1] = {{(float*)buf174, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_5_bounds = sync_buffer[1];

  while (proc_12_5_bounds)
  {

    // Kernel call : i74:orthogonalize<256>
    window_buf147_buf147d_i->setData(*window_buf147_buf147d_i, (float*)buf147, (float*)buf147d, 1-index, 0);
    window_buf147_buf147d_i->acquire(*window_buf147_buf147d_i, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf158_buf158d_i->setData(*window_buf158_buf158d_i, (float*)buf158, (float*)buf158d, 1-index, 0);
    window_buf158_buf158d_i->acquire(*window_buf158_buf158d_i, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    window_buf163_buf163d_o->setData(*window_buf163_buf163d_o, (float*)buf163, (float*)buf163d, 1-index, 0);
    window_buf163_buf163d_o->acquire(*window_buf163_buf163d_o, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf174_buf174d_o->setData(*window_buf174_buf174d_o, (float*)buf174, (float*)buf174d, 1-index, 0);
    window_buf174_buf174d_o->acquire(*window_buf174_buf174d_o, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    orthogonalize<256>(window_buf147_buf147d_i[0],window_buf158_buf158d_i[0],window_buf163_buf163d_o[0],window_buf174_buf174d_o[0]);
    window_buf147_buf147d_i->release(*window_buf147_buf147d_i, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf158_buf158d_i->release(*window_buf158_buf158d_i, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    window_buf163_buf163d_o->release(*window_buf163_buf163d_o, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf174_buf174d_o->release(*window_buf174_buf174d_o, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_5_bounds > 0)
      --proc_12_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}