// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/40_2/src/40_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_39_2_0_0 16
#define LOCK_39_2_1_0 17
#define LOCK_40_2_2_0 50
#define LOCK_40_2_3_0 51
#define LOCK_40_3_0_0 32
#define LOCK_40_3_1_0 33
#define LOCK_40_3_2_0 34
#define LOCK_40_3_3_0 35

// Declare shared memory buffers
v4float buf503[65];
v4float buf503d[65];
v4float buf504[65];
v4float buf504d[65];
v4float buf519[65];
v4float buf519d[65];
v4float buf520[65];
v4float buf520d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf503_buf503d_i[1] = {{(float*)buf503, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf504_buf504d_i[1] = {{(float*)buf504, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf519_buf519d_o[1] = {{(float*)buf519, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf520_buf520d_o[1] = {{(float*)buf520, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_40_2_bounds = sync_buffer[1];

  while (proc_40_2_bounds)
  {

    // Kernel call : i255:orthogonalize<256>
    window_buf503_buf503d_i->setData(*window_buf503_buf503d_i, (float*)buf503, (float*)buf503d, 1-index, 0);
    window_buf503_buf503d_i->acquire(*window_buf503_buf503d_i, LOCK_39_2_0_0, LOCK_39_2_1_0, 1-index);
    window_buf504_buf504d_i->setData(*window_buf504_buf504d_i, (float*)buf504, (float*)buf504d, 1-index, 0);
    window_buf504_buf504d_i->acquire(*window_buf504_buf504d_i, LOCK_40_2_2_0, LOCK_40_2_3_0, 1-index);
    window_buf519_buf519d_o->setData(*window_buf519_buf519d_o, (float*)buf519, (float*)buf519d, 1-index, 0);
    window_buf519_buf519d_o->acquire(*window_buf519_buf519d_o, LOCK_40_3_0_0, LOCK_40_3_1_0, 1-index);
    window_buf520_buf520d_o->setData(*window_buf520_buf520d_o, (float*)buf520, (float*)buf520d, 1-index, 0);
    window_buf520_buf520d_o->acquire(*window_buf520_buf520d_o, LOCK_40_3_2_0, LOCK_40_3_3_0, 1-index);
    orthogonalize<256>(window_buf503_buf503d_i[0],window_buf504_buf504d_i[0],window_buf519_buf519d_o[0],window_buf520_buf520d_o[0]);
    window_buf503_buf503d_i->release(*window_buf503_buf503d_i, LOCK_39_2_0_0, LOCK_39_2_1_0, 1-index);
    window_buf504_buf504d_i->release(*window_buf504_buf504d_i, LOCK_40_2_2_0, LOCK_40_2_3_0, 1-index);
    window_buf519_buf519d_o->release(*window_buf519_buf519d_o, LOCK_40_3_0_0, LOCK_40_3_1_0, 1-index);
    window_buf520_buf520d_o->release(*window_buf520_buf520d_o, LOCK_40_3_2_0, LOCK_40_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_40_2_bounds > 0)
      --proc_40_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}