// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_4/src/33_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_4_0_3040 16
#define LOCK_32_4_1_2080 17
#define LOCK_33_4_2_0 50
#define LOCK_33_4_3_0 51
#define LOCK_33_3_0_7136 0
#define LOCK_33_3_1_0 1
#define LOCK_33_3_2_0 2
#define LOCK_33_3_3_0 3

// Declare shared memory buffers
v4float buf402[65];
v4float buf402d[65];
v4float buf410[65];
v4float buf410d[65];
v4float buf418[65];
v4float buf418d[65];
v4float buf426[65];
v4float buf426d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf402_buf402d_i[1] = {{(float*)buf402, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf410_buf410d_i[1] = {{(float*)buf410, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf418_buf418d_o[1] = {{(float*)buf418, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf426_buf426d_o[1] = {{(float*)buf426, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_4_bounds = sync_buffer[1];

  while (proc_33_4_bounds)
  {

    // Kernel call : i209:orthogonalize<256>
    window_buf402_buf402d_i->setData(*window_buf402_buf402d_i, (float*)buf402, (float*)buf402d, 1-index, 0);
    window_buf402_buf402d_i->acquire(*window_buf402_buf402d_i, LOCK_32_4_0_3040, LOCK_32_4_1_2080, 1-index);
    window_buf410_buf410d_i->setData(*window_buf410_buf410d_i, (float*)buf410, (float*)buf410d, 1-index, 0);
    window_buf410_buf410d_i->acquire(*window_buf410_buf410d_i, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    window_buf418_buf418d_o->setData(*window_buf418_buf418d_o, (float*)buf418, (float*)buf418d, 1-index, 0);
    window_buf418_buf418d_o->acquire(*window_buf418_buf418d_o, LOCK_33_3_0_7136, LOCK_33_3_1_0, 1-index);
    window_buf426_buf426d_o->setData(*window_buf426_buf426d_o, (float*)buf426, (float*)buf426d, 1-index, 0);
    window_buf426_buf426d_o->acquire(*window_buf426_buf426d_o, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    orthogonalize<256>(window_buf402_buf402d_i[0],window_buf410_buf410d_i[0],window_buf418_buf418d_o[0],window_buf426_buf426d_o[0]);
    window_buf402_buf402d_i->release(*window_buf402_buf402d_i, LOCK_32_4_0_3040, LOCK_32_4_1_2080, 1-index);
    window_buf410_buf410d_i->release(*window_buf410_buf410d_i, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    window_buf418_buf418d_o->release(*window_buf418_buf418d_o, LOCK_33_3_0_7136, LOCK_33_3_1_0, 1-index);
    window_buf426_buf426d_o->release(*window_buf426_buf426d_o, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_4_bounds > 0)
      --proc_33_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}