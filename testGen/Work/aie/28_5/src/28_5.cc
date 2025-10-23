// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_5/src/28_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_5_0_8032 16
#define LOCK_28_5_1_0 17
#define LOCK_29_5_2_0 50
#define LOCK_29_5_3_0 51
#define LOCK_28_6_0_3936 32
#define LOCK_28_6_1_5952 33
#define LOCK_28_6_2_2080 34
#define LOCK_28_6_3_0 35

// Declare shared memory buffers
v4float buf429[9];
v4float buf429d[9];
v4float buf432[9];
v4float buf432d[9];
v4float buf451[9];
v4float buf451d[9];
v4float buf454[9];
v4float buf454d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf429_buf429d_i[1] = {{(float*)buf429, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf432_buf432d_i[1] = {{(float*)buf432, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf451_buf451d_o[1] = {{(float*)buf451, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf454_buf454d_o[1] = {{(float*)buf454, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_5_bounds = sync_buffer[1];

  while (proc_28_5_bounds)
  {

    // Kernel call : i212:orthogonalize<32>
    window_buf429_buf429d_i->setData(*window_buf429_buf429d_i, (float*)buf429, (float*)buf429d, 1-index, 0);
    window_buf429_buf429d_i->acquire(*window_buf429_buf429d_i, LOCK_28_5_0_8032, LOCK_28_5_1_0, 1-index);
    window_buf432_buf432d_i->setData(*window_buf432_buf432d_i, (float*)buf432, (float*)buf432d, 1-index, 0);
    window_buf432_buf432d_i->acquire(*window_buf432_buf432d_i, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    window_buf451_buf451d_o->setData(*window_buf451_buf451d_o, (float*)buf451, (float*)buf451d, 1-index, 0);
    window_buf451_buf451d_o->acquire(*window_buf451_buf451d_o, LOCK_28_6_0_3936, LOCK_28_6_1_5952, 1-index);
    window_buf454_buf454d_o->setData(*window_buf454_buf454d_o, (float*)buf454, (float*)buf454d, 1-index, 0);
    window_buf454_buf454d_o->acquire(*window_buf454_buf454d_o, LOCK_28_6_2_2080, LOCK_28_6_3_0, 1-index);
    orthogonalize<32>(window_buf429_buf429d_i[0],window_buf432_buf432d_i[0],window_buf451_buf451d_o[0],window_buf454_buf454d_o[0]);
    window_buf429_buf429d_i->release(*window_buf429_buf429d_i, LOCK_28_5_0_8032, LOCK_28_5_1_0, 1-index);
    window_buf432_buf432d_i->release(*window_buf432_buf432d_i, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    window_buf451_buf451d_o->release(*window_buf451_buf451d_o, LOCK_28_6_0_3936, LOCK_28_6_1_5952, 1-index);
    window_buf454_buf454d_o->release(*window_buf454_buf454d_o, LOCK_28_6_2_2080, LOCK_28_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_5_bounds > 0)
      --proc_28_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}