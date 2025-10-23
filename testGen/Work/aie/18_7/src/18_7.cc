// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_7/src/18_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_7_0_0 48
#define LOCK_19_7_1_0 49
#define LOCK_18_7_2_6144 18
#define LOCK_18_7_3_0 19
#define LOCK_18_6_0_0 0
#define LOCK_18_6_1_0 1
#define LOCK_18_6_2_0 2
#define LOCK_18_6_3_0 3

// Declare shared memory buffers
v4float buf158dr[9];
v4float buf158r[9];
v4float buf173dr[9];
v4float buf173r[9];
v4float buf180[9];
v4float buf180d[9];
v4float buf195[9];
v4float buf195d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf158r_buf158dr_i[1] = {{(float*)buf158r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf173r_buf173dr_i[1] = {{(float*)buf173r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_o[1] = {{(float*)buf180, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf195_buf195d_o[1] = {{(float*)buf195, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_7_bounds = sync_buffer[1];

  while (proc_18_7_bounds)
  {

    // Kernel call : i82:orthogonalize<32>
    window_buf158r_buf158dr_i->setData(*window_buf158r_buf158dr_i, (float*)buf158r, (float*)buf158dr, 1-index, 0);
    window_buf158r_buf158dr_i->acquire(*window_buf158r_buf158dr_i, LOCK_19_7_0_0, LOCK_19_7_1_0, 1-index);
    window_buf173r_buf173dr_i->setData(*window_buf173r_buf173dr_i, (float*)buf173r, (float*)buf173dr, 1-index, 0);
    window_buf173r_buf173dr_i->acquire(*window_buf173r_buf173dr_i, LOCK_18_7_2_6144, LOCK_18_7_3_0, 1-index);
    window_buf180_buf180d_o->setData(*window_buf180_buf180d_o, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_o->acquire(*window_buf180_buf180d_o, LOCK_18_6_0_0, LOCK_18_6_1_0, 1-index);
    window_buf195_buf195d_o->setData(*window_buf195_buf195d_o, (float*)buf195, (float*)buf195d, 1-index, 0);
    window_buf195_buf195d_o->acquire(*window_buf195_buf195d_o, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    orthogonalize<32>(window_buf158r_buf158dr_i[0],window_buf173r_buf173dr_i[0],window_buf180_buf180d_o[0],window_buf195_buf195d_o[0]);
    window_buf158r_buf158dr_i->release(*window_buf158r_buf158dr_i, LOCK_19_7_0_0, LOCK_19_7_1_0, 1-index);
    window_buf173r_buf173dr_i->release(*window_buf173r_buf173dr_i, LOCK_18_7_2_6144, LOCK_18_7_3_0, 1-index);
    window_buf180_buf180d_o->release(*window_buf180_buf180d_o, LOCK_18_6_0_0, LOCK_18_6_1_0, 1-index);
    window_buf195_buf195d_o->release(*window_buf195_buf195d_o, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_7_bounds > 0)
      --proc_18_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}