// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_4/src/32_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_4_0_8032 16
#define LOCK_31_4_1_0 17
#define LOCK_32_4_2_0 50
#define LOCK_32_4_3_0 51
#define LOCK_32_5_0_0 32
#define LOCK_32_5_1_0 33
#define LOCK_32_5_2_0 34
#define LOCK_32_5_3_0 35

// Declare shared memory buffers
v4float buf399[9];
v4float buf399d[9];
v4float buf404[9];
v4float buf404d[9];
v4float buf421[9];
v4float buf421d[9];
v4float buf426[9];
v4float buf426d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf399_buf399d_i[1] = {{(float*)buf399, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf404_buf404d_i[1] = {{(float*)buf404, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf421_buf421d_o[1] = {{(float*)buf421, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf426_buf426d_o[1] = {{(float*)buf426, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_4_bounds = sync_buffer[1];

  while (proc_32_4_bounds)
  {

    // Kernel call : i205:orthogonalize<32>
    window_buf399_buf399d_i->setData(*window_buf399_buf399d_i, (float*)buf399, (float*)buf399d, 1-index, 0);
    window_buf399_buf399d_i->acquire(*window_buf399_buf399d_i, LOCK_31_4_0_8032, LOCK_31_4_1_0, 1-index);
    window_buf404_buf404d_i->setData(*window_buf404_buf404d_i, (float*)buf404, (float*)buf404d, 1-index, 0);
    window_buf404_buf404d_i->acquire(*window_buf404_buf404d_i, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    window_buf421_buf421d_o->setData(*window_buf421_buf421d_o, (float*)buf421, (float*)buf421d, 1-index, 0);
    window_buf421_buf421d_o->acquire(*window_buf421_buf421d_o, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf426_buf426d_o->setData(*window_buf426_buf426d_o, (float*)buf426, (float*)buf426d, 1-index, 0);
    window_buf426_buf426d_o->acquire(*window_buf426_buf426d_o, LOCK_32_5_2_0, LOCK_32_5_3_0, 1-index);
    orthogonalize<32>(window_buf399_buf399d_i[0],window_buf404_buf404d_i[0],window_buf421_buf421d_o[0],window_buf426_buf426d_o[0]);
    window_buf399_buf399d_i->release(*window_buf399_buf399d_i, LOCK_31_4_0_8032, LOCK_31_4_1_0, 1-index);
    window_buf404_buf404d_i->release(*window_buf404_buf404d_i, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    window_buf421_buf421d_o->release(*window_buf421_buf421d_o, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf426_buf426d_o->release(*window_buf426_buf426d_o, LOCK_32_5_2_0, LOCK_32_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_4_bounds > 0)
      --proc_32_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}