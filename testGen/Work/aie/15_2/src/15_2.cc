// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_2/src/15_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_2_0_8032 16
#define LOCK_14_2_1_0 17
#define LOCK_15_2_2_0 50
#define LOCK_15_2_3_0 51
#define LOCK_15_1_0_0 0
#define LOCK_15_1_1_0 1
#define LOCK_15_1_2_0 2
#define LOCK_15_1_3_0 3

// Declare shared memory buffers
v4float buf271[9];
v4float buf271d[9];
v4float buf281[9];
v4float buf281d[9];
v4float buf293[9];
v4float buf293d[9];
v4float buf303[9];
v4float buf303d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf271_buf271d_i[1] = {{(float*)buf271, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf281_buf281d_i[1] = {{(float*)buf281, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf293_buf293d_o[1] = {{(float*)buf293, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf303_buf303d_o[1] = {{(float*)buf303, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_2_bounds = sync_buffer[1];

  while (proc_15_2_bounds)
  {

    // Kernel call : i134:orthogonalize<32>
    window_buf271_buf271d_i->setData(*window_buf271_buf271d_i, (float*)buf271, (float*)buf271d, 1-index, 0);
    window_buf271_buf271d_i->acquire(*window_buf271_buf271d_i, LOCK_14_2_0_8032, LOCK_14_2_1_0, 1-index);
    window_buf281_buf281d_i->setData(*window_buf281_buf281d_i, (float*)buf281, (float*)buf281d, 1-index, 0);
    window_buf281_buf281d_i->acquire(*window_buf281_buf281d_i, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    window_buf293_buf293d_o->setData(*window_buf293_buf293d_o, (float*)buf293, (float*)buf293d, 1-index, 0);
    window_buf293_buf293d_o->acquire(*window_buf293_buf293d_o, LOCK_15_1_0_0, LOCK_15_1_1_0, 1-index);
    window_buf303_buf303d_o->setData(*window_buf303_buf303d_o, (float*)buf303, (float*)buf303d, 1-index, 0);
    window_buf303_buf303d_o->acquire(*window_buf303_buf303d_o, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    orthogonalize<32>(window_buf271_buf271d_i[0],window_buf281_buf281d_i[0],window_buf293_buf293d_o[0],window_buf303_buf303d_o[0]);
    window_buf271_buf271d_i->release(*window_buf271_buf271d_i, LOCK_14_2_0_8032, LOCK_14_2_1_0, 1-index);
    window_buf281_buf281d_i->release(*window_buf281_buf281d_i, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    window_buf293_buf293d_o->release(*window_buf293_buf293d_o, LOCK_15_1_0_0, LOCK_15_1_1_0, 1-index);
    window_buf303_buf303d_o->release(*window_buf303_buf303d_o, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_2_bounds > 0)
      --proc_15_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}