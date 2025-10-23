// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_1/src/20_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_1_0_0 16
#define LOCK_20_1_1_0 17
#define LOCK_21_1_2_0 50
#define LOCK_21_1_3_0 51
#define LOCK_20_0_0_0 0
#define LOCK_20_0_1_0 1
#define LOCK_20_0_2_0 2
#define LOCK_20_0_3_0 3

// Declare shared memory buffers
v4float buf288[9];
v4float buf288d[9];
v4float buf298[9];
v4float buf298d[9];
v4float buf310[9];
v4float buf310d[9];
v4float buf320[9];
v4float buf320d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf288_buf288d_i[1] = {{(float*)buf288, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf298_buf298d_i[1] = {{(float*)buf298, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf310_buf310d_o[1] = {{(float*)buf310, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf320_buf320d_o[1] = {{(float*)buf320, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_1_bounds = sync_buffer[1];

  while (proc_20_1_bounds)
  {

    // Kernel call : i150:orthogonalize<32>
    window_buf288_buf288d_i->setData(*window_buf288_buf288d_i, (float*)buf288, (float*)buf288d, 1-index, 0);
    window_buf288_buf288d_i->acquire(*window_buf288_buf288d_i, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf298_buf298d_i->setData(*window_buf298_buf298d_i, (float*)buf298, (float*)buf298d, 1-index, 0);
    window_buf298_buf298d_i->acquire(*window_buf298_buf298d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf310_buf310d_o->setData(*window_buf310_buf310d_o, (float*)buf310, (float*)buf310d, 1-index, 0);
    window_buf310_buf310d_o->acquire(*window_buf310_buf310d_o, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf320_buf320d_o->setData(*window_buf320_buf320d_o, (float*)buf320, (float*)buf320d, 1-index, 0);
    window_buf320_buf320d_o->acquire(*window_buf320_buf320d_o, LOCK_20_0_2_0, LOCK_20_0_3_0, 1-index);
    orthogonalize<32>(window_buf288_buf288d_i[0],window_buf298_buf298d_i[0],window_buf310_buf310d_o[0],window_buf320_buf320d_o[0]);
    window_buf288_buf288d_i->release(*window_buf288_buf288d_i, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf298_buf298d_i->release(*window_buf298_buf298d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf310_buf310d_o->release(*window_buf310_buf310d_o, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf320_buf320d_o->release(*window_buf320_buf320d_o, LOCK_20_0_2_0, LOCK_20_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_1_bounds > 0)
      --proc_20_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}