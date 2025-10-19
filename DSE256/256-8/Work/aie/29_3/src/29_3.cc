// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_3/src/29_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_3_0_0 16
#define LOCK_29_3_1_0 17
#define LOCK_30_3_2_0 50
#define LOCK_30_3_3_0 51
#define LOCK_29_2_0_7136 0
#define LOCK_29_2_1_0 1
#define LOCK_29_2_2_0 2
#define LOCK_29_2_3_0 3

// Declare shared memory buffers
v4float buf421[65];
v4float buf421d[65];
v4float buf429[65];
v4float buf429d[65];
v4float buf437[65];
v4float buf437d[65];
v4float buf445[65];
v4float buf445d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf421_buf421d_i[1] = {{(float*)buf421, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf429_buf429d_i[1] = {{(float*)buf429, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf437_buf437d_o[1] = {{(float*)buf437, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf445_buf445d_o[1] = {{(float*)buf445, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_3_bounds = sync_buffer[1];

  while (proc_29_3_bounds)
  {

    // Kernel call : i213:orthogonalize<256>
    window_buf421_buf421d_i->setData(*window_buf421_buf421d_i, (float*)buf421, (float*)buf421d, 1-index, 0);
    window_buf421_buf421d_i->acquire(*window_buf421_buf421d_i, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf429_buf429d_i->setData(*window_buf429_buf429d_i, (float*)buf429, (float*)buf429d, 1-index, 0);
    window_buf429_buf429d_i->acquire(*window_buf429_buf429d_i, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    window_buf437_buf437d_o->setData(*window_buf437_buf437d_o, (float*)buf437, (float*)buf437d, 1-index, 0);
    window_buf437_buf437d_o->acquire(*window_buf437_buf437d_o, LOCK_29_2_0_7136, LOCK_29_2_1_0, 1-index);
    window_buf445_buf445d_o->setData(*window_buf445_buf445d_o, (float*)buf445, (float*)buf445d, 1-index, 0);
    window_buf445_buf445d_o->acquire(*window_buf445_buf445d_o, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    orthogonalize<256>(window_buf421_buf421d_i[0],window_buf429_buf429d_i[0],window_buf437_buf437d_o[0],window_buf445_buf445d_o[0]);
    window_buf421_buf421d_i->release(*window_buf421_buf421d_i, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf429_buf429d_i->release(*window_buf429_buf429d_i, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    window_buf437_buf437d_o->release(*window_buf437_buf437d_o, LOCK_29_2_0_7136, LOCK_29_2_1_0, 1-index);
    window_buf445_buf445d_o->release(*window_buf445_buf445d_o, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_3_bounds > 0)
      --proc_29_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}