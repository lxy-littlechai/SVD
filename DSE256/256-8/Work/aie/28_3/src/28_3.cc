// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_3/src/28_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_3_0_7136 16
#define LOCK_28_3_1_0 17
#define LOCK_29_3_2_0 50
#define LOCK_29_3_3_0 51
#define LOCK_28_2_0_7136 0
#define LOCK_28_2_1_0 1
#define LOCK_28_2_2_0 2
#define LOCK_28_2_3_0 3

// Declare shared memory buffers
v4float buf423[65];
v4float buf423d[65];
v4float buf427[65];
v4float buf427d[65];
v4float buf439[65];
v4float buf439d[65];
v4float buf443[65];
v4float buf443d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf423_buf423d_i[1] = {{(float*)buf423, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf427_buf427d_i[1] = {{(float*)buf427, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf439_buf439d_o[1] = {{(float*)buf439, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf443_buf443d_o[1] = {{(float*)buf443, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_3_bounds = sync_buffer[1];

  while (proc_28_3_bounds)
  {

    // Kernel call : i212:orthogonalize<256>
    window_buf423_buf423d_i->setData(*window_buf423_buf423d_i, (float*)buf423, (float*)buf423d, 1-index, 0);
    window_buf423_buf423d_i->acquire(*window_buf423_buf423d_i, LOCK_28_3_0_7136, LOCK_28_3_1_0, 1-index);
    window_buf427_buf427d_i->setData(*window_buf427_buf427d_i, (float*)buf427, (float*)buf427d, 1-index, 0);
    window_buf427_buf427d_i->acquire(*window_buf427_buf427d_i, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    window_buf439_buf439d_o->setData(*window_buf439_buf439d_o, (float*)buf439, (float*)buf439d, 1-index, 0);
    window_buf439_buf439d_o->acquire(*window_buf439_buf439d_o, LOCK_28_2_0_7136, LOCK_28_2_1_0, 1-index);
    window_buf443_buf443d_o->setData(*window_buf443_buf443d_o, (float*)buf443, (float*)buf443d, 1-index, 0);
    window_buf443_buf443d_o->acquire(*window_buf443_buf443d_o, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    orthogonalize<256>(window_buf423_buf423d_i[0],window_buf427_buf427d_i[0],window_buf439_buf439d_o[0],window_buf443_buf443d_o[0]);
    window_buf423_buf423d_i->release(*window_buf423_buf423d_i, LOCK_28_3_0_7136, LOCK_28_3_1_0, 1-index);
    window_buf427_buf427d_i->release(*window_buf427_buf427d_i, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    window_buf439_buf439d_o->release(*window_buf439_buf439d_o, LOCK_28_2_0_7136, LOCK_28_2_1_0, 1-index);
    window_buf443_buf443d_o->release(*window_buf443_buf443d_o, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_3_bounds > 0)
      --proc_28_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}