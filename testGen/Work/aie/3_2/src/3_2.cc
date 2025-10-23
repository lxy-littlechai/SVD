// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/3_2/src/3_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_2_0_8032 16
#define LOCK_2_2_1_0 17
#define LOCK_3_2_2_0 50
#define LOCK_3_2_3_0 51
#define LOCK_3_3_0_8032 32
#define LOCK_3_3_1_0 33
#define LOCK_3_3_2_0 34
#define LOCK_3_3_3_0 35

// Declare shared memory buffers
v4float buf46[9];
v4float buf46d[9];
v4float buf51[9];
v4float buf51d[9];
v4float buf68[9];
v4float buf68d[9];
v4float buf73[9];
v4float buf73d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_i[1] = {{(float*)buf46, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51_buf51d_i[1] = {{(float*)buf51, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf68_buf68d_o[1] = {{(float*)buf68, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73_buf73d_o[1] = {{(float*)buf73, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_2_bounds = sync_buffer[1];

  while (proc_3_2_bounds)
  {

    // Kernel call : i24:orthogonalize<32>
    window_buf46_buf46d_i->setData(*window_buf46_buf46d_i, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_i->acquire(*window_buf46_buf46d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf51_buf51d_i->setData(*window_buf51_buf51d_i, (float*)buf51, (float*)buf51d, 1-index, 0);
    window_buf51_buf51d_i->acquire(*window_buf51_buf51d_i, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    window_buf68_buf68d_o->setData(*window_buf68_buf68d_o, (float*)buf68, (float*)buf68d, 1-index, 0);
    window_buf68_buf68d_o->acquire(*window_buf68_buf68d_o, LOCK_3_3_0_8032, LOCK_3_3_1_0, 1-index);
    window_buf73_buf73d_o->setData(*window_buf73_buf73d_o, (float*)buf73, (float*)buf73d, 1-index, 0);
    window_buf73_buf73d_o->acquire(*window_buf73_buf73d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    orthogonalize<32>(window_buf46_buf46d_i[0],window_buf51_buf51d_i[0],window_buf68_buf68d_o[0],window_buf73_buf73d_o[0]);
    window_buf46_buf46d_i->release(*window_buf46_buf46d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf51_buf51d_i->release(*window_buf51_buf51d_i, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    window_buf68_buf68d_o->release(*window_buf68_buf68d_o, LOCK_3_3_0_8032, LOCK_3_3_1_0, 1-index);
    window_buf73_buf73d_o->release(*window_buf73_buf73d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_2_bounds > 0)
      --proc_3_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}