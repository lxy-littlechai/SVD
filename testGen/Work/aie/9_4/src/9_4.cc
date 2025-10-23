// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_4/src/9_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_4_0_0 16
#define LOCK_8_4_1_0 17
#define LOCK_9_4_2_0 50
#define LOCK_9_4_3_0 51
#define LOCK_9_5_0_0 32
#define LOCK_9_5_1_0 33
#define LOCK_9_5_2_0 34
#define LOCK_9_5_3_0 35

// Declare shared memory buffers
v4float buf100[9];
v4float buf100d[9];
v4float buf108[9];
v4float buf108d[9];
v4float buf122[9];
v4float buf122d[9];
v4float buf130[9];
v4float buf130d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf100_buf100d_i[1] = {{(float*)buf100, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf108_buf108d_i[1] = {{(float*)buf108, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf122_buf122d_o[1] = {{(float*)buf122, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf130_buf130d_o[1] = {{(float*)buf130, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_4_bounds = sync_buffer[1];

  while (proc_9_4_bounds)
  {

    // Kernel call : i52:orthogonalize<32>
    window_buf100_buf100d_i->setData(*window_buf100_buf100d_i, (float*)buf100, (float*)buf100d, 1-index, 0);
    window_buf100_buf100d_i->acquire(*window_buf100_buf100d_i, LOCK_8_4_0_0, LOCK_8_4_1_0, 1-index);
    window_buf108_buf108d_i->setData(*window_buf108_buf108d_i, (float*)buf108, (float*)buf108d, 1-index, 0);
    window_buf108_buf108d_i->acquire(*window_buf108_buf108d_i, LOCK_9_4_2_0, LOCK_9_4_3_0, 1-index);
    window_buf122_buf122d_o->setData(*window_buf122_buf122d_o, (float*)buf122, (float*)buf122d, 1-index, 0);
    window_buf122_buf122d_o->acquire(*window_buf122_buf122d_o, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf130_buf130d_o->setData(*window_buf130_buf130d_o, (float*)buf130, (float*)buf130d, 1-index, 0);
    window_buf130_buf130d_o->acquire(*window_buf130_buf130d_o, LOCK_9_5_2_0, LOCK_9_5_3_0, 1-index);
    orthogonalize<32>(window_buf100_buf100d_i[0],window_buf108_buf108d_i[0],window_buf122_buf122d_o[0],window_buf130_buf130d_o[0]);
    window_buf100_buf100d_i->release(*window_buf100_buf100d_i, LOCK_8_4_0_0, LOCK_8_4_1_0, 1-index);
    window_buf108_buf108d_i->release(*window_buf108_buf108d_i, LOCK_9_4_2_0, LOCK_9_4_3_0, 1-index);
    window_buf122_buf122d_o->release(*window_buf122_buf122d_o, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf130_buf130d_o->release(*window_buf130_buf130d_o, LOCK_9_5_2_0, LOCK_9_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_4_bounds > 0)
      --proc_9_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}