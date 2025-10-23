// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_5/src/1_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_5_0_7136 16
#define LOCK_1_5_1_0 17
#define LOCK_2_5_2_0 50
#define LOCK_2_5_3_0 51
#define LOCK_1_6_0_0 32
#define LOCK_1_6_1_0 33
#define LOCK_1_6_2_0 34
#define LOCK_1_6_3_0 35

// Declare shared memory buffers
v4float buf43[65];
v4float buf43d[65];
v4float buf46[65];
v4float buf46d[65];
v4float buf51[65];
v4float buf51d[65];
v4float buf54[65];
v4float buf54d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_i[1] = {{(float*)buf43, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_i[1] = {{(float*)buf46, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51_buf51d_o[1] = {{(float*)buf51, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_o[1] = {{(float*)buf54, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_5_bounds = sync_buffer[1];

  while (proc_1_5_bounds)
  {

    // Kernel call : i20:orthogonalize<256>
    window_buf43_buf43d_i->setData(*window_buf43_buf43d_i, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_i->acquire(*window_buf43_buf43d_i, LOCK_1_5_0_7136, LOCK_1_5_1_0, 1-index);
    window_buf46_buf46d_i->setData(*window_buf46_buf46d_i, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_i->acquire(*window_buf46_buf46d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf51_buf51d_o->setData(*window_buf51_buf51d_o, (float*)buf51, (float*)buf51d, 1-index, 0);
    window_buf51_buf51d_o->acquire(*window_buf51_buf51d_o, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf54_buf54d_o->setData(*window_buf54_buf54d_o, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_o->acquire(*window_buf54_buf54d_o, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    orthogonalize<256>(window_buf43_buf43d_i[0],window_buf46_buf46d_i[0],window_buf51_buf51d_o[0],window_buf54_buf54d_o[0]);
    window_buf43_buf43d_i->release(*window_buf43_buf43d_i, LOCK_1_5_0_7136, LOCK_1_5_1_0, 1-index);
    window_buf46_buf46d_i->release(*window_buf46_buf46d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf51_buf51d_o->release(*window_buf51_buf51d_o, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf54_buf54d_o->release(*window_buf54_buf54d_o, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_5_bounds > 0)
      --proc_1_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}