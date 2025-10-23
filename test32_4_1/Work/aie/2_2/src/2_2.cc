// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/2_2/src/2_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_2_0_0 16
#define LOCK_1_2_1_0 17
#define LOCK_2_2_2_0 50
#define LOCK_2_2_3_0 51
#define LOCK_2_3_2_8032 34
#define LOCK_2_3_3_0 35
#define LOCK_2_3_0_0 32
#define LOCK_2_3_1_0 33

// Declare shared memory buffers
v4float buf16[9];
v4float buf16d[9];
v4float buf21[9];
v4float buf21d[9];
v4float buf24[9];
v4float buf24d[9];
v4float buf29[9];
v4float buf29d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_i[1] = {{(float*)buf16, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_i[1] = {{(float*)buf21, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_o[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_o[1] = {{(float*)buf29, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_2_bounds = sync_buffer[1];

  while (proc_2_2_bounds)
  {

    // Kernel call : i9:orthogonalize<32>
    window_buf16_buf16d_i->setData(*window_buf16_buf16d_i, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_i->acquire(*window_buf16_buf16d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf21_buf21d_i->setData(*window_buf21_buf21d_i, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_i->acquire(*window_buf21_buf21d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf24_buf24d_o->setData(*window_buf24_buf24d_o, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_o->acquire(*window_buf24_buf24d_o, LOCK_2_3_2_8032, LOCK_2_3_3_0, 1-index);
    window_buf29_buf29d_o->setData(*window_buf29_buf29d_o, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_o->acquire(*window_buf29_buf29d_o, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    orthogonalize<32>(window_buf16_buf16d_i[0],window_buf21_buf21d_i[0],window_buf24_buf24d_o[0],window_buf29_buf29d_o[0]);
    window_buf16_buf16d_i->release(*window_buf16_buf16d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf21_buf21d_i->release(*window_buf21_buf21d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf24_buf24d_o->release(*window_buf24_buf24d_o, LOCK_2_3_2_8032, LOCK_2_3_3_0, 1-index);
    window_buf29_buf29d_o->release(*window_buf29_buf29d_o, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_2_bounds > 0)
      --proc_2_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}