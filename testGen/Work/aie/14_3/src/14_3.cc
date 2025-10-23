// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_3/src/14_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_3_0_0 16
#define LOCK_14_3_1_0 17
#define LOCK_15_3_2_0 50
#define LOCK_15_3_3_0 51
#define LOCK_14_2_0_8032 0
#define LOCK_14_2_1_0 1
#define LOCK_14_2_2_0 2
#define LOCK_14_2_3_0 3

// Declare shared memory buffers
v4float buf249[9];
v4float buf249d[9];
v4float buf257[9];
v4float buf257d[9];
v4float buf271[9];
v4float buf271d[9];
v4float buf279[9];
v4float buf279d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf249_buf249d_i[1] = {{(float*)buf249, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf257_buf257d_i[1] = {{(float*)buf257, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf271_buf271d_o[1] = {{(float*)buf271, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf279_buf279d_o[1] = {{(float*)buf279, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_3_bounds = sync_buffer[1];

  while (proc_14_3_bounds)
  {

    // Kernel call : i122:orthogonalize<32>
    window_buf249_buf249d_i->setData(*window_buf249_buf249d_i, (float*)buf249, (float*)buf249d, 1-index, 0);
    window_buf249_buf249d_i->acquire(*window_buf249_buf249d_i, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf257_buf257d_i->setData(*window_buf257_buf257d_i, (float*)buf257, (float*)buf257d, 1-index, 0);
    window_buf257_buf257d_i->acquire(*window_buf257_buf257d_i, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    window_buf271_buf271d_o->setData(*window_buf271_buf271d_o, (float*)buf271, (float*)buf271d, 1-index, 0);
    window_buf271_buf271d_o->acquire(*window_buf271_buf271d_o, LOCK_14_2_0_8032, LOCK_14_2_1_0, 1-index);
    window_buf279_buf279d_o->setData(*window_buf279_buf279d_o, (float*)buf279, (float*)buf279d, 1-index, 0);
    window_buf279_buf279d_o->acquire(*window_buf279_buf279d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    orthogonalize<32>(window_buf249_buf249d_i[0],window_buf257_buf257d_i[0],window_buf271_buf271d_o[0],window_buf279_buf279d_o[0]);
    window_buf249_buf249d_i->release(*window_buf249_buf249d_i, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf257_buf257d_i->release(*window_buf257_buf257d_i, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    window_buf271_buf271d_o->release(*window_buf271_buf271d_o, LOCK_14_2_0_8032, LOCK_14_2_1_0, 1-index);
    window_buf279_buf279d_o->release(*window_buf279_buf279d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_3_bounds > 0)
      --proc_14_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}