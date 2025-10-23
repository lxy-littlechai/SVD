// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/10_6/src/10_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_6_0_3936 16
#define LOCK_9_6_1_2080 17
#define LOCK_10_6_2_0 50
#define LOCK_10_6_3_0 51
#define LOCK_10_7_0_8032 32
#define LOCK_10_7_1_0 33
#define LOCK_10_7_2_0 34
#define LOCK_10_7_3_0 35

// Declare shared memory buffers
v4float buf144[9];
v4float buf144d[9];
v4float buf148[9];
v4float buf148d[9];
v4float buf166[9];
v4float buf166d[9];
v4float buf170[9];
v4float buf170d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_i[1] = {{(float*)buf144, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf148_buf148d_i[1] = {{(float*)buf148, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166_buf166d_o[1] = {{(float*)buf166, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170_buf170d_o[1] = {{(float*)buf170, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_6_bounds = sync_buffer[1];

  while (proc_10_6_bounds)
  {

    // Kernel call : i75:orthogonalize<32>
    window_buf144_buf144d_i->setData(*window_buf144_buf144d_i, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_i->acquire(*window_buf144_buf144d_i, LOCK_9_6_0_3936, LOCK_9_6_1_2080, 1-index);
    window_buf148_buf148d_i->setData(*window_buf148_buf148d_i, (float*)buf148, (float*)buf148d, 1-index, 0);
    window_buf148_buf148d_i->acquire(*window_buf148_buf148d_i, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    window_buf166_buf166d_o->setData(*window_buf166_buf166d_o, (float*)buf166, (float*)buf166d, 1-index, 0);
    window_buf166_buf166d_o->acquire(*window_buf166_buf166d_o, LOCK_10_7_0_8032, LOCK_10_7_1_0, 1-index);
    window_buf170_buf170d_o->setData(*window_buf170_buf170d_o, (float*)buf170, (float*)buf170d, 1-index, 0);
    window_buf170_buf170d_o->acquire(*window_buf170_buf170d_o, LOCK_10_7_2_0, LOCK_10_7_3_0, 1-index);
    orthogonalize<32>(window_buf144_buf144d_i[0],window_buf148_buf148d_i[0],window_buf166_buf166d_o[0],window_buf170_buf170d_o[0]);
    window_buf144_buf144d_i->release(*window_buf144_buf144d_i, LOCK_9_6_0_3936, LOCK_9_6_1_2080, 1-index);
    window_buf148_buf148d_i->release(*window_buf148_buf148d_i, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    window_buf166_buf166d_o->release(*window_buf166_buf166d_o, LOCK_10_7_0_8032, LOCK_10_7_1_0, 1-index);
    window_buf170_buf170d_o->release(*window_buf170_buf170d_o, LOCK_10_7_2_0, LOCK_10_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_6_bounds > 0)
      --proc_10_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}