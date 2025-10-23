// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/21_0/src/21_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_0_0_0 48
#define LOCK_21_0_1_736 49
#define LOCK_20_0_0_0 16
#define LOCK_20_0_1_0 17
#define LOCK_21_1_0_160 32
#define LOCK_21_1_1_160 33
#define LOCK_21_1_2_0 34
#define LOCK_21_1_3_0 35

// Declare shared memory buffers
v4float buf50[9];
v4float buf50d[9];
v4float buf51[9];
v4float buf51d[9];
v4float buf54[9];
v4float buf54d[9];
v4float buf55[9];
v4float buf55d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_i[1] = {{(float*)buf50, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51_buf51d_i[1] = {{(float*)buf51, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_o[1] = {{(float*)buf54, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_o[1] = {{(float*)buf55, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_0_bounds = sync_buffer[1];

  while (proc_21_0_bounds)
  {

    // Kernel call : i43:orthogonalize<32>
    window_buf50_buf50d_i->setData(*window_buf50_buf50d_i, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_i->acquire(*window_buf50_buf50d_i, LOCK_21_0_0_0, LOCK_21_0_1_736, 1-index);
    window_buf51_buf51d_i->setData(*window_buf51_buf51d_i, (float*)buf51, (float*)buf51d, 1-index, 0);
    window_buf51_buf51d_i->acquire(*window_buf51_buf51d_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf54_buf54d_o->setData(*window_buf54_buf54d_o, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_o->acquire(*window_buf54_buf54d_o, LOCK_21_1_0_160, LOCK_21_1_1_160, 1-index);
    window_buf55_buf55d_o->setData(*window_buf55_buf55d_o, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_o->acquire(*window_buf55_buf55d_o, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    orthogonalize<32>(window_buf50_buf50d_i[0],window_buf51_buf51d_i[0],window_buf54_buf54d_o[0],window_buf55_buf55d_o[0]);
    window_buf50_buf50d_i->release(*window_buf50_buf50d_i, LOCK_21_0_0_0, LOCK_21_0_1_736, 1-index);
    window_buf51_buf51d_i->release(*window_buf51_buf51d_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf54_buf54d_o->release(*window_buf54_buf54d_o, LOCK_21_1_0_160, LOCK_21_1_1_160, 1-index);
    window_buf55_buf55d_o->release(*window_buf55_buf55d_o, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_0_bounds > 0)
      --proc_21_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}