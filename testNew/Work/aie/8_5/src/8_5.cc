// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/8_5/src/8_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_5_0_7136 16
#define LOCK_8_5_1_0 17
#define LOCK_9_5_0_0 48
#define LOCK_9_5_1_0 49
#define LOCK_8_6_0_0 32
#define LOCK_8_6_1_0 33
#define LOCK_8_6_2_0 34
#define LOCK_8_6_3_0 35

// Declare shared memory buffers
v4float buf104[65];
v4float buf104d[65];
v4float buf106[65];
v4float buf106d[65];
v4float buf112[65];
v4float buf112d[65];
v4float buf114[65];
v4float buf114d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf104_buf104d_i[1] = {{(float*)buf104, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_i[1] = {{(float*)buf106, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112_buf112d_o[1] = {{(float*)buf112, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf114_buf114d_o[1] = {{(float*)buf114, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_5_bounds = sync_buffer[1];

  while (proc_8_5_bounds)
  {

    // Kernel call : i58:orthogonalize<256>
    window_buf104_buf104d_i->setData(*window_buf104_buf104d_i, (float*)buf104, (float*)buf104d, 1-index, 0);
    window_buf104_buf104d_i->acquire(*window_buf104_buf104d_i, LOCK_8_5_0_7136, LOCK_8_5_1_0, 1-index);
    window_buf106_buf106d_i->setData(*window_buf106_buf106d_i, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_i->acquire(*window_buf106_buf106d_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf112_buf112d_o->setData(*window_buf112_buf112d_o, (float*)buf112, (float*)buf112d, 1-index, 0);
    window_buf112_buf112d_o->acquire(*window_buf112_buf112d_o, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf114_buf114d_o->setData(*window_buf114_buf114d_o, (float*)buf114, (float*)buf114d, 1-index, 0);
    window_buf114_buf114d_o->acquire(*window_buf114_buf114d_o, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    orthogonalize<256>(window_buf104_buf104d_i[0],window_buf106_buf106d_i[0],window_buf112_buf112d_o[0],window_buf114_buf114d_o[0]);
    window_buf104_buf104d_i->release(*window_buf104_buf104d_i, LOCK_8_5_0_7136, LOCK_8_5_1_0, 1-index);
    window_buf106_buf106d_i->release(*window_buf106_buf106d_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf112_buf112d_o->release(*window_buf112_buf112d_o, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf114_buf114d_o->release(*window_buf114_buf114d_o, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_5_bounds > 0)
      --proc_8_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}