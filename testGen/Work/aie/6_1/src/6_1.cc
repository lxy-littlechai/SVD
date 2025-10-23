// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_1/src/6_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_1_2_4256 18
#define LOCK_6_1_3_8032 19
#define LOCK_7_1_0_8032 48
#define LOCK_7_1_1_160 49
#define LOCK_6_2_0_8032 32
#define LOCK_6_2_1_0 33
#define LOCK_6_2_2_0 34
#define LOCK_6_2_3_0 35

// Declare shared memory buffers
v4float buf32[9];
v4float buf32d[9];
v4float buf35[9];
v4float buf35d[9];
v4float buf54[9];
v4float buf54d[9];
v4float buf57[9];
v4float buf57d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_i[1] = {{(float*)buf32, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35_buf35d_i[1] = {{(float*)buf35, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_o[1] = {{(float*)buf54, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_o[1] = {{(float*)buf57, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_1_bounds = sync_buffer[1];

  while (proc_6_1_bounds)
  {

    // Kernel call : i16:orthogonalize<32>
    window_buf32_buf32d_i->setData(*window_buf32_buf32d_i, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_i->acquire(*window_buf32_buf32d_i, LOCK_6_1_2_4256, LOCK_6_1_3_8032, 1-index);
    window_buf35_buf35d_i->setData(*window_buf35_buf35d_i, (float*)buf35, (float*)buf35d, 1-index, 0);
    window_buf35_buf35d_i->acquire(*window_buf35_buf35d_i, LOCK_7_1_0_8032, LOCK_7_1_1_160, 1-index);
    window_buf54_buf54d_o->setData(*window_buf54_buf54d_o, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_o->acquire(*window_buf54_buf54d_o, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf57_buf57d_o->setData(*window_buf57_buf57d_o, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_o->acquire(*window_buf57_buf57d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    orthogonalize<32>(window_buf32_buf32d_i[0],window_buf35_buf35d_i[0],window_buf54_buf54d_o[0],window_buf57_buf57d_o[0]);
    window_buf32_buf32d_i->release(*window_buf32_buf32d_i, LOCK_6_1_2_4256, LOCK_6_1_3_8032, 1-index);
    window_buf35_buf35d_i->release(*window_buf35_buf35d_i, LOCK_7_1_0_8032, LOCK_7_1_1_160, 1-index);
    window_buf54_buf54d_o->release(*window_buf54_buf54d_o, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf57_buf57d_o->release(*window_buf57_buf57d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_1_bounds > 0)
      --proc_6_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}