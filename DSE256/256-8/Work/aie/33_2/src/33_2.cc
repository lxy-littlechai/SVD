// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_2/src/33_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_2_0_7136 16
#define LOCK_32_2_1_0 17
#define LOCK_33_2_2_0 50
#define LOCK_33_2_3_0 51
#define LOCK_33_1_0_0 0
#define LOCK_33_1_1_0 1
#define LOCK_33_1_2_0 2
#define LOCK_33_1_3_0 3

// Declare shared memory buffers
v4float buf432[65];
v4float buf432d[65];
v4float buf440[65];
v4float buf440d[65];
v4float buf448[65];
v4float buf448d[65];
v4float buf456[65];
v4float buf456d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf432_buf432d_i[1] = {{(float*)buf432, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf440_buf440d_i[1] = {{(float*)buf440, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf448_buf448d_o[1] = {{(float*)buf448, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf456_buf456d_o[1] = {{(float*)buf456, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_2_bounds = sync_buffer[1];

  while (proc_33_2_bounds)
  {

    // Kernel call : i225:orthogonalize<256>
    window_buf432_buf432d_i->setData(*window_buf432_buf432d_i, (float*)buf432, (float*)buf432d, 1-index, 0);
    window_buf432_buf432d_i->acquire(*window_buf432_buf432d_i, LOCK_32_2_0_7136, LOCK_32_2_1_0, 1-index);
    window_buf440_buf440d_i->setData(*window_buf440_buf440d_i, (float*)buf440, (float*)buf440d, 1-index, 0);
    window_buf440_buf440d_i->acquire(*window_buf440_buf440d_i, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    window_buf448_buf448d_o->setData(*window_buf448_buf448d_o, (float*)buf448, (float*)buf448d, 1-index, 0);
    window_buf448_buf448d_o->acquire(*window_buf448_buf448d_o, LOCK_33_1_0_0, LOCK_33_1_1_0, 1-index);
    window_buf456_buf456d_o->setData(*window_buf456_buf456d_o, (float*)buf456, (float*)buf456d, 1-index, 0);
    window_buf456_buf456d_o->acquire(*window_buf456_buf456d_o, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    orthogonalize<256>(window_buf432_buf432d_i[0],window_buf440_buf440d_i[0],window_buf448_buf448d_o[0],window_buf456_buf456d_o[0]);
    window_buf432_buf432d_i->release(*window_buf432_buf432d_i, LOCK_32_2_0_7136, LOCK_32_2_1_0, 1-index);
    window_buf440_buf440d_i->release(*window_buf440_buf440d_i, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    window_buf448_buf448d_o->release(*window_buf448_buf448d_o, LOCK_33_1_0_0, LOCK_33_1_1_0, 1-index);
    window_buf456_buf456d_o->release(*window_buf456_buf456d_o, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_2_bounds > 0)
      --proc_33_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}