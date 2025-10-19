// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_2/src/29_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_2_0_7136 16
#define LOCK_28_2_1_0 17
#define LOCK_29_2_2_0 50
#define LOCK_29_2_3_0 51
#define LOCK_29_1_0_0 0
#define LOCK_29_1_1_0 1
#define LOCK_29_1_2_0 2
#define LOCK_29_1_3_0 3

// Declare shared memory buffers
v4float buf439[65];
v4float buf439d[65];
v4float buf445[65];
v4float buf445d[65];
v4float buf455[65];
v4float buf455d[65];
v4float buf461[65];
v4float buf461d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf439_buf439d_i[1] = {{(float*)buf439, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf445_buf445d_i[1] = {{(float*)buf445, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf455_buf455d_o[1] = {{(float*)buf455, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf461_buf461d_o[1] = {{(float*)buf461, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_2_bounds = sync_buffer[1];

  while (proc_29_2_bounds)
  {

    // Kernel call : i221:orthogonalize<256>
    window_buf439_buf439d_i->setData(*window_buf439_buf439d_i, (float*)buf439, (float*)buf439d, 1-index, 0);
    window_buf439_buf439d_i->acquire(*window_buf439_buf439d_i, LOCK_28_2_0_7136, LOCK_28_2_1_0, 1-index);
    window_buf445_buf445d_i->setData(*window_buf445_buf445d_i, (float*)buf445, (float*)buf445d, 1-index, 0);
    window_buf445_buf445d_i->acquire(*window_buf445_buf445d_i, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    window_buf455_buf455d_o->setData(*window_buf455_buf455d_o, (float*)buf455, (float*)buf455d, 1-index, 0);
    window_buf455_buf455d_o->acquire(*window_buf455_buf455d_o, LOCK_29_1_0_0, LOCK_29_1_1_0, 1-index);
    window_buf461_buf461d_o->setData(*window_buf461_buf461d_o, (float*)buf461, (float*)buf461d, 1-index, 0);
    window_buf461_buf461d_o->acquire(*window_buf461_buf461d_o, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    orthogonalize<256>(window_buf439_buf439d_i[0],window_buf445_buf445d_i[0],window_buf455_buf455d_o[0],window_buf461_buf461d_o[0]);
    window_buf439_buf439d_i->release(*window_buf439_buf439d_i, LOCK_28_2_0_7136, LOCK_28_2_1_0, 1-index);
    window_buf445_buf445d_i->release(*window_buf445_buf445d_i, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    window_buf455_buf455d_o->release(*window_buf455_buf455d_o, LOCK_29_1_0_0, LOCK_29_1_1_0, 1-index);
    window_buf461_buf461d_o->release(*window_buf461_buf461d_o, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_2_bounds > 0)
      --proc_29_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}