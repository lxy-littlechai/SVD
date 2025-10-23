// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_1/src/22_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_1_0_3040 16
#define LOCK_22_1_1_2080 17
#define LOCK_23_1_0_7136 48
#define LOCK_23_1_1_0 49
#define LOCK_22_2_0_0 32
#define LOCK_22_2_1_0 33
#define LOCK_22_2_2_0 34
#define LOCK_22_2_3_0 35

// Declare shared memory buffers
v4float buf204[65];
v4float buf204d[65];
v4float buf206[65];
v4float buf206d[65];
v4float buf212[65];
v4float buf212d[65];
v4float buf214[65];
v4float buf214d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_i[1] = {{(float*)buf204, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_i[1] = {{(float*)buf206, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_o[1] = {{(float*)buf212, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_o[1] = {{(float*)buf214, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_1_bounds = sync_buffer[1];

  while (proc_22_1_bounds)
  {

    // Kernel call : i114:orthogonalize<256>
    window_buf204_buf204d_i->setData(*window_buf204_buf204d_i, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_i->acquire(*window_buf204_buf204d_i, LOCK_22_1_0_3040, LOCK_22_1_1_2080, 1-index);
    window_buf206_buf206d_i->setData(*window_buf206_buf206d_i, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_i->acquire(*window_buf206_buf206d_i, LOCK_23_1_0_7136, LOCK_23_1_1_0, 1-index);
    window_buf212_buf212d_o->setData(*window_buf212_buf212d_o, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_o->acquire(*window_buf212_buf212d_o, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf214_buf214d_o->setData(*window_buf214_buf214d_o, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_o->acquire(*window_buf214_buf214d_o, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    orthogonalize<256>(window_buf204_buf204d_i[0],window_buf206_buf206d_i[0],window_buf212_buf212d_o[0],window_buf214_buf214d_o[0]);
    window_buf204_buf204d_i->release(*window_buf204_buf204d_i, LOCK_22_1_0_3040, LOCK_22_1_1_2080, 1-index);
    window_buf206_buf206d_i->release(*window_buf206_buf206d_i, LOCK_23_1_0_7136, LOCK_23_1_1_0, 1-index);
    window_buf212_buf212d_o->release(*window_buf212_buf212d_o, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf214_buf214d_o->release(*window_buf214_buf214d_o, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_1_bounds > 0)
      --proc_22_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}