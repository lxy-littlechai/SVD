// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_3/src/12_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_3_0_0 16
#define LOCK_12_3_1_0 17
#define LOCK_13_3_2_0 50
#define LOCK_13_3_3_0 51
#define LOCK_12_4_0_7136 32
#define LOCK_12_4_1_0 33
#define LOCK_12_4_2_0 34
#define LOCK_12_4_3_0 35

// Declare shared memory buffers
v4float buf152[65];
v4float buf152d[65];
v4float buf158[65];
v4float buf158d[65];
v4float buf160[65];
v4float buf160d[65];
v4float buf166[65];
v4float buf166d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf152_buf152d_i[1] = {{(float*)buf152, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf158_buf158d_i[1] = {{(float*)buf158, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf160_buf160d_o[1] = {{(float*)buf160, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166_buf166d_o[1] = {{(float*)buf166, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_3_bounds = sync_buffer[1];

  while (proc_12_3_bounds)
  {

    // Kernel call : i85:orthogonalize<256>
    window_buf152_buf152d_i->setData(*window_buf152_buf152d_i, (float*)buf152, (float*)buf152d, 1-index, 0);
    window_buf152_buf152d_i->acquire(*window_buf152_buf152d_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf158_buf158d_i->setData(*window_buf158_buf158d_i, (float*)buf158, (float*)buf158d, 1-index, 0);
    window_buf158_buf158d_i->acquire(*window_buf158_buf158d_i, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    window_buf160_buf160d_o->setData(*window_buf160_buf160d_o, (float*)buf160, (float*)buf160d, 1-index, 0);
    window_buf160_buf160d_o->acquire(*window_buf160_buf160d_o, LOCK_12_4_0_7136, LOCK_12_4_1_0, 1-index);
    window_buf166_buf166d_o->setData(*window_buf166_buf166d_o, (float*)buf166, (float*)buf166d, 1-index, 0);
    window_buf166_buf166d_o->acquire(*window_buf166_buf166d_o, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    orthogonalize<256>(window_buf152_buf152d_i[0],window_buf158_buf158d_i[0],window_buf160_buf160d_o[0],window_buf166_buf166d_o[0]);
    window_buf152_buf152d_i->release(*window_buf152_buf152d_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf158_buf158d_i->release(*window_buf158_buf158d_i, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    window_buf160_buf160d_o->release(*window_buf160_buf160d_o, LOCK_12_4_0_7136, LOCK_12_4_1_0, 1-index);
    window_buf166_buf166d_o->release(*window_buf166_buf166d_o, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_3_bounds > 0)
      --proc_12_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}