// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_5/src/21_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_5_2_8032 18
#define LOCK_21_5_3_0 19
#define LOCK_22_5_0_0 48
#define LOCK_22_5_1_0 49
#define LOCK_21_4_0_3936 0
#define LOCK_21_4_1_5952 1
#define LOCK_21_4_2_2080 2
#define LOCK_21_4_3_0 3

// Declare shared memory buffers
v4float buf206[9];
v4float buf206d[9];
v4float buf212[9];
v4float buf212d[9];
v4float buf228[9];
v4float buf228d[9];
v4float buf234[9];
v4float buf234d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_i[1] = {{(float*)buf206, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_i[1] = {{(float*)buf212, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228_buf228d_o[1] = {{(float*)buf228, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf234_buf234d_o[1] = {{(float*)buf234, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_5_bounds = sync_buffer[1];

  while (proc_21_5_bounds)
  {

    // Kernel call : i107:orthogonalize<32>
    window_buf206_buf206d_i->setData(*window_buf206_buf206d_i, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_i->acquire(*window_buf206_buf206d_i, LOCK_21_5_2_8032, LOCK_21_5_3_0, 1-index);
    window_buf212_buf212d_i->setData(*window_buf212_buf212d_i, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_i->acquire(*window_buf212_buf212d_i, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    window_buf228_buf228d_o->setData(*window_buf228_buf228d_o, (float*)buf228, (float*)buf228d, 1-index, 0);
    window_buf228_buf228d_o->acquire(*window_buf228_buf228d_o, LOCK_21_4_0_3936, LOCK_21_4_1_5952, 1-index);
    window_buf234_buf234d_o->setData(*window_buf234_buf234d_o, (float*)buf234, (float*)buf234d, 1-index, 0);
    window_buf234_buf234d_o->acquire(*window_buf234_buf234d_o, LOCK_21_4_2_2080, LOCK_21_4_3_0, 1-index);
    orthogonalize<32>(window_buf206_buf206d_i[0],window_buf212_buf212d_i[0],window_buf228_buf228d_o[0],window_buf234_buf234d_o[0]);
    window_buf206_buf206d_i->release(*window_buf206_buf206d_i, LOCK_21_5_2_8032, LOCK_21_5_3_0, 1-index);
    window_buf212_buf212d_i->release(*window_buf212_buf212d_i, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    window_buf228_buf228d_o->release(*window_buf228_buf228d_o, LOCK_21_4_0_3936, LOCK_21_4_1_5952, 1-index);
    window_buf234_buf234d_o->release(*window_buf234_buf234d_o, LOCK_21_4_2_2080, LOCK_21_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_5_bounds > 0)
      --proc_21_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}