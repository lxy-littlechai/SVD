// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/31_0/src/31_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_0_0_0 48
#define LOCK_31_0_1_0 49
#define LOCK_31_0_2_160 50
#define LOCK_31_0_3_704 51
#define LOCK_31_1_0_8032 32
#define LOCK_31_1_1_0 33
#define LOCK_31_1_2_0 34
#define LOCK_31_1_3_0 35

// Declare shared memory buffers
v4float buf309dr[9];
v4float buf309r[9];
v4float buf322dr[9];
v4float buf322r[9];
v4float buf331[9];
v4float buf331d[9];
v4float buf344[9];
v4float buf344d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf309r_buf309dr_i[1] = {{(float*)buf309r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf322r_buf322dr_i[1] = {{(float*)buf322r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf331_buf331d_o[1] = {{(float*)buf331, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf344_buf344d_o[1] = {{(float*)buf344, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_0_bounds = sync_buffer[1];

  while (proc_31_0_bounds)
  {

    // Kernel call : i160:orthogonalize<32>
    window_buf309r_buf309dr_i->setData(*window_buf309r_buf309dr_i, (float*)buf309r, (float*)buf309dr, 1-index, 0);
    window_buf309r_buf309dr_i->acquire(*window_buf309r_buf309dr_i, LOCK_31_0_0_0, LOCK_31_0_1_0, 1-index);
    window_buf322r_buf322dr_i->setData(*window_buf322r_buf322dr_i, (float*)buf322r, (float*)buf322dr, 1-index, 0);
    window_buf322r_buf322dr_i->acquire(*window_buf322r_buf322dr_i, LOCK_31_0_2_160, LOCK_31_0_3_704, 1-index);
    window_buf331_buf331d_o->setData(*window_buf331_buf331d_o, (float*)buf331, (float*)buf331d, 1-index, 0);
    window_buf331_buf331d_o->acquire(*window_buf331_buf331d_o, LOCK_31_1_0_8032, LOCK_31_1_1_0, 1-index);
    window_buf344_buf344d_o->setData(*window_buf344_buf344d_o, (float*)buf344, (float*)buf344d, 1-index, 0);
    window_buf344_buf344d_o->acquire(*window_buf344_buf344d_o, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    orthogonalize<32>(window_buf309r_buf309dr_i[0],window_buf322r_buf322dr_i[0],window_buf331_buf331d_o[0],window_buf344_buf344d_o[0]);
    window_buf309r_buf309dr_i->release(*window_buf309r_buf309dr_i, LOCK_31_0_0_0, LOCK_31_0_1_0, 1-index);
    window_buf322r_buf322dr_i->release(*window_buf322r_buf322dr_i, LOCK_31_0_2_160, LOCK_31_0_3_704, 1-index);
    window_buf331_buf331d_o->release(*window_buf331_buf331d_o, LOCK_31_1_0_8032, LOCK_31_1_1_0, 1-index);
    window_buf344_buf344d_o->release(*window_buf344_buf344d_o, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_0_bounds > 0)
      --proc_31_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}