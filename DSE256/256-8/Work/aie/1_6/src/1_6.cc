// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/1_6/src/1_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_7_0_2112 32
#define LOCK_1_7_1_0 33
#define LOCK_1_6_2_0 50
#define LOCK_1_6_3_0 51
#define LOCK_1_7_2_0 34
#define LOCK_1_7_3_1056 35
#define LOCK_1_7_4_0 36
#define LOCK_1_7_5_0 37

// Declare shared memory buffers
v4float buf101dr[65];
v4float buf101r[65];
v4float buf103[65];
v4float buf103d[65];
v4float buf117[65];
v4float buf117d[65];
v4float buf119[65];
v4float buf119d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf101r_buf101dr_i[1] = {{(float*)buf101r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf103_buf103d_i[1] = {{(float*)buf103, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf117_buf117d_o[1] = {{(float*)buf117, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf119_buf119d_o[1] = {{(float*)buf119, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_6_bounds = sync_buffer[1];

  while (proc_1_6_bounds)
  {

    // Kernel call : i48:orthogonalize<256>
    window_buf101r_buf101dr_i->setData(*window_buf101r_buf101dr_i, (float*)buf101r, (float*)buf101dr, 1-index, 0);
    window_buf101r_buf101dr_i->acquire(*window_buf101r_buf101dr_i, LOCK_1_7_0_2112, LOCK_1_7_1_0, 1-index);
    window_buf103_buf103d_i->setData(*window_buf103_buf103d_i, (float*)buf103, (float*)buf103d, 1-index, 0);
    window_buf103_buf103d_i->acquire(*window_buf103_buf103d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf117_buf117d_o->setData(*window_buf117_buf117d_o, (float*)buf117, (float*)buf117d, 1-index, 0);
    window_buf117_buf117d_o->acquire(*window_buf117_buf117d_o, LOCK_1_7_2_0, LOCK_1_7_3_1056, 1-index);
    window_buf119_buf119d_o->setData(*window_buf119_buf119d_o, (float*)buf119, (float*)buf119d, 1-index, 0);
    window_buf119_buf119d_o->acquire(*window_buf119_buf119d_o, LOCK_1_7_4_0, LOCK_1_7_5_0, 1-index);
    orthogonalize<256>(window_buf101r_buf101dr_i[0],window_buf103_buf103d_i[0],window_buf117_buf117d_o[0],window_buf119_buf119d_o[0]);
    window_buf101r_buf101dr_i->release(*window_buf101r_buf101dr_i, LOCK_1_7_0_2112, LOCK_1_7_1_0, 1-index);
    window_buf103_buf103d_i->release(*window_buf103_buf103d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf117_buf117d_o->release(*window_buf117_buf117d_o, LOCK_1_7_2_0, LOCK_1_7_3_1056, 1-index);
    window_buf119_buf119d_o->release(*window_buf119_buf119d_o, LOCK_1_7_4_0, LOCK_1_7_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_6_bounds > 0)
      --proc_1_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}