// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_1/src/9_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_1_2_4256 18
#define LOCK_9_1_3_8032 19
#define LOCK_10_1_0_8032 48
#define LOCK_10_1_1_160 49
#define LOCK_9_2_0_0 32
#define LOCK_9_2_1_0 33
#define LOCK_9_2_2_0 34
#define LOCK_9_2_3_0 35

// Declare shared memory buffers
v4float buf38[9];
v4float buf38d[9];
v4float buf41[9];
v4float buf41d[9];
v4float buf60[9];
v4float buf60d[9];
v4float buf63[9];
v4float buf63d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_i[1] = {{(float*)buf38, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_i[1] = {{(float*)buf41, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf60_buf60d_o[1] = {{(float*)buf60, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_o[1] = {{(float*)buf63, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_1_bounds = sync_buffer[1];

  while (proc_9_1_bounds)
  {

    // Kernel call : i19:orthogonalize<32>
    window_buf38_buf38d_i->setData(*window_buf38_buf38d_i, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_i->acquire(*window_buf38_buf38d_i, LOCK_9_1_2_4256, LOCK_9_1_3_8032, 1-index);
    window_buf41_buf41d_i->setData(*window_buf41_buf41d_i, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_i->acquire(*window_buf41_buf41d_i, LOCK_10_1_0_8032, LOCK_10_1_1_160, 1-index);
    window_buf60_buf60d_o->setData(*window_buf60_buf60d_o, (float*)buf60, (float*)buf60d, 1-index, 0);
    window_buf60_buf60d_o->acquire(*window_buf60_buf60d_o, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf63_buf63d_o->setData(*window_buf63_buf63d_o, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_o->acquire(*window_buf63_buf63d_o, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    orthogonalize<32>(window_buf38_buf38d_i[0],window_buf41_buf41d_i[0],window_buf60_buf60d_o[0],window_buf63_buf63d_o[0]);
    window_buf38_buf38d_i->release(*window_buf38_buf38d_i, LOCK_9_1_2_4256, LOCK_9_1_3_8032, 1-index);
    window_buf41_buf41d_i->release(*window_buf41_buf41d_i, LOCK_10_1_0_8032, LOCK_10_1_1_160, 1-index);
    window_buf60_buf60d_o->release(*window_buf60_buf60d_o, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf63_buf63d_o->release(*window_buf63_buf63d_o, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_1_bounds > 0)
      --proc_9_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}