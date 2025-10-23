// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/9_6/src/9_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_6_0_0 16
#define LOCK_8_6_1_0 17
#define LOCK_9_6_0_3040 48
#define LOCK_9_6_1_2080 49
#define LOCK_9_7_0_7136 32
#define LOCK_9_7_1_0 33
#define LOCK_9_7_2_0 34
#define LOCK_9_7_3_0 35

// Declare shared memory buffers
v4float buf112[65];
v4float buf112d[65];
v4float buf119[65];
v4float buf119d[65];
v4float buf120[65];
v4float buf120d[65];
v4float buf127[65];
v4float buf127d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112_buf112d_i[1] = {{(float*)buf112, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf119_buf119d_i[1] = {{(float*)buf119, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf120_buf120d_o[1] = {{(float*)buf120, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf127_buf127d_o[1] = {{(float*)buf127, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_6_bounds = sync_buffer[1];

  while (proc_9_6_bounds)
  {

    // Kernel call : i63:orthogonalize<256>
    window_buf112_buf112d_i->setData(*window_buf112_buf112d_i, (float*)buf112, (float*)buf112d, 1-index, 0);
    window_buf112_buf112d_i->acquire(*window_buf112_buf112d_i, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf119_buf119d_i->setData(*window_buf119_buf119d_i, (float*)buf119, (float*)buf119d, 1-index, 0);
    window_buf119_buf119d_i->acquire(*window_buf119_buf119d_i, LOCK_9_6_0_3040, LOCK_9_6_1_2080, 1-index);
    window_buf120_buf120d_o->setData(*window_buf120_buf120d_o, (float*)buf120, (float*)buf120d, 1-index, 0);
    window_buf120_buf120d_o->acquire(*window_buf120_buf120d_o, LOCK_9_7_0_7136, LOCK_9_7_1_0, 1-index);
    window_buf127_buf127d_o->setData(*window_buf127_buf127d_o, (float*)buf127, (float*)buf127d, 1-index, 0);
    window_buf127_buf127d_o->acquire(*window_buf127_buf127d_o, LOCK_9_7_2_0, LOCK_9_7_3_0, 1-index);
    orthogonalize<256>(window_buf112_buf112d_i[0],window_buf119_buf119d_i[0],window_buf120_buf120d_o[0],window_buf127_buf127d_o[0]);
    window_buf112_buf112d_i->release(*window_buf112_buf112d_i, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf119_buf119d_i->release(*window_buf119_buf119d_i, LOCK_9_6_0_3040, LOCK_9_6_1_2080, 1-index);
    window_buf120_buf120d_o->release(*window_buf120_buf120d_o, LOCK_9_7_0_7136, LOCK_9_7_1_0, 1-index);
    window_buf127_buf127d_o->release(*window_buf127_buf127d_o, LOCK_9_7_2_0, LOCK_9_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_6_bounds > 0)
      --proc_9_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}