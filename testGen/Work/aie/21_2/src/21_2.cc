// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_2/src/21_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_2_0_8032 16
#define LOCK_20_2_1_0 17
#define LOCK_21_2_2_0 50
#define LOCK_21_2_3_0 51
#define LOCK_21_1_0_3936 0
#define LOCK_21_1_1_2080 1
#define LOCK_21_1_2_0 2
#define LOCK_21_1_3_0 3

// Declare shared memory buffers
v4float buf268[9];
v4float buf268d[9];
v4float buf276[9];
v4float buf276d[9];
v4float buf290[9];
v4float buf290d[9];
v4float buf298[9];
v4float buf298d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf268_buf268d_i[1] = {{(float*)buf268, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf276_buf276d_i[1] = {{(float*)buf276, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf290_buf290d_o[1] = {{(float*)buf290, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf298_buf298d_o[1] = {{(float*)buf298, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_2_bounds = sync_buffer[1];

  while (proc_21_2_bounds)
  {

    // Kernel call : i140:orthogonalize<32>
    window_buf268_buf268d_i->setData(*window_buf268_buf268d_i, (float*)buf268, (float*)buf268d, 1-index, 0);
    window_buf268_buf268d_i->acquire(*window_buf268_buf268d_i, LOCK_20_2_0_8032, LOCK_20_2_1_0, 1-index);
    window_buf276_buf276d_i->setData(*window_buf276_buf276d_i, (float*)buf276, (float*)buf276d, 1-index, 0);
    window_buf276_buf276d_i->acquire(*window_buf276_buf276d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf290_buf290d_o->setData(*window_buf290_buf290d_o, (float*)buf290, (float*)buf290d, 1-index, 0);
    window_buf290_buf290d_o->acquire(*window_buf290_buf290d_o, LOCK_21_1_0_3936, LOCK_21_1_1_2080, 1-index);
    window_buf298_buf298d_o->setData(*window_buf298_buf298d_o, (float*)buf298, (float*)buf298d, 1-index, 0);
    window_buf298_buf298d_o->acquire(*window_buf298_buf298d_o, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    orthogonalize<32>(window_buf268_buf268d_i[0],window_buf276_buf276d_i[0],window_buf290_buf290d_o[0],window_buf298_buf298d_o[0]);
    window_buf268_buf268d_i->release(*window_buf268_buf268d_i, LOCK_20_2_0_8032, LOCK_20_2_1_0, 1-index);
    window_buf276_buf276d_i->release(*window_buf276_buf276d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf290_buf290d_o->release(*window_buf290_buf290d_o, LOCK_21_1_0_3936, LOCK_21_1_1_2080, 1-index);
    window_buf298_buf298d_o->release(*window_buf298_buf298d_o, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_2_bounds > 0)
      --proc_21_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}