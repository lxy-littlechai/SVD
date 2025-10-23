// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_4/src/4_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_4_0_0 16
#define LOCK_3_4_1_0 17
#define LOCK_4_4_2_0 50
#define LOCK_4_4_3_0 51
#define LOCK_4_5_0_8032 32
#define LOCK_4_5_1_0 33
#define LOCK_4_5_2_0 34
#define LOCK_4_5_3_0 35

// Declare shared memory buffers
v4float buf112[9];
v4float buf112d[9];
v4float buf121[9];
v4float buf121d[9];
v4float buf90[9];
v4float buf90d[9];
v4float buf99[9];
v4float buf99d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf90_buf90d_i[1] = {{(float*)buf90, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf99_buf99d_i[1] = {{(float*)buf99, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112_buf112d_o[1] = {{(float*)buf112, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf121_buf121d_o[1] = {{(float*)buf121, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_4_bounds = sync_buffer[1];

  while (proc_4_4_bounds)
  {

    // Kernel call : i47:orthogonalize<32>
    window_buf90_buf90d_i->setData(*window_buf90_buf90d_i, (float*)buf90, (float*)buf90d, 1-index, 0);
    window_buf90_buf90d_i->acquire(*window_buf90_buf90d_i, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf99_buf99d_i->setData(*window_buf99_buf99d_i, (float*)buf99, (float*)buf99d, 1-index, 0);
    window_buf99_buf99d_i->acquire(*window_buf99_buf99d_i, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    window_buf112_buf112d_o->setData(*window_buf112_buf112d_o, (float*)buf112, (float*)buf112d, 1-index, 0);
    window_buf112_buf112d_o->acquire(*window_buf112_buf112d_o, LOCK_4_5_0_8032, LOCK_4_5_1_0, 1-index);
    window_buf121_buf121d_o->setData(*window_buf121_buf121d_o, (float*)buf121, (float*)buf121d, 1-index, 0);
    window_buf121_buf121d_o->acquire(*window_buf121_buf121d_o, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    orthogonalize<32>(window_buf90_buf90d_i[0],window_buf99_buf99d_i[0],window_buf112_buf112d_o[0],window_buf121_buf121d_o[0]);
    window_buf90_buf90d_i->release(*window_buf90_buf90d_i, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf99_buf99d_i->release(*window_buf99_buf99d_i, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    window_buf112_buf112d_o->release(*window_buf112_buf112d_o, LOCK_4_5_0_8032, LOCK_4_5_1_0, 1-index);
    window_buf121_buf121d_o->release(*window_buf121_buf121d_o, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_4_bounds > 0)
      --proc_4_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}