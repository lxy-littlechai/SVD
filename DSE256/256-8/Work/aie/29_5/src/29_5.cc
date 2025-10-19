// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_5/src/29_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_5_0_7136 16
#define LOCK_29_5_1_0 17
#define LOCK_30_5_2_0 50
#define LOCK_30_5_3_0 51
#define LOCK_29_4_0_0 0
#define LOCK_29_4_1_0 1
#define LOCK_29_4_2_0 2
#define LOCK_29_4_3_0 3

// Declare shared memory buffers
v4float buf387[65];
v4float buf387d[65];
v4float buf395[65];
v4float buf395d[65];
v4float buf403[65];
v4float buf403d[65];
v4float buf411[65];
v4float buf411d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf387_buf387d_i[1] = {{(float*)buf387, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf395_buf395d_i[1] = {{(float*)buf395, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf403_buf403d_o[1] = {{(float*)buf403, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf411_buf411d_o[1] = {{(float*)buf411, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_5_bounds = sync_buffer[1];

  while (proc_29_5_bounds)
  {

    // Kernel call : i197:orthogonalize<256>
    window_buf387_buf387d_i->setData(*window_buf387_buf387d_i, (float*)buf387, (float*)buf387d, 1-index, 0);
    window_buf387_buf387d_i->acquire(*window_buf387_buf387d_i, LOCK_29_5_0_7136, LOCK_29_5_1_0, 1-index);
    window_buf395_buf395d_i->setData(*window_buf395_buf395d_i, (float*)buf395, (float*)buf395d, 1-index, 0);
    window_buf395_buf395d_i->acquire(*window_buf395_buf395d_i, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    window_buf403_buf403d_o->setData(*window_buf403_buf403d_o, (float*)buf403, (float*)buf403d, 1-index, 0);
    window_buf403_buf403d_o->acquire(*window_buf403_buf403d_o, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf411_buf411d_o->setData(*window_buf411_buf411d_o, (float*)buf411, (float*)buf411d, 1-index, 0);
    window_buf411_buf411d_o->acquire(*window_buf411_buf411d_o, LOCK_29_4_2_0, LOCK_29_4_3_0, 1-index);
    orthogonalize<256>(window_buf387_buf387d_i[0],window_buf395_buf395d_i[0],window_buf403_buf403d_o[0],window_buf411_buf411d_o[0]);
    window_buf387_buf387d_i->release(*window_buf387_buf387d_i, LOCK_29_5_0_7136, LOCK_29_5_1_0, 1-index);
    window_buf395_buf395d_i->release(*window_buf395_buf395d_i, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    window_buf403_buf403d_o->release(*window_buf403_buf403d_o, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf411_buf411d_o->release(*window_buf411_buf411d_o, LOCK_29_4_2_0, LOCK_29_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_5_bounds > 0)
      --proc_29_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}