// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/23_6/src/23_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_6_0_0 16
#define LOCK_22_6_1_0 17
#define LOCK_23_6_0_3040 48
#define LOCK_23_6_1_2080 49
#define LOCK_23_7_0_7136 32
#define LOCK_23_7_1_0 33
#define LOCK_23_7_2_0 34
#define LOCK_23_7_3_0 35

// Declare shared memory buffers
v4float buf240[65];
v4float buf240d[65];
v4float buf247[65];
v4float buf247d[65];
v4float buf248[65];
v4float buf248d[65];
v4float buf255[65];
v4float buf255d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_i[1] = {{(float*)buf240, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_i[1] = {{(float*)buf247, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf248_buf248d_o[1] = {{(float*)buf248, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf255_buf255d_o[1] = {{(float*)buf255, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_6_bounds = sync_buffer[1];

  while (proc_23_6_bounds)
  {

    // Kernel call : i135:orthogonalize<256>
    window_buf240_buf240d_i->setData(*window_buf240_buf240d_i, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_i->acquire(*window_buf240_buf240d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf247_buf247d_i->setData(*window_buf247_buf247d_i, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_i->acquire(*window_buf247_buf247d_i, LOCK_23_6_0_3040, LOCK_23_6_1_2080, 1-index);
    window_buf248_buf248d_o->setData(*window_buf248_buf248d_o, (float*)buf248, (float*)buf248d, 1-index, 0);
    window_buf248_buf248d_o->acquire(*window_buf248_buf248d_o, LOCK_23_7_0_7136, LOCK_23_7_1_0, 1-index);
    window_buf255_buf255d_o->setData(*window_buf255_buf255d_o, (float*)buf255, (float*)buf255d, 1-index, 0);
    window_buf255_buf255d_o->acquire(*window_buf255_buf255d_o, LOCK_23_7_2_0, LOCK_23_7_3_0, 1-index);
    orthogonalize<256>(window_buf240_buf240d_i[0],window_buf247_buf247d_i[0],window_buf248_buf248d_o[0],window_buf255_buf255d_o[0]);
    window_buf240_buf240d_i->release(*window_buf240_buf240d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf247_buf247d_i->release(*window_buf247_buf247d_i, LOCK_23_6_0_3040, LOCK_23_6_1_2080, 1-index);
    window_buf248_buf248d_o->release(*window_buf248_buf248d_o, LOCK_23_7_0_7136, LOCK_23_7_1_0, 1-index);
    window_buf255_buf255d_o->release(*window_buf255_buf255d_o, LOCK_23_7_2_0, LOCK_23_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_6_bounds > 0)
      --proc_23_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}