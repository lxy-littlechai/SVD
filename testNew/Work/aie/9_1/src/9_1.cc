// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/9_1/src/9_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_1_2_0 18
#define LOCK_9_1_3_0 19
#define LOCK_10_1_0_0 48
#define LOCK_10_1_1_1056 49
#define LOCK_9_2_0_7136 32
#define LOCK_9_2_1_0 33
#define LOCK_9_2_2_0 34
#define LOCK_9_2_3_0 35

// Declare shared memory buffers
v4float buf73dr[65];
v4float buf73r[65];
v4float buf79[65];
v4float buf79d[65];
v4float buf81[65];
v4float buf81d[65];
v4float buf87[65];
v4float buf87d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf79_buf79d_i[1] = {{(float*)buf79, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73r_buf73dr_i[1] = {{(float*)buf73r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_o[1] = {{(float*)buf87, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81_buf81d_o[1] = {{(float*)buf81, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_1_bounds = sync_buffer[1];

  while (proc_9_1_bounds)
  {

    // Kernel call : i43:orthogonalize<256>
    window_buf79_buf79d_i->setData(*window_buf79_buf79d_i, (float*)buf79, (float*)buf79d, 1-index, 0);
    window_buf79_buf79d_i->acquire(*window_buf79_buf79d_i, LOCK_9_1_2_0, LOCK_9_1_3_0, 1-index);
    window_buf73r_buf73dr_i->setData(*window_buf73r_buf73dr_i, (float*)buf73r, (float*)buf73dr, 1-index, 0);
    window_buf73r_buf73dr_i->acquire(*window_buf73r_buf73dr_i, LOCK_10_1_0_0, LOCK_10_1_1_1056, 1-index);
    window_buf87_buf87d_o->setData(*window_buf87_buf87d_o, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_o->acquire(*window_buf87_buf87d_o, LOCK_9_2_0_7136, LOCK_9_2_1_0, 1-index);
    window_buf81_buf81d_o->setData(*window_buf81_buf81d_o, (float*)buf81, (float*)buf81d, 1-index, 0);
    window_buf81_buf81d_o->acquire(*window_buf81_buf81d_o, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    orthogonalize<256>(window_buf79_buf79d_i[0],window_buf73r_buf73dr_i[0],window_buf87_buf87d_o[0],window_buf81_buf81d_o[0]);
    window_buf79_buf79d_i->release(*window_buf79_buf79d_i, LOCK_9_1_2_0, LOCK_9_1_3_0, 1-index);
    window_buf73r_buf73dr_i->release(*window_buf73r_buf73dr_i, LOCK_10_1_0_0, LOCK_10_1_1_1056, 1-index);
    window_buf87_buf87d_o->release(*window_buf87_buf87d_o, LOCK_9_2_0_7136, LOCK_9_2_1_0, 1-index);
    window_buf81_buf81d_o->release(*window_buf81_buf81d_o, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_1_bounds > 0)
      --proc_9_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}