// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_6/src/6_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_6_0_3936 16
#define LOCK_5_6_1_2080 17
#define LOCK_6_6_2_0 50
#define LOCK_6_6_3_0 51
#define LOCK_6_7_0_0 32
#define LOCK_6_7_1_0 33
#define LOCK_6_7_2_0 34
#define LOCK_6_7_3_0 35

// Declare shared memory buffers
v4float buf136[9];
v4float buf136d[9];
v4float buf149[9];
v4float buf149d[9];
v4float buf158[9];
v4float buf158d[9];
v4float buf171[9];
v4float buf171d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf136_buf136d_i[1] = {{(float*)buf136, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_i[1] = {{(float*)buf149, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf158_buf158d_o[1] = {{(float*)buf158, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171_buf171d_o[1] = {{(float*)buf171, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_6_bounds = sync_buffer[1];

  while (proc_6_6_bounds)
  {

    // Kernel call : i71:orthogonalize<32>
    window_buf136_buf136d_i->setData(*window_buf136_buf136d_i, (float*)buf136, (float*)buf136d, 1-index, 0);
    window_buf136_buf136d_i->acquire(*window_buf136_buf136d_i, LOCK_5_6_0_3936, LOCK_5_6_1_2080, 1-index);
    window_buf149_buf149d_i->setData(*window_buf149_buf149d_i, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_i->acquire(*window_buf149_buf149d_i, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    window_buf158_buf158d_o->setData(*window_buf158_buf158d_o, (float*)buf158, (float*)buf158d, 1-index, 0);
    window_buf158_buf158d_o->acquire(*window_buf158_buf158d_o, LOCK_6_7_0_0, LOCK_6_7_1_0, 1-index);
    window_buf171_buf171d_o->setData(*window_buf171_buf171d_o, (float*)buf171, (float*)buf171d, 1-index, 0);
    window_buf171_buf171d_o->acquire(*window_buf171_buf171d_o, LOCK_6_7_2_0, LOCK_6_7_3_0, 1-index);
    orthogonalize<32>(window_buf136_buf136d_i[0],window_buf149_buf149d_i[0],window_buf158_buf158d_o[0],window_buf171_buf171d_o[0]);
    window_buf136_buf136d_i->release(*window_buf136_buf136d_i, LOCK_5_6_0_3936, LOCK_5_6_1_2080, 1-index);
    window_buf149_buf149d_i->release(*window_buf149_buf149d_i, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    window_buf158_buf158d_o->release(*window_buf158_buf158d_o, LOCK_6_7_0_0, LOCK_6_7_1_0, 1-index);
    window_buf171_buf171d_o->release(*window_buf171_buf171d_o, LOCK_6_7_2_0, LOCK_6_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_6_bounds > 0)
      --proc_6_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}