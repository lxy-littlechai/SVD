// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/13_5/src/13_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_5_0_7136 16
#define LOCK_13_5_1_0 17
#define LOCK_14_5_0_0 48
#define LOCK_14_5_1_0 49
#define LOCK_13_6_0_0 32
#define LOCK_13_6_1_0 33
#define LOCK_13_6_2_0 34
#define LOCK_13_6_3_0 35

// Declare shared memory buffers
v4float buf168[65];
v4float buf168d[65];
v4float buf170[65];
v4float buf170d[65];
v4float buf176[65];
v4float buf176d[65];
v4float buf178[65];
v4float buf178d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf168_buf168d_i[1] = {{(float*)buf168, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170_buf170d_i[1] = {{(float*)buf170, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf176_buf176d_o[1] = {{(float*)buf176, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_o[1] = {{(float*)buf178, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_5_bounds = sync_buffer[1];

  while (proc_13_5_bounds)
  {

    // Kernel call : i94:orthogonalize<256>
    window_buf168_buf168d_i->setData(*window_buf168_buf168d_i, (float*)buf168, (float*)buf168d, 1-index, 0);
    window_buf168_buf168d_i->acquire(*window_buf168_buf168d_i, LOCK_13_5_0_7136, LOCK_13_5_1_0, 1-index);
    window_buf170_buf170d_i->setData(*window_buf170_buf170d_i, (float*)buf170, (float*)buf170d, 1-index, 0);
    window_buf170_buf170d_i->acquire(*window_buf170_buf170d_i, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf176_buf176d_o->setData(*window_buf176_buf176d_o, (float*)buf176, (float*)buf176d, 1-index, 0);
    window_buf176_buf176d_o->acquire(*window_buf176_buf176d_o, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf178_buf178d_o->setData(*window_buf178_buf178d_o, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_o->acquire(*window_buf178_buf178d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    orthogonalize<256>(window_buf168_buf168d_i[0],window_buf170_buf170d_i[0],window_buf176_buf176d_o[0],window_buf178_buf178d_o[0]);
    window_buf168_buf168d_i->release(*window_buf168_buf168d_i, LOCK_13_5_0_7136, LOCK_13_5_1_0, 1-index);
    window_buf170_buf170d_i->release(*window_buf170_buf170d_i, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf176_buf176d_o->release(*window_buf176_buf176d_o, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf178_buf178d_o->release(*window_buf178_buf178d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_5_bounds > 0)
      --proc_13_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}