// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_2/src/18_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_2_0_8032 16
#define LOCK_17_2_1_0 17
#define LOCK_18_2_2_0 50
#define LOCK_18_2_3_0 51
#define LOCK_18_1_0_3936 0
#define LOCK_18_1_1_2080 1
#define LOCK_18_1_2_0 2
#define LOCK_18_1_3_0 3

// Declare shared memory buffers
v4float buf265[9];
v4float buf265d[9];
v4float buf282[9];
v4float buf282d[9];
v4float buf287[9];
v4float buf287d[9];
v4float buf304[9];
v4float buf304d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf265_buf265d_i[1] = {{(float*)buf265, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf282_buf282d_i[1] = {{(float*)buf282, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf287_buf287d_o[1] = {{(float*)buf287, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf304_buf304d_o[1] = {{(float*)buf304, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_2_bounds = sync_buffer[1];

  while (proc_18_2_bounds)
  {

    // Kernel call : i137:orthogonalize<32>
    window_buf265_buf265d_i->setData(*window_buf265_buf265d_i, (float*)buf265, (float*)buf265d, 1-index, 0);
    window_buf265_buf265d_i->acquire(*window_buf265_buf265d_i, LOCK_17_2_0_8032, LOCK_17_2_1_0, 1-index);
    window_buf282_buf282d_i->setData(*window_buf282_buf282d_i, (float*)buf282, (float*)buf282d, 1-index, 0);
    window_buf282_buf282d_i->acquire(*window_buf282_buf282d_i, LOCK_18_2_2_0, LOCK_18_2_3_0, 1-index);
    window_buf287_buf287d_o->setData(*window_buf287_buf287d_o, (float*)buf287, (float*)buf287d, 1-index, 0);
    window_buf287_buf287d_o->acquire(*window_buf287_buf287d_o, LOCK_18_1_0_3936, LOCK_18_1_1_2080, 1-index);
    window_buf304_buf304d_o->setData(*window_buf304_buf304d_o, (float*)buf304, (float*)buf304d, 1-index, 0);
    window_buf304_buf304d_o->acquire(*window_buf304_buf304d_o, LOCK_18_1_2_0, LOCK_18_1_3_0, 1-index);
    orthogonalize<32>(window_buf265_buf265d_i[0],window_buf282_buf282d_i[0],window_buf287_buf287d_o[0],window_buf304_buf304d_o[0]);
    window_buf265_buf265d_i->release(*window_buf265_buf265d_i, LOCK_17_2_0_8032, LOCK_17_2_1_0, 1-index);
    window_buf282_buf282d_i->release(*window_buf282_buf282d_i, LOCK_18_2_2_0, LOCK_18_2_3_0, 1-index);
    window_buf287_buf287d_o->release(*window_buf287_buf287d_o, LOCK_18_1_0_3936, LOCK_18_1_1_2080, 1-index);
    window_buf304_buf304d_o->release(*window_buf304_buf304d_o, LOCK_18_1_2_0, LOCK_18_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_2_bounds > 0)
      --proc_18_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}