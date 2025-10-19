// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/11_2/src/11_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_2_0_0 16
#define LOCK_10_2_1_0 17
#define LOCK_11_2_2_0 50
#define LOCK_11_2_3_0 51
#define LOCK_11_1_2_0 2
#define LOCK_11_1_3_0 3
#define LOCK_11_1_0_0 0
#define LOCK_11_1_1_0 1

// Declare shared memory buffers
v4float buf201[65];
v4float buf201d[65];
v4float buf206[65];
v4float buf206d[65];
v4float buf217[65];
v4float buf217d[65];
v4float buf222[65];
v4float buf222d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201_buf201d_i[1] = {{(float*)buf201, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_i[1] = {{(float*)buf206, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_o[1] = {{(float*)buf217, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf222_buf222d_o[1] = {{(float*)buf222, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_2_bounds = sync_buffer[1];

  while (proc_11_2_bounds)
  {

    // Kernel call : i97:orthogonalize<256>
    window_buf201_buf201d_i->setData(*window_buf201_buf201d_i, (float*)buf201, (float*)buf201d, 1-index, 0);
    window_buf201_buf201d_i->acquire(*window_buf201_buf201d_i, LOCK_10_2_0_0, LOCK_10_2_1_0, 1-index);
    window_buf206_buf206d_i->setData(*window_buf206_buf206d_i, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_i->acquire(*window_buf206_buf206d_i, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    window_buf217_buf217d_o->setData(*window_buf217_buf217d_o, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_o->acquire(*window_buf217_buf217d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf222_buf222d_o->setData(*window_buf222_buf222d_o, (float*)buf222, (float*)buf222d, 1-index, 0);
    window_buf222_buf222d_o->acquire(*window_buf222_buf222d_o, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    orthogonalize<256>(window_buf201_buf201d_i[0],window_buf206_buf206d_i[0],window_buf217_buf217d_o[0],window_buf222_buf222d_o[0]);
    window_buf201_buf201d_i->release(*window_buf201_buf201d_i, LOCK_10_2_0_0, LOCK_10_2_1_0, 1-index);
    window_buf206_buf206d_i->release(*window_buf206_buf206d_i, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    window_buf217_buf217d_o->release(*window_buf217_buf217d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf222_buf222d_o->release(*window_buf222_buf222d_o, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_2_bounds > 0)
      --proc_11_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}