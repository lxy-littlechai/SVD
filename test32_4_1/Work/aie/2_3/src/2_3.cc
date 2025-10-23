// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/2_3/src/2_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_3_2_8032 18
#define LOCK_2_3_3_0 19
#define LOCK_3_3_2_0 50
#define LOCK_3_3_3_0 51
#define LOCK_2_4_0_8032 32
#define LOCK_2_4_1_0 33
#define LOCK_2_4_2_0 34
#define LOCK_2_4_3_0 35

// Declare shared memory buffers
v4float buf24[9];
v4float buf24d[9];
v4float buf30[9];
v4float buf30d[9];
v4float buf32[9];
v4float buf32d[9];
v4float buf38[9];
v4float buf38d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_i[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_i[1] = {{(float*)buf30, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_o[1] = {{(float*)buf32, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_o[1] = {{(float*)buf38, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_3_bounds = sync_buffer[1];

  while (proc_2_3_bounds)
  {

    // Kernel call : i13:orthogonalize<32>
    window_buf24_buf24d_i->setData(*window_buf24_buf24d_i, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_i->acquire(*window_buf24_buf24d_i, LOCK_2_3_2_8032, LOCK_2_3_3_0, 1-index);
    window_buf30_buf30d_i->setData(*window_buf30_buf30d_i, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_i->acquire(*window_buf30_buf30d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf32_buf32d_o->setData(*window_buf32_buf32d_o, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_o->acquire(*window_buf32_buf32d_o, LOCK_2_4_0_8032, LOCK_2_4_1_0, 1-index);
    window_buf38_buf38d_o->setData(*window_buf38_buf38d_o, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_o->acquire(*window_buf38_buf38d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    orthogonalize<32>(window_buf24_buf24d_i[0],window_buf30_buf30d_i[0],window_buf32_buf32d_o[0],window_buf38_buf38d_o[0]);
    window_buf24_buf24d_i->release(*window_buf24_buf24d_i, LOCK_2_3_2_8032, LOCK_2_3_3_0, 1-index);
    window_buf30_buf30d_i->release(*window_buf30_buf30d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf32_buf32d_o->release(*window_buf32_buf32d_o, LOCK_2_4_0_8032, LOCK_2_4_1_0, 1-index);
    window_buf38_buf38d_o->release(*window_buf38_buf38d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_3_bounds > 0)
      --proc_2_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}