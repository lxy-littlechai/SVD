// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_0/src/30_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_0_0_0 48
#define LOCK_30_0_1_6176 49
#define LOCK_30_0_2_0 50
#define LOCK_30_0_3_0 51
#define LOCK_30_1_0_8032 32
#define LOCK_30_1_1_0 33
#define LOCK_30_1_2_0 34
#define LOCK_30_1_3_0 35

// Declare shared memory buffers
v4float buf311dr[9];
v4float buf311r[9];
v4float buf324dr[9];
v4float buf324r[9];
v4float buf333[9];
v4float buf333d[9];
v4float buf346[9];
v4float buf346d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf311r_buf311dr_i[1] = {{(float*)buf311r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf324r_buf324dr_i[1] = {{(float*)buf324r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf333_buf333d_o[1] = {{(float*)buf333, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf346_buf346d_o[1] = {{(float*)buf346, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_0_bounds = sync_buffer[1];

  while (proc_30_0_bounds)
  {

    // Kernel call : i159:orthogonalize<32>
    window_buf311r_buf311dr_i->setData(*window_buf311r_buf311dr_i, (float*)buf311r, (float*)buf311dr, 1-index, 0);
    window_buf311r_buf311dr_i->acquire(*window_buf311r_buf311dr_i, LOCK_30_0_0_0, LOCK_30_0_1_6176, 1-index);
    window_buf324r_buf324dr_i->setData(*window_buf324r_buf324dr_i, (float*)buf324r, (float*)buf324dr, 1-index, 0);
    window_buf324r_buf324dr_i->acquire(*window_buf324r_buf324dr_i, LOCK_30_0_2_0, LOCK_30_0_3_0, 1-index);
    window_buf333_buf333d_o->setData(*window_buf333_buf333d_o, (float*)buf333, (float*)buf333d, 1-index, 0);
    window_buf333_buf333d_o->acquire(*window_buf333_buf333d_o, LOCK_30_1_0_8032, LOCK_30_1_1_0, 1-index);
    window_buf346_buf346d_o->setData(*window_buf346_buf346d_o, (float*)buf346, (float*)buf346d, 1-index, 0);
    window_buf346_buf346d_o->acquire(*window_buf346_buf346d_o, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    orthogonalize<32>(window_buf311r_buf311dr_i[0],window_buf324r_buf324dr_i[0],window_buf333_buf333d_o[0],window_buf346_buf346d_o[0]);
    window_buf311r_buf311dr_i->release(*window_buf311r_buf311dr_i, LOCK_30_0_0_0, LOCK_30_0_1_6176, 1-index);
    window_buf324r_buf324dr_i->release(*window_buf324r_buf324dr_i, LOCK_30_0_2_0, LOCK_30_0_3_0, 1-index);
    window_buf333_buf333d_o->release(*window_buf333_buf333d_o, LOCK_30_1_0_8032, LOCK_30_1_1_0, 1-index);
    window_buf346_buf346d_o->release(*window_buf346_buf346d_o, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_0_bounds > 0)
      --proc_30_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}