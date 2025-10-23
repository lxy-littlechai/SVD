// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_4/src/14_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_4_0_7136 16
#define LOCK_13_4_1_0 17
#define LOCK_14_4_0_7136 48
#define LOCK_14_4_1_0 49
#define LOCK_14_5_0_0 32
#define LOCK_14_5_1_0 33
#define LOCK_14_5_2_0 34
#define LOCK_14_5_3_0 35

// Declare shared memory buffers
v4float buf162[65];
v4float buf162d[65];
v4float buf167[65];
v4float buf167d[65];
v4float buf170[65];
v4float buf170d[65];
v4float buf175[65];
v4float buf175d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf162_buf162d_i[1] = {{(float*)buf162, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167_buf167d_i[1] = {{(float*)buf167, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170_buf170d_o[1] = {{(float*)buf170, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf175_buf175d_o[1] = {{(float*)buf175, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_4_bounds = sync_buffer[1];

  while (proc_14_4_bounds)
  {

    // Kernel call : i91:orthogonalize<256>
    window_buf162_buf162d_i->setData(*window_buf162_buf162d_i, (float*)buf162, (float*)buf162d, 1-index, 0);
    window_buf162_buf162d_i->acquire(*window_buf162_buf162d_i, LOCK_13_4_0_7136, LOCK_13_4_1_0, 1-index);
    window_buf167_buf167d_i->setData(*window_buf167_buf167d_i, (float*)buf167, (float*)buf167d, 1-index, 0);
    window_buf167_buf167d_i->acquire(*window_buf167_buf167d_i, LOCK_14_4_0_7136, LOCK_14_4_1_0, 1-index);
    window_buf170_buf170d_o->setData(*window_buf170_buf170d_o, (float*)buf170, (float*)buf170d, 1-index, 0);
    window_buf170_buf170d_o->acquire(*window_buf170_buf170d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf175_buf175d_o->setData(*window_buf175_buf175d_o, (float*)buf175, (float*)buf175d, 1-index, 0);
    window_buf175_buf175d_o->acquire(*window_buf175_buf175d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    orthogonalize<256>(window_buf162_buf162d_i[0],window_buf167_buf167d_i[0],window_buf170_buf170d_o[0],window_buf175_buf175d_o[0]);
    window_buf162_buf162d_i->release(*window_buf162_buf162d_i, LOCK_13_4_0_7136, LOCK_13_4_1_0, 1-index);
    window_buf167_buf167d_i->release(*window_buf167_buf167d_i, LOCK_14_4_0_7136, LOCK_14_4_1_0, 1-index);
    window_buf170_buf170d_o->release(*window_buf170_buf170d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf175_buf175d_o->release(*window_buf175_buf175d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_4_bounds > 0)
      --proc_14_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}