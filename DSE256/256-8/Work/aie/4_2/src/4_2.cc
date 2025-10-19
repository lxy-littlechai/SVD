// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/4_2/src/4_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_2_0_0 16
#define LOCK_3_2_1_0 17
#define LOCK_4_2_2_0 50
#define LOCK_4_2_3_0 51
#define LOCK_4_3_0_3040 32
#define LOCK_4_3_1_2080 33
#define LOCK_4_3_2_0 34
#define LOCK_4_3_3_0 35

// Declare shared memory buffers
v4float buf36[65];
v4float buf36d[65];
v4float buf41[65];
v4float buf41d[65];
v4float buf52[65];
v4float buf52d[65];
v4float buf57[65];
v4float buf57d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_i[1] = {{(float*)buf36, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_i[1] = {{(float*)buf41, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_o[1] = {{(float*)buf52, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_o[1] = {{(float*)buf57, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_2_bounds = sync_buffer[1];

  while (proc_4_2_bounds)
  {

    // Kernel call : i19:orthogonalize<256>
    window_buf36_buf36d_i->setData(*window_buf36_buf36d_i, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_i->acquire(*window_buf36_buf36d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf41_buf41d_i->setData(*window_buf41_buf41d_i, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_i->acquire(*window_buf41_buf41d_i, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    window_buf52_buf52d_o->setData(*window_buf52_buf52d_o, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_o->acquire(*window_buf52_buf52d_o, LOCK_4_3_0_3040, LOCK_4_3_1_2080, 1-index);
    window_buf57_buf57d_o->setData(*window_buf57_buf57d_o, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_o->acquire(*window_buf57_buf57d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    orthogonalize<256>(window_buf36_buf36d_i[0],window_buf41_buf41d_i[0],window_buf52_buf52d_o[0],window_buf57_buf57d_o[0]);
    window_buf36_buf36d_i->release(*window_buf36_buf36d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf41_buf41d_i->release(*window_buf41_buf41d_i, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    window_buf52_buf52d_o->release(*window_buf52_buf52d_o, LOCK_4_3_0_3040, LOCK_4_3_1_2080, 1-index);
    window_buf57_buf57d_o->release(*window_buf57_buf57d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_2_bounds > 0)
      --proc_4_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}