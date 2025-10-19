// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_4/src/26_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_4_0_0 16
#define LOCK_25_4_1_0 17
#define LOCK_26_4_0_7136 48
#define LOCK_26_4_1_0 49
#define LOCK_26_5_0_0 32
#define LOCK_26_5_1_0 33
#define LOCK_26_5_2_0 34
#define LOCK_26_5_3_0 35

// Declare shared memory buffers
v4float buf316[65];
v4float buf316d[65];
v4float buf319[65];
v4float buf319d[65];
v4float buf332[65];
v4float buf332d[65];
v4float buf335[65];
v4float buf335d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf316_buf316d_i[1] = {{(float*)buf316, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf319_buf319d_i[1] = {{(float*)buf319, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf332_buf332d_o[1] = {{(float*)buf332, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf335_buf335d_o[1] = {{(float*)buf335, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_4_bounds = sync_buffer[1];

  while (proc_26_4_bounds)
  {

    // Kernel call : i163:orthogonalize<256>
    window_buf316_buf316d_i->setData(*window_buf316_buf316d_i, (float*)buf316, (float*)buf316d, 1-index, 0);
    window_buf316_buf316d_i->acquire(*window_buf316_buf316d_i, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf319_buf319d_i->setData(*window_buf319_buf319d_i, (float*)buf319, (float*)buf319d, 1-index, 0);
    window_buf319_buf319d_i->acquire(*window_buf319_buf319d_i, LOCK_26_4_0_7136, LOCK_26_4_1_0, 1-index);
    window_buf332_buf332d_o->setData(*window_buf332_buf332d_o, (float*)buf332, (float*)buf332d, 1-index, 0);
    window_buf332_buf332d_o->acquire(*window_buf332_buf332d_o, LOCK_26_5_0_0, LOCK_26_5_1_0, 1-index);
    window_buf335_buf335d_o->setData(*window_buf335_buf335d_o, (float*)buf335, (float*)buf335d, 1-index, 0);
    window_buf335_buf335d_o->acquire(*window_buf335_buf335d_o, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    orthogonalize<256>(window_buf316_buf316d_i[0],window_buf319_buf319d_i[0],window_buf332_buf332d_o[0],window_buf335_buf335d_o[0]);
    window_buf316_buf316d_i->release(*window_buf316_buf316d_i, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf319_buf319d_i->release(*window_buf319_buf319d_i, LOCK_26_4_0_7136, LOCK_26_4_1_0, 1-index);
    window_buf332_buf332d_o->release(*window_buf332_buf332d_o, LOCK_26_5_0_0, LOCK_26_5_1_0, 1-index);
    window_buf335_buf335d_o->release(*window_buf335_buf335d_o, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_4_bounds > 0)
      --proc_26_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}