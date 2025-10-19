// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_5/src/33_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_5_0_7136 16
#define LOCK_33_5_1_0 17
#define LOCK_34_5_2_0 50
#define LOCK_34_5_3_0 51
#define LOCK_33_4_0_7136 0
#define LOCK_33_4_1_0 1
#define LOCK_33_4_2_0 2
#define LOCK_33_4_3_0 3

// Declare shared memory buffers
v4float buf388[65];
v4float buf388d[65];
v4float buf394[65];
v4float buf394d[65];
v4float buf404[65];
v4float buf404d[65];
v4float buf410[65];
v4float buf410d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf388_buf388d_i[1] = {{(float*)buf388, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf394_buf394d_i[1] = {{(float*)buf394, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf404_buf404d_o[1] = {{(float*)buf404, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf410_buf410d_o[1] = {{(float*)buf410, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_5_bounds = sync_buffer[1];

  while (proc_33_5_bounds)
  {

    // Kernel call : i201:orthogonalize<256>
    window_buf388_buf388d_i->setData(*window_buf388_buf388d_i, (float*)buf388, (float*)buf388d, 1-index, 0);
    window_buf388_buf388d_i->acquire(*window_buf388_buf388d_i, LOCK_33_5_0_7136, LOCK_33_5_1_0, 1-index);
    window_buf394_buf394d_i->setData(*window_buf394_buf394d_i, (float*)buf394, (float*)buf394d, 1-index, 0);
    window_buf394_buf394d_i->acquire(*window_buf394_buf394d_i, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    window_buf404_buf404d_o->setData(*window_buf404_buf404d_o, (float*)buf404, (float*)buf404d, 1-index, 0);
    window_buf404_buf404d_o->acquire(*window_buf404_buf404d_o, LOCK_33_4_0_7136, LOCK_33_4_1_0, 1-index);
    window_buf410_buf410d_o->setData(*window_buf410_buf410d_o, (float*)buf410, (float*)buf410d, 1-index, 0);
    window_buf410_buf410d_o->acquire(*window_buf410_buf410d_o, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    orthogonalize<256>(window_buf388_buf388d_i[0],window_buf394_buf394d_i[0],window_buf404_buf404d_o[0],window_buf410_buf410d_o[0]);
    window_buf388_buf388d_i->release(*window_buf388_buf388d_i, LOCK_33_5_0_7136, LOCK_33_5_1_0, 1-index);
    window_buf394_buf394d_i->release(*window_buf394_buf394d_i, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    window_buf404_buf404d_o->release(*window_buf404_buf404d_o, LOCK_33_4_0_7136, LOCK_33_4_1_0, 1-index);
    window_buf410_buf410d_o->release(*window_buf410_buf410d_o, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_5_bounds > 0)
      --proc_33_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}