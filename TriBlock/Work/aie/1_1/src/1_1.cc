// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/TriBlock/./Work/aie/1_1/src/1_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_1_0_7136 16
#define LOCK_1_1_1_0 17
#define LOCK_2_1_0_7136 48
#define LOCK_2_1_1_0 49
#define LOCK_1_2_0_0 32
#define LOCK_1_2_1_0 33
#define LOCK_1_2_2_0 34
#define LOCK_1_2_3_0 35

// Declare shared memory buffers
v4float buf10[65];
v4float buf10d[65];
v4float buf4[65];
v4float buf4d[65];
v4float buf6[65];
v4float buf6d[65];
v4float buf8[65];
v4float buf8d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf4_buf4d_i[1] = {{(float*)buf4, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf6_buf6d_i[1] = {{(float*)buf6, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_o[1] = {{(float*)buf8, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf10_buf10d_o[1] = {{(float*)buf10, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_1_bounds = sync_buffer[1];

  while (proc_1_1_bounds)
  {

    // Kernel call : i2:orthogonalize<256>
    window_buf4_buf4d_i->setData(*window_buf4_buf4d_i, (float*)buf4, (float*)buf4d, 1-index, 0);
    window_buf4_buf4d_i->acquire(*window_buf4_buf4d_i, LOCK_1_1_0_7136, LOCK_1_1_1_0, 1-index);
    window_buf6_buf6d_i->setData(*window_buf6_buf6d_i, (float*)buf6, (float*)buf6d, 1-index, 0);
    window_buf6_buf6d_i->acquire(*window_buf6_buf6d_i, LOCK_2_1_0_7136, LOCK_2_1_1_0, 1-index);
    window_buf8_buf8d_o->setData(*window_buf8_buf8d_o, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_o->acquire(*window_buf8_buf8d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf10_buf10d_o->setData(*window_buf10_buf10d_o, (float*)buf10, (float*)buf10d, 1-index, 0);
    window_buf10_buf10d_o->acquire(*window_buf10_buf10d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    orthogonalize<256>(window_buf4_buf4d_i[0],window_buf6_buf6d_i[0],window_buf8_buf8d_o[0],window_buf10_buf10d_o[0]);
    window_buf4_buf4d_i->release(*window_buf4_buf4d_i, LOCK_1_1_0_7136, LOCK_1_1_1_0, 1-index);
    window_buf6_buf6d_i->release(*window_buf6_buf6d_i, LOCK_2_1_0_7136, LOCK_2_1_1_0, 1-index);
    window_buf8_buf8d_o->release(*window_buf8_buf8d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf10_buf10d_o->release(*window_buf10_buf10d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_1_bounds > 0)
      --proc_1_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}