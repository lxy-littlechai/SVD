// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/7_1/src/7_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_1_2_7136 18
#define LOCK_7_1_3_0 19
#define LOCK_8_1_0_1056 48
#define LOCK_8_1_1_1056 49
#define LOCK_7_2_0_7136 32
#define LOCK_7_2_1_0 33
#define LOCK_7_2_2_0 34
#define LOCK_7_2_3_0 35

// Declare shared memory buffers
v4float buf28[65];
v4float buf28d[65];
v4float buf30[65];
v4float buf30d[65];
v4float buf44[65];
v4float buf44d[65];
v4float buf46[65];
v4float buf46d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_i[1] = {{(float*)buf28, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_i[1] = {{(float*)buf30, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_o[1] = {{(float*)buf44, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_o[1] = {{(float*)buf46, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_1_bounds = sync_buffer[1];

  while (proc_7_1_bounds)
  {

    // Kernel call : i14:orthogonalize<256>
    window_buf28_buf28d_i->setData(*window_buf28_buf28d_i, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_i->acquire(*window_buf28_buf28d_i, LOCK_7_1_2_7136, LOCK_7_1_3_0, 1-index);
    window_buf30_buf30d_i->setData(*window_buf30_buf30d_i, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_i->acquire(*window_buf30_buf30d_i, LOCK_8_1_0_1056, LOCK_8_1_1_1056, 1-index);
    window_buf44_buf44d_o->setData(*window_buf44_buf44d_o, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_o->acquire(*window_buf44_buf44d_o, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf46_buf46d_o->setData(*window_buf46_buf46d_o, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_o->acquire(*window_buf46_buf46d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    orthogonalize<256>(window_buf28_buf28d_i[0],window_buf30_buf30d_i[0],window_buf44_buf44d_o[0],window_buf46_buf46d_o[0]);
    window_buf28_buf28d_i->release(*window_buf28_buf28d_i, LOCK_7_1_2_7136, LOCK_7_1_3_0, 1-index);
    window_buf30_buf30d_i->release(*window_buf30_buf30d_i, LOCK_8_1_0_1056, LOCK_8_1_1_1056, 1-index);
    window_buf44_buf44d_o->release(*window_buf44_buf44d_o, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf46_buf46d_o->release(*window_buf46_buf46d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_1_bounds > 0)
      --proc_7_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}