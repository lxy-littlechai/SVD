// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/2_5/src/2_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_5_0_0 16
#define LOCK_2_5_1_0 17
#define LOCK_3_5_2_0 50
#define LOCK_3_5_3_0 51
#define LOCK_2_6_0_0 32
#define LOCK_2_6_1_0 33
#define LOCK_2_6_2_0 34
#define LOCK_2_6_3_0 35

// Declare shared memory buffers
v4float buf41[65];
v4float buf41d[65];
v4float buf44[65];
v4float buf44d[65];
v4float buf49[65];
v4float buf49d[65];
v4float buf52[65];
v4float buf52d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_i[1] = {{(float*)buf41, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_i[1] = {{(float*)buf44, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_o[1] = {{(float*)buf49, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_o[1] = {{(float*)buf52, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_5_bounds = sync_buffer[1];

  while (proc_2_5_bounds)
  {

    // Kernel call : i21:orthogonalize<256>
    window_buf41_buf41d_i->setData(*window_buf41_buf41d_i, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_i->acquire(*window_buf41_buf41d_i, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf44_buf44d_i->setData(*window_buf44_buf44d_i, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_i->acquire(*window_buf44_buf44d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf49_buf49d_o->setData(*window_buf49_buf49d_o, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_o->acquire(*window_buf49_buf49d_o, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf52_buf52d_o->setData(*window_buf52_buf52d_o, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_o->acquire(*window_buf52_buf52d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    orthogonalize<256>(window_buf41_buf41d_i[0],window_buf44_buf44d_i[0],window_buf49_buf49d_o[0],window_buf52_buf52d_o[0]);
    window_buf41_buf41d_i->release(*window_buf41_buf41d_i, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf44_buf44d_i->release(*window_buf44_buf44d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf49_buf49d_o->release(*window_buf49_buf49d_o, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf52_buf52d_o->release(*window_buf52_buf52d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_5_bounds > 0)
      --proc_2_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}