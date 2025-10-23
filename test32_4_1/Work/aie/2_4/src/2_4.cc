// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/2_4/src/2_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_4_0_0 16
#define LOCK_1_4_1_0 17
#define LOCK_2_4_2_0 50
#define LOCK_2_4_3_0 51
#define LOCK_2_5_0_8032 32
#define LOCK_2_5_1_0 33
#define LOCK_2_5_2_0 34
#define LOCK_2_5_3_0 35

// Declare shared memory buffers
v4float buf33[9];
v4float buf33d[9];
v4float buf38[9];
v4float buf38d[9];
v4float buf41[9];
v4float buf41d[9];
v4float buf46[9];
v4float buf46d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_i[1] = {{(float*)buf33, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_i[1] = {{(float*)buf38, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_o[1] = {{(float*)buf41, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_o[1] = {{(float*)buf46, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_4_bounds = sync_buffer[1];

  while (proc_2_4_bounds)
  {

    // Kernel call : i17:orthogonalize<32>
    window_buf33_buf33d_i->setData(*window_buf33_buf33d_i, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_i->acquire(*window_buf33_buf33d_i, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf38_buf38d_i->setData(*window_buf38_buf38d_i, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_i->acquire(*window_buf38_buf38d_i, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    window_buf41_buf41d_o->setData(*window_buf41_buf41d_o, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_o->acquire(*window_buf41_buf41d_o, LOCK_2_5_0_8032, LOCK_2_5_1_0, 1-index);
    window_buf46_buf46d_o->setData(*window_buf46_buf46d_o, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_o->acquire(*window_buf46_buf46d_o, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    orthogonalize<32>(window_buf33_buf33d_i[0],window_buf38_buf38d_i[0],window_buf41_buf41d_o[0],window_buf46_buf46d_o[0]);
    window_buf33_buf33d_i->release(*window_buf33_buf33d_i, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf38_buf38d_i->release(*window_buf38_buf38d_i, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    window_buf41_buf41d_o->release(*window_buf41_buf41d_o, LOCK_2_5_0_8032, LOCK_2_5_1_0, 1-index);
    window_buf46_buf46d_o->release(*window_buf46_buf46d_o, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_4_bounds > 0)
      --proc_2_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}