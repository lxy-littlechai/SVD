// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/40_1/src/40_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_40_1_0_7136 16
#define LOCK_40_1_1_0 17
#define LOCK_41_1_2_0 50
#define LOCK_41_1_3_0 51
#define LOCK_40_2_0_0 32
#define LOCK_40_2_1_0 33
#define LOCK_40_2_2_0 34
#define LOCK_40_2_3_0 35

// Declare shared memory buffers
v4float buf485[65];
v4float buf485d[65];
v4float buf488[65];
v4float buf488d[65];
v4float buf501[65];
v4float buf501d[65];
v4float buf504[65];
v4float buf504d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf485_buf485d_i[1] = {{(float*)buf485, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf488_buf488d_i[1] = {{(float*)buf488, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf501_buf501d_o[1] = {{(float*)buf501, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf504_buf504d_o[1] = {{(float*)buf504, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_40_1_bounds = sync_buffer[1];

  while (proc_40_1_bounds)
  {

    // Kernel call : i247:orthogonalize<256>
    window_buf485_buf485d_i->setData(*window_buf485_buf485d_i, (float*)buf485, (float*)buf485d, 1-index, 0);
    window_buf485_buf485d_i->acquire(*window_buf485_buf485d_i, LOCK_40_1_0_7136, LOCK_40_1_1_0, 1-index);
    window_buf488_buf488d_i->setData(*window_buf488_buf488d_i, (float*)buf488, (float*)buf488d, 1-index, 0);
    window_buf488_buf488d_i->acquire(*window_buf488_buf488d_i, LOCK_41_1_2_0, LOCK_41_1_3_0, 1-index);
    window_buf501_buf501d_o->setData(*window_buf501_buf501d_o, (float*)buf501, (float*)buf501d, 1-index, 0);
    window_buf501_buf501d_o->acquire(*window_buf501_buf501d_o, LOCK_40_2_0_0, LOCK_40_2_1_0, 1-index);
    window_buf504_buf504d_o->setData(*window_buf504_buf504d_o, (float*)buf504, (float*)buf504d, 1-index, 0);
    window_buf504_buf504d_o->acquire(*window_buf504_buf504d_o, LOCK_40_2_2_0, LOCK_40_2_3_0, 1-index);
    orthogonalize<256>(window_buf485_buf485d_i[0],window_buf488_buf488d_i[0],window_buf501_buf501d_o[0],window_buf504_buf504d_o[0]);
    window_buf485_buf485d_i->release(*window_buf485_buf485d_i, LOCK_40_1_0_7136, LOCK_40_1_1_0, 1-index);
    window_buf488_buf488d_i->release(*window_buf488_buf488d_i, LOCK_41_1_2_0, LOCK_41_1_3_0, 1-index);
    window_buf501_buf501d_o->release(*window_buf501_buf501d_o, LOCK_40_2_0_0, LOCK_40_2_1_0, 1-index);
    window_buf504_buf504d_o->release(*window_buf504_buf504d_o, LOCK_40_2_2_0, LOCK_40_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_40_1_bounds > 0)
      --proc_40_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}