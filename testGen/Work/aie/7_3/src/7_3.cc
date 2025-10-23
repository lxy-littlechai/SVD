// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_3/src/7_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_3_0_8032 16
#define LOCK_7_3_1_0 17
#define LOCK_8_3_2_0 50
#define LOCK_8_3_3_0 51
#define LOCK_7_4_0_8032 32
#define LOCK_7_4_1_0 33
#define LOCK_7_4_2_0 34
#define LOCK_7_4_3_0 35

// Declare shared memory buffers
v4float buf105[9];
v4float buf105d[9];
v4float buf76[9];
v4float buf76d[9];
v4float buf83[9];
v4float buf83d[9];
v4float buf98[9];
v4float buf98d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf76_buf76d_i[1] = {{(float*)buf76, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_i[1] = {{(float*)buf83, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf98_buf98d_o[1] = {{(float*)buf98, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf105_buf105d_o[1] = {{(float*)buf105, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_3_bounds = sync_buffer[1];

  while (proc_7_3_bounds)
  {

    // Kernel call : i39:orthogonalize<32>
    window_buf76_buf76d_i->setData(*window_buf76_buf76d_i, (float*)buf76, (float*)buf76d, 1-index, 0);
    window_buf76_buf76d_i->acquire(*window_buf76_buf76d_i, LOCK_7_3_0_8032, LOCK_7_3_1_0, 1-index);
    window_buf83_buf83d_i->setData(*window_buf83_buf83d_i, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_i->acquire(*window_buf83_buf83d_i, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    window_buf98_buf98d_o->setData(*window_buf98_buf98d_o, (float*)buf98, (float*)buf98d, 1-index, 0);
    window_buf98_buf98d_o->acquire(*window_buf98_buf98d_o, LOCK_7_4_0_8032, LOCK_7_4_1_0, 1-index);
    window_buf105_buf105d_o->setData(*window_buf105_buf105d_o, (float*)buf105, (float*)buf105d, 1-index, 0);
    window_buf105_buf105d_o->acquire(*window_buf105_buf105d_o, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    orthogonalize<32>(window_buf76_buf76d_i[0],window_buf83_buf83d_i[0],window_buf98_buf98d_o[0],window_buf105_buf105d_o[0]);
    window_buf76_buf76d_i->release(*window_buf76_buf76d_i, LOCK_7_3_0_8032, LOCK_7_3_1_0, 1-index);
    window_buf83_buf83d_i->release(*window_buf83_buf83d_i, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    window_buf98_buf98d_o->release(*window_buf98_buf98d_o, LOCK_7_4_0_8032, LOCK_7_4_1_0, 1-index);
    window_buf105_buf105d_o->release(*window_buf105_buf105d_o, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_3_bounds > 0)
      --proc_7_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}