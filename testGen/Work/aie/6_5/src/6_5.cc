// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_5/src/6_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_5_0_0 16
#define LOCK_6_5_1_0 17
#define LOCK_7_5_2_0 50
#define LOCK_7_5_3_0 51
#define LOCK_6_6_0_0 32
#define LOCK_6_6_1_0 33
#define LOCK_6_6_2_0 34
#define LOCK_6_6_3_0 35

// Declare shared memory buffers
v4float buf116[9];
v4float buf116d[9];
v4float buf127[9];
v4float buf127d[9];
v4float buf138[9];
v4float buf138d[9];
v4float buf149[9];
v4float buf149d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf116_buf116d_i[1] = {{(float*)buf116, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf127_buf127d_i[1] = {{(float*)buf127, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf138_buf138d_o[1] = {{(float*)buf138, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_o[1] = {{(float*)buf149, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_5_bounds = sync_buffer[1];

  while (proc_6_5_bounds)
  {

    // Kernel call : i60:orthogonalize<32>
    window_buf116_buf116d_i->setData(*window_buf116_buf116d_i, (float*)buf116, (float*)buf116d, 1-index, 0);
    window_buf116_buf116d_i->acquire(*window_buf116_buf116d_i, LOCK_6_5_0_0, LOCK_6_5_1_0, 1-index);
    window_buf127_buf127d_i->setData(*window_buf127_buf127d_i, (float*)buf127, (float*)buf127d, 1-index, 0);
    window_buf127_buf127d_i->acquire(*window_buf127_buf127d_i, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    window_buf138_buf138d_o->setData(*window_buf138_buf138d_o, (float*)buf138, (float*)buf138d, 1-index, 0);
    window_buf138_buf138d_o->acquire(*window_buf138_buf138d_o, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf149_buf149d_o->setData(*window_buf149_buf149d_o, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_o->acquire(*window_buf149_buf149d_o, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    orthogonalize<32>(window_buf116_buf116d_i[0],window_buf127_buf127d_i[0],window_buf138_buf138d_o[0],window_buf149_buf149d_o[0]);
    window_buf116_buf116d_i->release(*window_buf116_buf116d_i, LOCK_6_5_0_0, LOCK_6_5_1_0, 1-index);
    window_buf127_buf127d_i->release(*window_buf127_buf127d_i, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    window_buf138_buf138d_o->release(*window_buf138_buf138d_o, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf149_buf149d_o->release(*window_buf149_buf149d_o, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_5_bounds > 0)
      --proc_6_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}