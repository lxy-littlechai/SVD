// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_2/src/6_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_2_0_8032 16
#define LOCK_5_2_1_0 17
#define LOCK_6_2_2_0 50
#define LOCK_6_2_3_0 51
#define LOCK_6_3_0_3936 32
#define LOCK_6_3_1_2080 33
#define LOCK_6_3_2_0 34
#define LOCK_6_3_3_0 35

// Declare shared memory buffers
v4float buf52[9];
v4float buf52d[9];
v4float buf57[9];
v4float buf57d[9];
v4float buf74[9];
v4float buf74d[9];
v4float buf79[9];
v4float buf79d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_i[1] = {{(float*)buf52, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_i[1] = {{(float*)buf57, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf74_buf74d_o[1] = {{(float*)buf74, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf79_buf79d_o[1] = {{(float*)buf79, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_2_bounds = sync_buffer[1];

  while (proc_6_2_bounds)
  {

    // Kernel call : i27:orthogonalize<32>
    window_buf52_buf52d_i->setData(*window_buf52_buf52d_i, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_i->acquire(*window_buf52_buf52d_i, LOCK_5_2_0_8032, LOCK_5_2_1_0, 1-index);
    window_buf57_buf57d_i->setData(*window_buf57_buf57d_i, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_i->acquire(*window_buf57_buf57d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf74_buf74d_o->setData(*window_buf74_buf74d_o, (float*)buf74, (float*)buf74d, 1-index, 0);
    window_buf74_buf74d_o->acquire(*window_buf74_buf74d_o, LOCK_6_3_0_3936, LOCK_6_3_1_2080, 1-index);
    window_buf79_buf79d_o->setData(*window_buf79_buf79d_o, (float*)buf79, (float*)buf79d, 1-index, 0);
    window_buf79_buf79d_o->acquire(*window_buf79_buf79d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    orthogonalize<32>(window_buf52_buf52d_i[0],window_buf57_buf57d_i[0],window_buf74_buf74d_o[0],window_buf79_buf79d_o[0]);
    window_buf52_buf52d_i->release(*window_buf52_buf52d_i, LOCK_5_2_0_8032, LOCK_5_2_1_0, 1-index);
    window_buf57_buf57d_i->release(*window_buf57_buf57d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf74_buf74d_o->release(*window_buf74_buf74d_o, LOCK_6_3_0_3936, LOCK_6_3_1_2080, 1-index);
    window_buf79_buf79d_o->release(*window_buf79_buf79d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_2_bounds > 0)
      --proc_6_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}