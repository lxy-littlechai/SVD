// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/17_4/src/17_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_4_0_0 16
#define LOCK_16_4_1_0 17
#define LOCK_17_4_0_1056 48
#define LOCK_17_4_1_1056 49
#define LOCK_17_3_0_7136 0
#define LOCK_17_3_1_0 1
#define LOCK_17_3_2_0 2
#define LOCK_17_3_3_0 3

// Declare shared memory buffers
v4float buf164[65];
v4float buf164d[65];
v4float buf175[65];
v4float buf175d[65];
v4float buf180[65];
v4float buf180d[65];
v4float buf191[65];
v4float buf191d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf164_buf164d_i[1] = {{(float*)buf164, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf175_buf175d_i[1] = {{(float*)buf175, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_o[1] = {{(float*)buf180, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf191_buf191d_o[1] = {{(float*)buf191, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_4_bounds = sync_buffer[1];

  while (proc_17_4_bounds)
  {

    // Kernel call : i87:orthogonalize<256>
    window_buf164_buf164d_i->setData(*window_buf164_buf164d_i, (float*)buf164, (float*)buf164d, 1-index, 0);
    window_buf164_buf164d_i->acquire(*window_buf164_buf164d_i, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf175_buf175d_i->setData(*window_buf175_buf175d_i, (float*)buf175, (float*)buf175d, 1-index, 0);
    window_buf175_buf175d_i->acquire(*window_buf175_buf175d_i, LOCK_17_4_0_1056, LOCK_17_4_1_1056, 1-index);
    window_buf180_buf180d_o->setData(*window_buf180_buf180d_o, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_o->acquire(*window_buf180_buf180d_o, LOCK_17_3_0_7136, LOCK_17_3_1_0, 1-index);
    window_buf191_buf191d_o->setData(*window_buf191_buf191d_o, (float*)buf191, (float*)buf191d, 1-index, 0);
    window_buf191_buf191d_o->acquire(*window_buf191_buf191d_o, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    orthogonalize<256>(window_buf164_buf164d_i[0],window_buf175_buf175d_i[0],window_buf180_buf180d_o[0],window_buf191_buf191d_o[0]);
    window_buf164_buf164d_i->release(*window_buf164_buf164d_i, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf175_buf175d_i->release(*window_buf175_buf175d_i, LOCK_17_4_0_1056, LOCK_17_4_1_1056, 1-index);
    window_buf180_buf180d_o->release(*window_buf180_buf180d_o, LOCK_17_3_0_7136, LOCK_17_3_1_0, 1-index);
    window_buf191_buf191d_o->release(*window_buf191_buf191d_o, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_4_bounds > 0)
      --proc_17_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}