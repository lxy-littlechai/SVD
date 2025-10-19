// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/39_1/src/39_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_39_1_0_7136 16
#define LOCK_39_1_1_0 17
#define LOCK_40_1_2_0 50
#define LOCK_40_1_3_0 51
#define LOCK_39_2_0_0 32
#define LOCK_39_2_1_0 33
#define LOCK_39_2_2_0 34
#define LOCK_39_2_3_0 35

// Declare shared memory buffers
v4float buf487[65];
v4float buf487d[65];
v4float buf490[65];
v4float buf490d[65];
v4float buf503[65];
v4float buf503d[65];
v4float buf506[65];
v4float buf506d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf487_buf487d_i[1] = {{(float*)buf487, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf490_buf490d_i[1] = {{(float*)buf490, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf503_buf503d_o[1] = {{(float*)buf503, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf506_buf506d_o[1] = {{(float*)buf506, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_39_1_bounds = sync_buffer[1];

  while (proc_39_1_bounds)
  {

    // Kernel call : i246:orthogonalize<256>
    window_buf487_buf487d_i->setData(*window_buf487_buf487d_i, (float*)buf487, (float*)buf487d, 1-index, 0);
    window_buf487_buf487d_i->acquire(*window_buf487_buf487d_i, LOCK_39_1_0_7136, LOCK_39_1_1_0, 1-index);
    window_buf490_buf490d_i->setData(*window_buf490_buf490d_i, (float*)buf490, (float*)buf490d, 1-index, 0);
    window_buf490_buf490d_i->acquire(*window_buf490_buf490d_i, LOCK_40_1_2_0, LOCK_40_1_3_0, 1-index);
    window_buf503_buf503d_o->setData(*window_buf503_buf503d_o, (float*)buf503, (float*)buf503d, 1-index, 0);
    window_buf503_buf503d_o->acquire(*window_buf503_buf503d_o, LOCK_39_2_0_0, LOCK_39_2_1_0, 1-index);
    window_buf506_buf506d_o->setData(*window_buf506_buf506d_o, (float*)buf506, (float*)buf506d, 1-index, 0);
    window_buf506_buf506d_o->acquire(*window_buf506_buf506d_o, LOCK_39_2_2_0, LOCK_39_2_3_0, 1-index);
    orthogonalize<256>(window_buf487_buf487d_i[0],window_buf490_buf490d_i[0],window_buf503_buf503d_o[0],window_buf506_buf506d_o[0]);
    window_buf487_buf487d_i->release(*window_buf487_buf487d_i, LOCK_39_1_0_7136, LOCK_39_1_1_0, 1-index);
    window_buf490_buf490d_i->release(*window_buf490_buf490d_i, LOCK_40_1_2_0, LOCK_40_1_3_0, 1-index);
    window_buf503_buf503d_o->release(*window_buf503_buf503d_o, LOCK_39_2_0_0, LOCK_39_2_1_0, 1-index);
    window_buf506_buf506d_o->release(*window_buf506_buf506d_o, LOCK_39_2_2_0, LOCK_39_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_39_1_bounds > 0)
      --proc_39_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}