// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_6/src/16_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_6_0_3936 16
#define LOCK_15_6_1_5952 17
#define LOCK_16_6_2_0 50
#define LOCK_16_6_3_0 51
#define LOCK_16_5_2_8032 2
#define LOCK_16_5_3_0 3
#define LOCK_16_5_0_0 0
#define LOCK_16_5_1_0 1

// Declare shared memory buffers
v4float buf177[9];
v4float buf177d[9];
v4float buf191[9];
v4float buf191d[9];
v4float buf199[9];
v4float buf199d[9];
v4float buf213[9];
v4float buf213d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_i[1] = {{(float*)buf177, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf191_buf191d_i[1] = {{(float*)buf191, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf199_buf199d_o[1] = {{(float*)buf199, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_o[1] = {{(float*)buf213, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_6_bounds = sync_buffer[1];

  while (proc_16_6_bounds)
  {

    // Kernel call : i91:orthogonalize<32>
    window_buf177_buf177d_i->setData(*window_buf177_buf177d_i, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_i->acquire(*window_buf177_buf177d_i, LOCK_15_6_0_3936, LOCK_15_6_1_5952, 1-index);
    window_buf191_buf191d_i->setData(*window_buf191_buf191d_i, (float*)buf191, (float*)buf191d, 1-index, 0);
    window_buf191_buf191d_i->acquire(*window_buf191_buf191d_i, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    window_buf199_buf199d_o->setData(*window_buf199_buf199d_o, (float*)buf199, (float*)buf199d, 1-index, 0);
    window_buf199_buf199d_o->acquire(*window_buf199_buf199d_o, LOCK_16_5_2_8032, LOCK_16_5_3_0, 1-index);
    window_buf213_buf213d_o->setData(*window_buf213_buf213d_o, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_o->acquire(*window_buf213_buf213d_o, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    orthogonalize<32>(window_buf177_buf177d_i[0],window_buf191_buf191d_i[0],window_buf199_buf199d_o[0],window_buf213_buf213d_o[0]);
    window_buf177_buf177d_i->release(*window_buf177_buf177d_i, LOCK_15_6_0_3936, LOCK_15_6_1_5952, 1-index);
    window_buf191_buf191d_i->release(*window_buf191_buf191d_i, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    window_buf199_buf199d_o->release(*window_buf199_buf199d_o, LOCK_16_5_2_8032, LOCK_16_5_3_0, 1-index);
    window_buf213_buf213d_o->release(*window_buf213_buf213d_o, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_6_bounds > 0)
      --proc_16_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}