// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_4/src/26_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_4_0_0 16
#define LOCK_25_4_1_0 17
#define LOCK_26_4_2_0 50
#define LOCK_26_4_3_0 51
#define LOCK_26_5_0_8032 32
#define LOCK_26_5_1_0 33
#define LOCK_26_5_2_0 34
#define LOCK_26_5_3_0 35

// Declare shared memory buffers
v4float buf411[9];
v4float buf411d[9];
v4float buf416[9];
v4float buf416d[9];
v4float buf433[9];
v4float buf433d[9];
v4float buf438[9];
v4float buf438d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf411_buf411d_i[1] = {{(float*)buf411, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf416_buf416d_i[1] = {{(float*)buf416, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf433_buf433d_o[1] = {{(float*)buf433, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf438_buf438d_o[1] = {{(float*)buf438, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_4_bounds = sync_buffer[1];

  while (proc_26_4_bounds)
  {

    // Kernel call : i199:orthogonalize<32>
    window_buf411_buf411d_i->setData(*window_buf411_buf411d_i, (float*)buf411, (float*)buf411d, 1-index, 0);
    window_buf411_buf411d_i->acquire(*window_buf411_buf411d_i, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf416_buf416d_i->setData(*window_buf416_buf416d_i, (float*)buf416, (float*)buf416d, 1-index, 0);
    window_buf416_buf416d_i->acquire(*window_buf416_buf416d_i, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    window_buf433_buf433d_o->setData(*window_buf433_buf433d_o, (float*)buf433, (float*)buf433d, 1-index, 0);
    window_buf433_buf433d_o->acquire(*window_buf433_buf433d_o, LOCK_26_5_0_8032, LOCK_26_5_1_0, 1-index);
    window_buf438_buf438d_o->setData(*window_buf438_buf438d_o, (float*)buf438, (float*)buf438d, 1-index, 0);
    window_buf438_buf438d_o->acquire(*window_buf438_buf438d_o, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    orthogonalize<32>(window_buf411_buf411d_i[0],window_buf416_buf416d_i[0],window_buf433_buf433d_o[0],window_buf438_buf438d_o[0]);
    window_buf411_buf411d_i->release(*window_buf411_buf411d_i, LOCK_25_4_0_0, LOCK_25_4_1_0, 1-index);
    window_buf416_buf416d_i->release(*window_buf416_buf416d_i, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    window_buf433_buf433d_o->release(*window_buf433_buf433d_o, LOCK_26_5_0_8032, LOCK_26_5_1_0, 1-index);
    window_buf438_buf438d_o->release(*window_buf438_buf438d_o, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
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