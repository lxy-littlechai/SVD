// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_3/src/25_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_3_0_7136 16
#define LOCK_25_3_1_0 17
#define LOCK_26_3_0_7136 48
#define LOCK_26_3_1_0 49
#define LOCK_25_4_0_0 32
#define LOCK_25_4_1_0 33
#define LOCK_25_4_2_0 34
#define LOCK_25_4_3_0 35

// Declare shared memory buffers
v4float buf300[65];
v4float buf300d[65];
v4float buf302[65];
v4float buf302d[65];
v4float buf316[65];
v4float buf316d[65];
v4float buf318[65];
v4float buf318d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf300_buf300d_i[1] = {{(float*)buf300, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf302_buf302d_i[1] = {{(float*)buf302, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf316_buf316d_o[1] = {{(float*)buf316, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf318_buf318d_o[1] = {{(float*)buf318, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_3_bounds = sync_buffer[1];

  while (proc_25_3_bounds)
  {

    // Kernel call : i154:orthogonalize<256>
    window_buf300_buf300d_i->setData(*window_buf300_buf300d_i, (float*)buf300, (float*)buf300d, 1-index, 0);
    window_buf300_buf300d_i->acquire(*window_buf300_buf300d_i, LOCK_25_3_0_7136, LOCK_25_3_1_0, 1-index);
    window_buf302_buf302d_i->setData(*window_buf302_buf302d_i, (float*)buf302, (float*)buf302d, 1-index, 0);
    window_buf302_buf302d_i->acquire(*window_buf302_buf302d_i, LOCK_26_3_0_7136, LOCK_26_3_1_0, 1-index);
    window_buf316_buf316d_o->setData(*window_buf316_buf316d_o, (float*)buf316, (float*)buf316d, 1-index, 0);
    window_buf316_buf316d_o->acquire(*window_buf316_buf316d_o, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf318_buf318d_o->setData(*window_buf318_buf318d_o, (float*)buf318, (float*)buf318d, 1-index, 0);
    window_buf318_buf318d_o->acquire(*window_buf318_buf318d_o, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    orthogonalize<256>(window_buf300_buf300d_i[0],window_buf302_buf302d_i[0],window_buf316_buf316d_o[0],window_buf318_buf318d_o[0]);
    window_buf300_buf300d_i->release(*window_buf300_buf300d_i, LOCK_25_3_0_7136, LOCK_25_3_1_0, 1-index);
    window_buf302_buf302d_i->release(*window_buf302_buf302d_i, LOCK_26_3_0_7136, LOCK_26_3_1_0, 1-index);
    window_buf316_buf316d_o->release(*window_buf316_buf316d_o, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf318_buf318d_o->release(*window_buf318_buf318d_o, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_3_bounds > 0)
      --proc_25_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}