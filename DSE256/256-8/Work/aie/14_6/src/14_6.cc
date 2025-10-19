// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/14_6/src/14_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_6_0_0 16
#define LOCK_13_6_1_0 17
#define LOCK_14_6_2_0 50
#define LOCK_14_6_3_0 51
#define LOCK_14_5_0_0 0
#define LOCK_14_5_1_0 1
#define LOCK_14_5_2_0 2
#define LOCK_14_5_3_0 3

// Declare shared memory buffers
v4float buf128[65];
v4float buf128d[65];
v4float buf140[65];
v4float buf140d[65];
v4float buf144[65];
v4float buf144d[65];
v4float buf156[65];
v4float buf156d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_i[1] = {{(float*)buf128, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_i[1] = {{(float*)buf140, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_o[1] = {{(float*)buf144, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf156_buf156d_o[1] = {{(float*)buf156, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_6_bounds = sync_buffer[1];

  while (proc_14_6_bounds)
  {

    // Kernel call : i68:orthogonalize<256>
    window_buf128_buf128d_i->setData(*window_buf128_buf128d_i, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_i->acquire(*window_buf128_buf128d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf140_buf140d_i->setData(*window_buf140_buf140d_i, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_i->acquire(*window_buf140_buf140d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf144_buf144d_o->setData(*window_buf144_buf144d_o, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_o->acquire(*window_buf144_buf144d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf156_buf156d_o->setData(*window_buf156_buf156d_o, (float*)buf156, (float*)buf156d, 1-index, 0);
    window_buf156_buf156d_o->acquire(*window_buf156_buf156d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    orthogonalize<256>(window_buf128_buf128d_i[0],window_buf140_buf140d_i[0],window_buf144_buf144d_o[0],window_buf156_buf156d_o[0]);
    window_buf128_buf128d_i->release(*window_buf128_buf128d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf140_buf140d_i->release(*window_buf140_buf140d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf144_buf144d_o->release(*window_buf144_buf144d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf156_buf156d_o->release(*window_buf156_buf156d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_6_bounds > 0)
      --proc_14_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}