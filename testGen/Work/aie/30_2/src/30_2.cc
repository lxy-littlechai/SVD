// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_2/src/30_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_2_0_3936 16
#define LOCK_29_2_1_2080 17
#define LOCK_30_2_2_0 50
#define LOCK_30_2_3_0 51
#define LOCK_30_3_0_8032 32
#define LOCK_30_3_1_0 33
#define LOCK_30_3_2_0 34
#define LOCK_30_3_3_0 35

// Declare shared memory buffers
v4float buf357[9];
v4float buf357d[9];
v4float buf366[9];
v4float buf366d[9];
v4float buf379[9];
v4float buf379d[9];
v4float buf388[9];
v4float buf388d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf357_buf357d_i[1] = {{(float*)buf357, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf366_buf366d_i[1] = {{(float*)buf366, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf379_buf379d_o[1] = {{(float*)buf379, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf388_buf388d_o[1] = {{(float*)buf388, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_2_bounds = sync_buffer[1];

  while (proc_30_2_bounds)
  {

    // Kernel call : i181:orthogonalize<32>
    window_buf357_buf357d_i->setData(*window_buf357_buf357d_i, (float*)buf357, (float*)buf357d, 1-index, 0);
    window_buf357_buf357d_i->acquire(*window_buf357_buf357d_i, LOCK_29_2_0_3936, LOCK_29_2_1_2080, 1-index);
    window_buf366_buf366d_i->setData(*window_buf366_buf366d_i, (float*)buf366, (float*)buf366d, 1-index, 0);
    window_buf366_buf366d_i->acquire(*window_buf366_buf366d_i, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    window_buf379_buf379d_o->setData(*window_buf379_buf379d_o, (float*)buf379, (float*)buf379d, 1-index, 0);
    window_buf379_buf379d_o->acquire(*window_buf379_buf379d_o, LOCK_30_3_0_8032, LOCK_30_3_1_0, 1-index);
    window_buf388_buf388d_o->setData(*window_buf388_buf388d_o, (float*)buf388, (float*)buf388d, 1-index, 0);
    window_buf388_buf388d_o->acquire(*window_buf388_buf388d_o, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    orthogonalize<32>(window_buf357_buf357d_i[0],window_buf366_buf366d_i[0],window_buf379_buf379d_o[0],window_buf388_buf388d_o[0]);
    window_buf357_buf357d_i->release(*window_buf357_buf357d_i, LOCK_29_2_0_3936, LOCK_29_2_1_2080, 1-index);
    window_buf366_buf366d_i->release(*window_buf366_buf366d_i, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    window_buf379_buf379d_o->release(*window_buf379_buf379d_o, LOCK_30_3_0_8032, LOCK_30_3_1_0, 1-index);
    window_buf388_buf388d_o->release(*window_buf388_buf388d_o, LOCK_30_3_2_0, LOCK_30_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_2_bounds > 0)
      --proc_30_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}