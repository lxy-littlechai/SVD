// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/5_1/src/5_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_1_2_160 18
#define LOCK_5_1_3_160 19
#define LOCK_6_1_0_160 48
#define LOCK_6_1_1_160 49
#define LOCK_5_2_0_8032 32
#define LOCK_5_2_1_0 33
#define LOCK_5_2_2_0 34
#define LOCK_5_2_3_0 35

// Declare shared memory buffers
v4float buf30[9];
v4float buf30d[9];
v4float buf33[9];
v4float buf33d[9];
v4float buf52[9];
v4float buf52d[9];
v4float buf55[9];
v4float buf55d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_i[1] = {{(float*)buf30, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_i[1] = {{(float*)buf33, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_o[1] = {{(float*)buf52, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_o[1] = {{(float*)buf55, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_1_bounds = sync_buffer[1];

  while (proc_5_1_bounds)
  {

    // Kernel call : i15:orthogonalize<32>
    window_buf30_buf30d_i->setData(*window_buf30_buf30d_i, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_i->acquire(*window_buf30_buf30d_i, LOCK_5_1_2_160, LOCK_5_1_3_160, 1-index);
    window_buf33_buf33d_i->setData(*window_buf33_buf33d_i, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_i->acquire(*window_buf33_buf33d_i, LOCK_6_1_0_160, LOCK_6_1_1_160, 1-index);
    window_buf52_buf52d_o->setData(*window_buf52_buf52d_o, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_o->acquire(*window_buf52_buf52d_o, LOCK_5_2_0_8032, LOCK_5_2_1_0, 1-index);
    window_buf55_buf55d_o->setData(*window_buf55_buf55d_o, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_o->acquire(*window_buf55_buf55d_o, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    orthogonalize<32>(window_buf30_buf30d_i[0],window_buf33_buf33d_i[0],window_buf52_buf52d_o[0],window_buf55_buf55d_o[0]);
    window_buf30_buf30d_i->release(*window_buf30_buf30d_i, LOCK_5_1_2_160, LOCK_5_1_3_160, 1-index);
    window_buf33_buf33d_i->release(*window_buf33_buf33d_i, LOCK_6_1_0_160, LOCK_6_1_1_160, 1-index);
    window_buf52_buf52d_o->release(*window_buf52_buf52d_o, LOCK_5_2_0_8032, LOCK_5_2_1_0, 1-index);
    window_buf55_buf55d_o->release(*window_buf55_buf55d_o, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_1_bounds > 0)
      --proc_5_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}