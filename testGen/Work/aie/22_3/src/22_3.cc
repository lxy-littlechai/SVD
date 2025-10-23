// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_3/src/22_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_3_0_8032 16
#define LOCK_22_3_1_0 17
#define LOCK_23_3_0_8032 48
#define LOCK_23_3_1_0 49
#define LOCK_22_2_0_0 0
#define LOCK_22_2_1_0 1
#define LOCK_22_2_2_0 2
#define LOCK_22_2_3_0 3

// Declare shared memory buffers
v4float buf250[9];
v4float buf250d[9];
v4float buf252[9];
v4float buf252d[9];
v4float buf272[9];
v4float buf272d[9];
v4float buf274[9];
v4float buf274d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf250_buf250d_i[1] = {{(float*)buf250, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf252_buf252d_i[1] = {{(float*)buf252, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf272_buf272d_o[1] = {{(float*)buf272, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf274_buf274d_o[1] = {{(float*)buf274, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_3_bounds = sync_buffer[1];

  while (proc_22_3_bounds)
  {

    // Kernel call : i130:orthogonalize<32>
    window_buf250_buf250d_i->setData(*window_buf250_buf250d_i, (float*)buf250, (float*)buf250d, 1-index, 0);
    window_buf250_buf250d_i->acquire(*window_buf250_buf250d_i, LOCK_22_3_0_8032, LOCK_22_3_1_0, 1-index);
    window_buf252_buf252d_i->setData(*window_buf252_buf252d_i, (float*)buf252, (float*)buf252d, 1-index, 0);
    window_buf252_buf252d_i->acquire(*window_buf252_buf252d_i, LOCK_23_3_0_8032, LOCK_23_3_1_0, 1-index);
    window_buf272_buf272d_o->setData(*window_buf272_buf272d_o, (float*)buf272, (float*)buf272d, 1-index, 0);
    window_buf272_buf272d_o->acquire(*window_buf272_buf272d_o, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf274_buf274d_o->setData(*window_buf274_buf274d_o, (float*)buf274, (float*)buf274d, 1-index, 0);
    window_buf274_buf274d_o->acquire(*window_buf274_buf274d_o, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    orthogonalize<32>(window_buf250_buf250d_i[0],window_buf252_buf252d_i[0],window_buf272_buf272d_o[0],window_buf274_buf274d_o[0]);
    window_buf250_buf250d_i->release(*window_buf250_buf250d_i, LOCK_22_3_0_8032, LOCK_22_3_1_0, 1-index);
    window_buf252_buf252d_i->release(*window_buf252_buf252d_i, LOCK_23_3_0_8032, LOCK_23_3_1_0, 1-index);
    window_buf272_buf272d_o->release(*window_buf272_buf272d_o, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf274_buf274d_o->release(*window_buf274_buf274d_o, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_3_bounds > 0)
      --proc_22_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}