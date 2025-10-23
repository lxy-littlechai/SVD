// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_3/src/1_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_3_0_7136 16
#define LOCK_1_3_1_0 17
#define LOCK_2_3_0_0 48
#define LOCK_2_3_1_0 49
#define LOCK_1_4_0_0 32
#define LOCK_1_4_1_0 33
#define LOCK_1_4_2_0 34
#define LOCK_1_4_3_0 35

// Declare shared memory buffers
v4float buf25[65];
v4float buf25d[65];
v4float buf29[65];
v4float buf29d[65];
v4float buf33[65];
v4float buf33d[65];
v4float buf37[65];
v4float buf37d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_i[1] = {{(float*)buf25, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_i[1] = {{(float*)buf29, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_o[1] = {{(float*)buf33, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_o[1] = {{(float*)buf37, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_3_bounds = sync_buffer[1];

  while (proc_1_3_bounds)
  {

    // Kernel call : i12:orthogonalize<256>
    window_buf25_buf25d_i->setData(*window_buf25_buf25d_i, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_i->acquire(*window_buf25_buf25d_i, LOCK_1_3_0_7136, LOCK_1_3_1_0, 1-index);
    window_buf29_buf29d_i->setData(*window_buf29_buf29d_i, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_i->acquire(*window_buf29_buf29d_i, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf33_buf33d_o->setData(*window_buf33_buf33d_o, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_o->acquire(*window_buf33_buf33d_o, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf37_buf37d_o->setData(*window_buf37_buf37d_o, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_o->acquire(*window_buf37_buf37d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    orthogonalize<256>(window_buf25_buf25d_i[0],window_buf29_buf29d_i[0],window_buf33_buf33d_o[0],window_buf37_buf37d_o[0]);
    window_buf25_buf25d_i->release(*window_buf25_buf25d_i, LOCK_1_3_0_7136, LOCK_1_3_1_0, 1-index);
    window_buf29_buf29d_i->release(*window_buf29_buf29d_i, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf33_buf33d_o->release(*window_buf33_buf33d_o, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf37_buf37d_o->release(*window_buf37_buf37d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_3_bounds > 0)
      --proc_1_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}