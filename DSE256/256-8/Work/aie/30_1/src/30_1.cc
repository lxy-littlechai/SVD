// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_1/src/30_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_1_0_0 16
#define LOCK_30_1_1_0 17
#define LOCK_31_1_2_0 50
#define LOCK_31_1_3_0 51
#define LOCK_30_0_0_0 0
#define LOCK_30_0_1_0 1
#define LOCK_30_0_2_0 2
#define LOCK_30_0_3_0 3

// Declare shared memory buffers
v4float buf453[65];
v4float buf453d[65];
v4float buf460[65];
v4float buf460d[65];
v4float buf469[65];
v4float buf469d[65];
v4float buf476[65];
v4float buf476d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf453_buf453d_i[1] = {{(float*)buf453, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf460_buf460d_i[1] = {{(float*)buf460, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf469_buf469d_o[1] = {{(float*)buf469, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf476_buf476d_o[1] = {{(float*)buf476, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_1_bounds = sync_buffer[1];

  while (proc_30_1_bounds)
  {

    // Kernel call : i230:orthogonalize<256>
    window_buf453_buf453d_i->setData(*window_buf453_buf453d_i, (float*)buf453, (float*)buf453d, 1-index, 0);
    window_buf453_buf453d_i->acquire(*window_buf453_buf453d_i, LOCK_30_1_0_0, LOCK_30_1_1_0, 1-index);
    window_buf460_buf460d_i->setData(*window_buf460_buf460d_i, (float*)buf460, (float*)buf460d, 1-index, 0);
    window_buf460_buf460d_i->acquire(*window_buf460_buf460d_i, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    window_buf469_buf469d_o->setData(*window_buf469_buf469d_o, (float*)buf469, (float*)buf469d, 1-index, 0);
    window_buf469_buf469d_o->acquire(*window_buf469_buf469d_o, LOCK_30_0_0_0, LOCK_30_0_1_0, 1-index);
    window_buf476_buf476d_o->setData(*window_buf476_buf476d_o, (float*)buf476, (float*)buf476d, 1-index, 0);
    window_buf476_buf476d_o->acquire(*window_buf476_buf476d_o, LOCK_30_0_2_0, LOCK_30_0_3_0, 1-index);
    orthogonalize<256>(window_buf453_buf453d_i[0],window_buf460_buf460d_i[0],window_buf469_buf469d_o[0],window_buf476_buf476d_o[0]);
    window_buf453_buf453d_i->release(*window_buf453_buf453d_i, LOCK_30_1_0_0, LOCK_30_1_1_0, 1-index);
    window_buf460_buf460d_i->release(*window_buf460_buf460d_i, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    window_buf469_buf469d_o->release(*window_buf469_buf469d_o, LOCK_30_0_0_0, LOCK_30_0_1_0, 1-index);
    window_buf476_buf476d_o->release(*window_buf476_buf476d_o, LOCK_30_0_2_0, LOCK_30_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_1_bounds > 0)
      --proc_30_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}