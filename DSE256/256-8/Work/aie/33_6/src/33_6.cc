// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_6/src/33_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_6_2_3136 18
#define LOCK_32_6_3_3136 19
#define LOCK_33_6_2_2080 50
#define LOCK_33_6_3_0 51
#define LOCK_33_5_0_7136 0
#define LOCK_33_5_1_0 1
#define LOCK_33_5_2_0 2
#define LOCK_33_5_3_0 3

// Declare shared memory buffers
v4float buf372[65];
v4float buf372d[65];
v4float buf380[65];
v4float buf380d[65];
v4float buf388[65];
v4float buf388d[65];
v4float buf396[65];
v4float buf396d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf372_buf372d_i[1] = {{(float*)buf372, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf380_buf380d_i[1] = {{(float*)buf380, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf388_buf388d_o[1] = {{(float*)buf388, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf396_buf396d_o[1] = {{(float*)buf396, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_6_bounds = sync_buffer[1];

  while (proc_33_6_bounds)
  {

    // Kernel call : i193:orthogonalize<256>
    window_buf372_buf372d_i->setData(*window_buf372_buf372d_i, (float*)buf372, (float*)buf372d, 1-index, 0);
    window_buf372_buf372d_i->acquire(*window_buf372_buf372d_i, LOCK_32_6_2_3136, LOCK_32_6_3_3136, 1-index);
    window_buf380_buf380d_i->setData(*window_buf380_buf380d_i, (float*)buf380, (float*)buf380d, 1-index, 0);
    window_buf380_buf380d_i->acquire(*window_buf380_buf380d_i, LOCK_33_6_2_2080, LOCK_33_6_3_0, 1-index);
    window_buf388_buf388d_o->setData(*window_buf388_buf388d_o, (float*)buf388, (float*)buf388d, 1-index, 0);
    window_buf388_buf388d_o->acquire(*window_buf388_buf388d_o, LOCK_33_5_0_7136, LOCK_33_5_1_0, 1-index);
    window_buf396_buf396d_o->setData(*window_buf396_buf396d_o, (float*)buf396, (float*)buf396d, 1-index, 0);
    window_buf396_buf396d_o->acquire(*window_buf396_buf396d_o, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    orthogonalize<256>(window_buf372_buf372d_i[0],window_buf380_buf380d_i[0],window_buf388_buf388d_o[0],window_buf396_buf396d_o[0]);
    window_buf372_buf372d_i->release(*window_buf372_buf372d_i, LOCK_32_6_2_3136, LOCK_32_6_3_3136, 1-index);
    window_buf380_buf380d_i->release(*window_buf380_buf380d_i, LOCK_33_6_2_2080, LOCK_33_6_3_0, 1-index);
    window_buf388_buf388d_o->release(*window_buf388_buf388d_o, LOCK_33_5_0_7136, LOCK_33_5_1_0, 1-index);
    window_buf396_buf396d_o->release(*window_buf396_buf396d_o, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_6_bounds > 0)
      --proc_33_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}