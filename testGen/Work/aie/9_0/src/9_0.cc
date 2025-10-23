// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_0/src/9_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_1_4_0 36
#define LOCK_9_1_5_0 37
#define LOCK_9_1_6_0 38
#define LOCK_9_1_7_0 39
#define LOCK_9_1_2_4256 34
#define LOCK_9_1_3_8032 35
#define LOCK_9_1_0_160 32
#define LOCK_9_1_1_160 33

// Declare shared memory buffers
v4float buf16[9];
v4float buf16d[9];
v4float buf17[9];
v4float buf17d[9];
v4float buf38[9];
v4float buf38d[9];
v4float buf39[9];
v4float buf39d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_i[1] = {{(float*)buf16, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17_buf17d_i[1] = {{(float*)buf17, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_o[1] = {{(float*)buf38, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_o[1] = {{(float*)buf39, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_0_bounds = sync_buffer[1];

  while (proc_9_0_bounds)
  {

    // Kernel call : i8:orthogonalize<32>
    window_buf16_buf16d_i->setData(*window_buf16_buf16d_i, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_i->acquire(*window_buf16_buf16d_i, LOCK_9_1_4_0, LOCK_9_1_5_0, 1-index);
    window_buf17_buf17d_i->setData(*window_buf17_buf17d_i, (float*)buf17, (float*)buf17d, 1-index, 0);
    window_buf17_buf17d_i->acquire(*window_buf17_buf17d_i, LOCK_9_1_6_0, LOCK_9_1_7_0, 1-index);
    window_buf38_buf38d_o->setData(*window_buf38_buf38d_o, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_o->acquire(*window_buf38_buf38d_o, LOCK_9_1_2_4256, LOCK_9_1_3_8032, 1-index);
    window_buf39_buf39d_o->setData(*window_buf39_buf39d_o, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_o->acquire(*window_buf39_buf39d_o, LOCK_9_1_0_160, LOCK_9_1_1_160, 1-index);
    orthogonalize<32>(window_buf16_buf16d_i[0],window_buf17_buf17d_i[0],window_buf38_buf38d_o[0],window_buf39_buf39d_o[0]);
    window_buf16_buf16d_i->release(*window_buf16_buf16d_i, LOCK_9_1_4_0, LOCK_9_1_5_0, 1-index);
    window_buf17_buf17d_i->release(*window_buf17_buf17d_i, LOCK_9_1_6_0, LOCK_9_1_7_0, 1-index);
    window_buf38_buf38d_o->release(*window_buf38_buf38d_o, LOCK_9_1_2_4256, LOCK_9_1_3_8032, 1-index);
    window_buf39_buf39d_o->release(*window_buf39_buf39d_o, LOCK_9_1_0_160, LOCK_9_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_0_bounds > 0)
      --proc_9_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}