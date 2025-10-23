// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_2/src/23_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_2_0_0 16
#define LOCK_22_2_1_0 17
#define LOCK_23_2_0_0 48
#define LOCK_23_2_1_0 49
#define LOCK_23_1_0_0 0
#define LOCK_23_1_1_0 1
#define LOCK_23_1_2_0 2
#define LOCK_23_1_3_0 3

// Declare shared memory buffers
v4float buf272[9];
v4float buf272d[9];
v4float buf285[9];
v4float buf285d[9];
v4float buf294[9];
v4float buf294d[9];
v4float buf307[9];
v4float buf307d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf272_buf272d_i[1] = {{(float*)buf272, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf285_buf285d_i[1] = {{(float*)buf285, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf294_buf294d_o[1] = {{(float*)buf294, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf307_buf307d_o[1] = {{(float*)buf307, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_2_bounds = sync_buffer[1];

  while (proc_23_2_bounds)
  {

    // Kernel call : i142:orthogonalize<32>
    window_buf272_buf272d_i->setData(*window_buf272_buf272d_i, (float*)buf272, (float*)buf272d, 1-index, 0);
    window_buf272_buf272d_i->acquire(*window_buf272_buf272d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf285_buf285d_i->setData(*window_buf285_buf285d_i, (float*)buf285, (float*)buf285d, 1-index, 0);
    window_buf285_buf285d_i->acquire(*window_buf285_buf285d_i, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf294_buf294d_o->setData(*window_buf294_buf294d_o, (float*)buf294, (float*)buf294d, 1-index, 0);
    window_buf294_buf294d_o->acquire(*window_buf294_buf294d_o, LOCK_23_1_0_0, LOCK_23_1_1_0, 1-index);
    window_buf307_buf307d_o->setData(*window_buf307_buf307d_o, (float*)buf307, (float*)buf307d, 1-index, 0);
    window_buf307_buf307d_o->acquire(*window_buf307_buf307d_o, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    orthogonalize<32>(window_buf272_buf272d_i[0],window_buf285_buf285d_i[0],window_buf294_buf294d_o[0],window_buf307_buf307d_o[0]);
    window_buf272_buf272d_i->release(*window_buf272_buf272d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf285_buf285d_i->release(*window_buf285_buf285d_i, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf294_buf294d_o->release(*window_buf294_buf294d_o, LOCK_23_1_0_0, LOCK_23_1_1_0, 1-index);
    window_buf307_buf307d_o->release(*window_buf307_buf307d_o, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_2_bounds > 0)
      --proc_23_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}