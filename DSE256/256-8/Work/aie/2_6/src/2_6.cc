// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/2_6/src/2_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_6_0_0 16
#define LOCK_1_6_1_0 17
#define LOCK_2_6_2_0 50
#define LOCK_2_6_3_0 51
#define LOCK_2_7_0_0 32
#define LOCK_2_7_1_0 33
#define LOCK_2_7_2_0 34
#define LOCK_2_7_3_0 35

// Declare shared memory buffers
v4float buf105[65];
v4float buf105d[65];
v4float buf115[65];
v4float buf115d[65];
v4float buf121[65];
v4float buf121d[65];
v4float buf99[65];
v4float buf99d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf99_buf99d_i[1] = {{(float*)buf99, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf105_buf105d_i[1] = {{(float*)buf105, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf115_buf115d_o[1] = {{(float*)buf115, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf121_buf121d_o[1] = {{(float*)buf121, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_6_bounds = sync_buffer[1];

  while (proc_2_6_bounds)
  {

    // Kernel call : i49:orthogonalize<256>
    window_buf99_buf99d_i->setData(*window_buf99_buf99d_i, (float*)buf99, (float*)buf99d, 1-index, 0);
    window_buf99_buf99d_i->acquire(*window_buf99_buf99d_i, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf105_buf105d_i->setData(*window_buf105_buf105d_i, (float*)buf105, (float*)buf105d, 1-index, 0);
    window_buf105_buf105d_i->acquire(*window_buf105_buf105d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf115_buf115d_o->setData(*window_buf115_buf115d_o, (float*)buf115, (float*)buf115d, 1-index, 0);
    window_buf115_buf115d_o->acquire(*window_buf115_buf115d_o, LOCK_2_7_0_0, LOCK_2_7_1_0, 1-index);
    window_buf121_buf121d_o->setData(*window_buf121_buf121d_o, (float*)buf121, (float*)buf121d, 1-index, 0);
    window_buf121_buf121d_o->acquire(*window_buf121_buf121d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    orthogonalize<256>(window_buf99_buf99d_i[0],window_buf105_buf105d_i[0],window_buf115_buf115d_o[0],window_buf121_buf121d_o[0]);
    window_buf99_buf99d_i->release(*window_buf99_buf99d_i, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf105_buf105d_i->release(*window_buf105_buf105d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf115_buf115d_o->release(*window_buf115_buf115d_o, LOCK_2_7_0_0, LOCK_2_7_1_0, 1-index);
    window_buf121_buf121d_o->release(*window_buf121_buf121d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_6_bounds > 0)
      --proc_2_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}