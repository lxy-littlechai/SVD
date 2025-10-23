// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_2/src/14_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_2_0_320 16
#define LOCK_13_2_1_160 17
#define LOCK_14_2_2_0 50
#define LOCK_14_2_3_0 51
#define LOCK_14_1_0_0 0
#define LOCK_14_1_1_0 1
#define LOCK_14_1_2_0 2
#define LOCK_14_1_3_0 3

// Declare shared memory buffers
v4float buf273[9];
v4float buf273d[9];
v4float buf279[9];
v4float buf279d[9];
v4float buf295[9];
v4float buf295d[9];
v4float buf301[9];
v4float buf301d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf273_buf273d_i[1] = {{(float*)buf273, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf279_buf279d_i[1] = {{(float*)buf279, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf295_buf295d_o[1] = {{(float*)buf295, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf301_buf301d_o[1] = {{(float*)buf301, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_2_bounds = sync_buffer[1];

  while (proc_14_2_bounds)
  {

    // Kernel call : i133:orthogonalize<32>
    window_buf273_buf273d_i->setData(*window_buf273_buf273d_i, (float*)buf273, (float*)buf273d, 1-index, 0);
    window_buf273_buf273d_i->acquire(*window_buf273_buf273d_i, LOCK_13_2_0_320, LOCK_13_2_1_160, 1-index);
    window_buf279_buf279d_i->setData(*window_buf279_buf279d_i, (float*)buf279, (float*)buf279d, 1-index, 0);
    window_buf279_buf279d_i->acquire(*window_buf279_buf279d_i, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf295_buf295d_o->setData(*window_buf295_buf295d_o, (float*)buf295, (float*)buf295d, 1-index, 0);
    window_buf295_buf295d_o->acquire(*window_buf295_buf295d_o, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf301_buf301d_o->setData(*window_buf301_buf301d_o, (float*)buf301, (float*)buf301d, 1-index, 0);
    window_buf301_buf301d_o->acquire(*window_buf301_buf301d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    orthogonalize<32>(window_buf273_buf273d_i[0],window_buf279_buf279d_i[0],window_buf295_buf295d_o[0],window_buf301_buf301d_o[0]);
    window_buf273_buf273d_i->release(*window_buf273_buf273d_i, LOCK_13_2_0_320, LOCK_13_2_1_160, 1-index);
    window_buf279_buf279d_i->release(*window_buf279_buf279d_i, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf295_buf295d_o->release(*window_buf295_buf295d_o, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf301_buf301d_o->release(*window_buf301_buf301d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_2_bounds > 0)
      --proc_14_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}