// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/23_2/src/23_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_2_0_0 16
#define LOCK_22_2_1_0 17
#define LOCK_22_2_2_0 18
#define LOCK_22_2_3_0 19
#define LOCK_23_3_0_7136 32
#define LOCK_23_3_1_0 33
#define LOCK_23_3_2_0 34
#define LOCK_23_3_3_0 35

// Declare shared memory buffers
v4float buf280[65];
v4float buf280d[65];
v4float buf281[65];
v4float buf281d[65];
v4float buf296[65];
v4float buf296d[65];
v4float buf297[65];
v4float buf297d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf280_buf280d_i[1] = {{(float*)buf280, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf281_buf281d_i[1] = {{(float*)buf281, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf296_buf296d_o[1] = {{(float*)buf296, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf297_buf297d_o[1] = {{(float*)buf297, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_2_bounds = sync_buffer[1];

  while (proc_23_2_bounds)
  {

    // Kernel call : i144:orthogonalize<256>
    window_buf280_buf280d_i->setData(*window_buf280_buf280d_i, (float*)buf280, (float*)buf280d, 1-index, 0);
    window_buf280_buf280d_i->acquire(*window_buf280_buf280d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf281_buf281d_i->setData(*window_buf281_buf281d_i, (float*)buf281, (float*)buf281d, 1-index, 0);
    window_buf281_buf281d_i->acquire(*window_buf281_buf281d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf296_buf296d_o->setData(*window_buf296_buf296d_o, (float*)buf296, (float*)buf296d, 1-index, 0);
    window_buf296_buf296d_o->acquire(*window_buf296_buf296d_o, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf297_buf297d_o->setData(*window_buf297_buf297d_o, (float*)buf297, (float*)buf297d, 1-index, 0);
    window_buf297_buf297d_o->acquire(*window_buf297_buf297d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    orthogonalize<256>(window_buf280_buf280d_i[0],window_buf281_buf281d_i[0],window_buf296_buf296d_o[0],window_buf297_buf297d_o[0]);
    window_buf280_buf280d_i->release(*window_buf280_buf280d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf281_buf281d_i->release(*window_buf281_buf281d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf296_buf296d_o->release(*window_buf296_buf296d_o, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf297_buf297d_o->release(*window_buf297_buf297d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_2_bounds > 0)
      --proc_23_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}