// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/8_1/src/8_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_1_2_0 18
#define LOCK_8_1_3_0 19
#define LOCK_9_1_0_0 48
#define LOCK_9_1_1_1056 49
#define LOCK_8_2_0_7136 32
#define LOCK_8_2_1_0 33
#define LOCK_8_2_2_0 34
#define LOCK_8_2_3_0 35

// Declare shared memory buffers
v4float buf17dr[65];
v4float buf17r[65];
v4float buf31[65];
v4float buf31d[65];
v4float buf33[65];
v4float buf33d[65];
v4float buf47[65];
v4float buf47d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_i[1] = {{(float*)buf31, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17r_buf17dr_i[1] = {{(float*)buf17r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_o[1] = {{(float*)buf47, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_o[1] = {{(float*)buf33, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_1_bounds = sync_buffer[1];

  while (proc_8_1_bounds)
  {

    // Kernel call : i15:orthogonalize<256>
    window_buf31_buf31d_i->setData(*window_buf31_buf31d_i, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_i->acquire(*window_buf31_buf31d_i, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    window_buf17r_buf17dr_i->setData(*window_buf17r_buf17dr_i, (float*)buf17r, (float*)buf17dr, 1-index, 0);
    window_buf17r_buf17dr_i->acquire(*window_buf17r_buf17dr_i, LOCK_9_1_0_0, LOCK_9_1_1_1056, 1-index);
    window_buf47_buf47d_o->setData(*window_buf47_buf47d_o, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_o->acquire(*window_buf47_buf47d_o, LOCK_8_2_0_7136, LOCK_8_2_1_0, 1-index);
    window_buf33_buf33d_o->setData(*window_buf33_buf33d_o, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_o->acquire(*window_buf33_buf33d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    orthogonalize<256>(window_buf31_buf31d_i[0],window_buf17r_buf17dr_i[0],window_buf47_buf47d_o[0],window_buf33_buf33d_o[0]);
    window_buf31_buf31d_i->release(*window_buf31_buf31d_i, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    window_buf17r_buf17dr_i->release(*window_buf17r_buf17dr_i, LOCK_9_1_0_0, LOCK_9_1_1_1056, 1-index);
    window_buf47_buf47d_o->release(*window_buf47_buf47d_o, LOCK_8_2_0_7136, LOCK_8_2_1_0, 1-index);
    window_buf33_buf33d_o->release(*window_buf33_buf33d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_1_bounds > 0)
      --proc_8_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}