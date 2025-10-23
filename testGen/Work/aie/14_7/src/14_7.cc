// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_7/src/14_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_7_0_5984 48
#define LOCK_15_7_1_0 49
#define LOCK_14_7_2_0 18
#define LOCK_14_7_3_0 19
#define LOCK_14_6_0_3936 0
#define LOCK_14_6_1_2080 1
#define LOCK_14_6_2_0 2
#define LOCK_14_6_3_0 3

// Declare shared memory buffers
v4float buf157dr[9];
v4float buf157r[9];
v4float buf165dr[9];
v4float buf165r[9];
v4float buf179[9];
v4float buf179d[9];
v4float buf187[9];
v4float buf187d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157r_buf157dr_i[1] = {{(float*)buf157r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165r_buf165dr_i[1] = {{(float*)buf165r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_o[1] = {{(float*)buf179, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf187_buf187d_o[1] = {{(float*)buf187, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_7_bounds = sync_buffer[1];

  while (proc_14_7_bounds)
  {

    // Kernel call : i78:orthogonalize<32>
    window_buf157r_buf157dr_i->setData(*window_buf157r_buf157dr_i, (float*)buf157r, (float*)buf157dr, 1-index, 0);
    window_buf157r_buf157dr_i->acquire(*window_buf157r_buf157dr_i, LOCK_15_7_0_5984, LOCK_15_7_1_0, 1-index);
    window_buf165r_buf165dr_i->setData(*window_buf165r_buf165dr_i, (float*)buf165r, (float*)buf165dr, 1-index, 0);
    window_buf165r_buf165dr_i->acquire(*window_buf165r_buf165dr_i, LOCK_14_7_2_0, LOCK_14_7_3_0, 1-index);
    window_buf179_buf179d_o->setData(*window_buf179_buf179d_o, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_o->acquire(*window_buf179_buf179d_o, LOCK_14_6_0_3936, LOCK_14_6_1_2080, 1-index);
    window_buf187_buf187d_o->setData(*window_buf187_buf187d_o, (float*)buf187, (float*)buf187d, 1-index, 0);
    window_buf187_buf187d_o->acquire(*window_buf187_buf187d_o, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    orthogonalize<32>(window_buf157r_buf157dr_i[0],window_buf165r_buf165dr_i[0],window_buf179_buf179d_o[0],window_buf187_buf187d_o[0]);
    window_buf157r_buf157dr_i->release(*window_buf157r_buf157dr_i, LOCK_15_7_0_5984, LOCK_15_7_1_0, 1-index);
    window_buf165r_buf165dr_i->release(*window_buf165r_buf165dr_i, LOCK_14_7_2_0, LOCK_14_7_3_0, 1-index);
    window_buf179_buf179d_o->release(*window_buf179_buf179d_o, LOCK_14_6_0_3936, LOCK_14_6_1_2080, 1-index);
    window_buf187_buf187d_o->release(*window_buf187_buf187d_o, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_7_bounds > 0)
      --proc_14_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}