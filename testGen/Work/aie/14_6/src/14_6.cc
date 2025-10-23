// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_6/src/14_6.cc
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
v4float buf181[9];
v4float buf181d[9];
v4float buf187[9];
v4float buf187d[9];
v4float buf203[9];
v4float buf203d[9];
v4float buf209[9];
v4float buf209d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf181_buf181d_i[1] = {{(float*)buf181, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf187_buf187d_i[1] = {{(float*)buf187, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf203_buf203d_o[1] = {{(float*)buf203, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209_buf209d_o[1] = {{(float*)buf209, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_6_bounds = sync_buffer[1];

  while (proc_14_6_bounds)
  {

    // Kernel call : i89:orthogonalize<32>
    window_buf181_buf181d_i->setData(*window_buf181_buf181d_i, (float*)buf181, (float*)buf181d, 1-index, 0);
    window_buf181_buf181d_i->acquire(*window_buf181_buf181d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf187_buf187d_i->setData(*window_buf187_buf187d_i, (float*)buf187, (float*)buf187d, 1-index, 0);
    window_buf187_buf187d_i->acquire(*window_buf187_buf187d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf203_buf203d_o->setData(*window_buf203_buf203d_o, (float*)buf203, (float*)buf203d, 1-index, 0);
    window_buf203_buf203d_o->acquire(*window_buf203_buf203d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf209_buf209d_o->setData(*window_buf209_buf209d_o, (float*)buf209, (float*)buf209d, 1-index, 0);
    window_buf209_buf209d_o->acquire(*window_buf209_buf209d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    orthogonalize<32>(window_buf181_buf181d_i[0],window_buf187_buf187d_i[0],window_buf203_buf203d_o[0],window_buf209_buf209d_o[0]);
    window_buf181_buf181d_i->release(*window_buf181_buf181d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf187_buf187d_i->release(*window_buf187_buf187d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf203_buf203d_o->release(*window_buf203_buf203d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf209_buf209d_o->release(*window_buf209_buf209d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
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