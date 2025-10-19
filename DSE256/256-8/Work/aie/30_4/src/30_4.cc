// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_4/src/30_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_4_0_0 16
#define LOCK_29_4_1_0 17
#define LOCK_30_4_2_0 50
#define LOCK_30_4_3_0 51
#define LOCK_30_3_0_7136 0
#define LOCK_30_3_1_0 1
#define LOCK_30_3_2_0 2
#define LOCK_30_3_3_0 3

// Declare shared memory buffers
v4float buf403[65];
v4float buf403d[65];
v4float buf413[65];
v4float buf413d[65];
v4float buf419[65];
v4float buf419d[65];
v4float buf429[65];
v4float buf429d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf403_buf403d_i[1] = {{(float*)buf403, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf413_buf413d_i[1] = {{(float*)buf413, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf419_buf419d_o[1] = {{(float*)buf419, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf429_buf429d_o[1] = {{(float*)buf429, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_4_bounds = sync_buffer[1];

  while (proc_30_4_bounds)
  {

    // Kernel call : i206:orthogonalize<256>
    window_buf403_buf403d_i->setData(*window_buf403_buf403d_i, (float*)buf403, (float*)buf403d, 1-index, 0);
    window_buf403_buf403d_i->acquire(*window_buf403_buf403d_i, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf413_buf413d_i->setData(*window_buf413_buf413d_i, (float*)buf413, (float*)buf413d, 1-index, 0);
    window_buf413_buf413d_i->acquire(*window_buf413_buf413d_i, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    window_buf419_buf419d_o->setData(*window_buf419_buf419d_o, (float*)buf419, (float*)buf419d, 1-index, 0);
    window_buf419_buf419d_o->acquire(*window_buf419_buf419d_o, LOCK_30_3_0_7136, LOCK_30_3_1_0, 1-index);
    window_buf429_buf429d_o->setData(*window_buf429_buf429d_o, (float*)buf429, (float*)buf429d, 1-index, 0);
    window_buf429_buf429d_o->acquire(*window_buf429_buf429d_o, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    orthogonalize<256>(window_buf403_buf403d_i[0],window_buf413_buf413d_i[0],window_buf419_buf419d_o[0],window_buf429_buf429d_o[0]);
    window_buf403_buf403d_i->release(*window_buf403_buf403d_i, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf413_buf413d_i->release(*window_buf413_buf413d_i, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    window_buf419_buf419d_o->release(*window_buf419_buf419d_o, LOCK_30_3_0_7136, LOCK_30_3_1_0, 1-index);
    window_buf429_buf429d_o->release(*window_buf429_buf429d_o, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_4_bounds > 0)
      --proc_30_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}