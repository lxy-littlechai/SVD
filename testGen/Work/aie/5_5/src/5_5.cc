// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/5_5/src/5_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_5_0_0 16
#define LOCK_5_5_1_0 17
#define LOCK_6_5_2_0 50
#define LOCK_6_5_3_0 51
#define LOCK_5_6_0_3936 32
#define LOCK_5_6_1_2080 33
#define LOCK_5_6_2_0 34
#define LOCK_5_6_3_0 35

// Declare shared memory buffers
v4float buf114[9];
v4float buf114d[9];
v4float buf125[9];
v4float buf125d[9];
v4float buf136[9];
v4float buf136d[9];
v4float buf147[9];
v4float buf147d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf114_buf114d_i[1] = {{(float*)buf114, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf125_buf125d_i[1] = {{(float*)buf125, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf136_buf136d_o[1] = {{(float*)buf136, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf147_buf147d_o[1] = {{(float*)buf147, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_5_bounds = sync_buffer[1];

  while (proc_5_5_bounds)
  {

    // Kernel call : i59:orthogonalize<32>
    window_buf114_buf114d_i->setData(*window_buf114_buf114d_i, (float*)buf114, (float*)buf114d, 1-index, 0);
    window_buf114_buf114d_i->acquire(*window_buf114_buf114d_i, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf125_buf125d_i->setData(*window_buf125_buf125d_i, (float*)buf125, (float*)buf125d, 1-index, 0);
    window_buf125_buf125d_i->acquire(*window_buf125_buf125d_i, LOCK_6_5_2_0, LOCK_6_5_3_0, 1-index);
    window_buf136_buf136d_o->setData(*window_buf136_buf136d_o, (float*)buf136, (float*)buf136d, 1-index, 0);
    window_buf136_buf136d_o->acquire(*window_buf136_buf136d_o, LOCK_5_6_0_3936, LOCK_5_6_1_2080, 1-index);
    window_buf147_buf147d_o->setData(*window_buf147_buf147d_o, (float*)buf147, (float*)buf147d, 1-index, 0);
    window_buf147_buf147d_o->acquire(*window_buf147_buf147d_o, LOCK_5_6_2_0, LOCK_5_6_3_0, 1-index);
    orthogonalize<32>(window_buf114_buf114d_i[0],window_buf125_buf125d_i[0],window_buf136_buf136d_o[0],window_buf147_buf147d_o[0]);
    window_buf114_buf114d_i->release(*window_buf114_buf114d_i, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf125_buf125d_i->release(*window_buf125_buf125d_i, LOCK_6_5_2_0, LOCK_6_5_3_0, 1-index);
    window_buf136_buf136d_o->release(*window_buf136_buf136d_o, LOCK_5_6_0_3936, LOCK_5_6_1_2080, 1-index);
    window_buf147_buf147d_o->release(*window_buf147_buf147d_o, LOCK_5_6_2_0, LOCK_5_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_5_bounds > 0)
      --proc_5_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}