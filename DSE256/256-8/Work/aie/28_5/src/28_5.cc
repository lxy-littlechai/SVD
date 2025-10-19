// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_5/src/28_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_5_0_0 16
#define LOCK_28_5_1_0 17
#define LOCK_29_5_2_0 50
#define LOCK_29_5_3_0 51
#define LOCK_28_4_0_0 0
#define LOCK_28_4_1_0 1
#define LOCK_28_4_2_0 2
#define LOCK_28_4_3_0 3

// Declare shared memory buffers
v4float buf389[65];
v4float buf389d[65];
v4float buf393[65];
v4float buf393d[65];
v4float buf405[65];
v4float buf405d[65];
v4float buf409[65];
v4float buf409d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf389_buf389d_i[1] = {{(float*)buf389, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf393_buf393d_i[1] = {{(float*)buf393, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf405_buf405d_o[1] = {{(float*)buf405, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf409_buf409d_o[1] = {{(float*)buf409, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_5_bounds = sync_buffer[1];

  while (proc_28_5_bounds)
  {

    // Kernel call : i196:orthogonalize<256>
    window_buf389_buf389d_i->setData(*window_buf389_buf389d_i, (float*)buf389, (float*)buf389d, 1-index, 0);
    window_buf389_buf389d_i->acquire(*window_buf389_buf389d_i, LOCK_28_5_0_0, LOCK_28_5_1_0, 1-index);
    window_buf393_buf393d_i->setData(*window_buf393_buf393d_i, (float*)buf393, (float*)buf393d, 1-index, 0);
    window_buf393_buf393d_i->acquire(*window_buf393_buf393d_i, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    window_buf405_buf405d_o->setData(*window_buf405_buf405d_o, (float*)buf405, (float*)buf405d, 1-index, 0);
    window_buf405_buf405d_o->acquire(*window_buf405_buf405d_o, LOCK_28_4_0_0, LOCK_28_4_1_0, 1-index);
    window_buf409_buf409d_o->setData(*window_buf409_buf409d_o, (float*)buf409, (float*)buf409d, 1-index, 0);
    window_buf409_buf409d_o->acquire(*window_buf409_buf409d_o, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    orthogonalize<256>(window_buf389_buf389d_i[0],window_buf393_buf393d_i[0],window_buf405_buf405d_o[0],window_buf409_buf409d_o[0]);
    window_buf389_buf389d_i->release(*window_buf389_buf389d_i, LOCK_28_5_0_0, LOCK_28_5_1_0, 1-index);
    window_buf393_buf393d_i->release(*window_buf393_buf393d_i, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    window_buf405_buf405d_o->release(*window_buf405_buf405d_o, LOCK_28_4_0_0, LOCK_28_4_1_0, 1-index);
    window_buf409_buf409d_o->release(*window_buf409_buf409d_o, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_5_bounds > 0)
      --proc_28_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}