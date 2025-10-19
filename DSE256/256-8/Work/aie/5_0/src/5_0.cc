// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/5_0/src/5_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_0_0_0 16
#define LOCK_4_0_1_0 17
#define LOCK_4_0_2_0 18
#define LOCK_4_0_3_0 19
#define LOCK_5_1_2_3040 34
#define LOCK_5_1_3_2080 35
#define LOCK_5_1_0_0 32
#define LOCK_5_1_1_0 33

// Declare shared memory buffers
v4float buf24[65];
v4float buf24d[65];
v4float buf25[65];
v4float buf25d[65];
v4float buf8[65];
v4float buf8d[65];
v4float buf9[65];
v4float buf9d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_i[1] = {{(float*)buf8, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9_buf9d_i[1] = {{(float*)buf9, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_o[1] = {{(float*)buf24, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_o[1] = {{(float*)buf25, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_0_bounds = sync_buffer[1];

  while (proc_5_0_bounds)
  {

    // Kernel call : i4:orthogonalize<256>
    window_buf8_buf8d_i->setData(*window_buf8_buf8d_i, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_i->acquire(*window_buf8_buf8d_i, LOCK_4_0_0_0, LOCK_4_0_1_0, 1-index);
    window_buf9_buf9d_i->setData(*window_buf9_buf9d_i, (float*)buf9, (float*)buf9d, 1-index, 0);
    window_buf9_buf9d_i->acquire(*window_buf9_buf9d_i, LOCK_4_0_2_0, LOCK_4_0_3_0, 1-index);
    window_buf24_buf24d_o->setData(*window_buf24_buf24d_o, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_o->acquire(*window_buf24_buf24d_o, LOCK_5_1_2_3040, LOCK_5_1_3_2080, 1-index);
    window_buf25_buf25d_o->setData(*window_buf25_buf25d_o, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_o->acquire(*window_buf25_buf25d_o, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    orthogonalize<256>(window_buf8_buf8d_i[0],window_buf9_buf9d_i[0],window_buf24_buf24d_o[0],window_buf25_buf25d_o[0]);
    window_buf8_buf8d_i->release(*window_buf8_buf8d_i, LOCK_4_0_0_0, LOCK_4_0_1_0, 1-index);
    window_buf9_buf9d_i->release(*window_buf9_buf9d_i, LOCK_4_0_2_0, LOCK_4_0_3_0, 1-index);
    window_buf24_buf24d_o->release(*window_buf24_buf24d_o, LOCK_5_1_2_3040, LOCK_5_1_3_2080, 1-index);
    window_buf25_buf25d_o->release(*window_buf25_buf25d_o, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_0_bounds > 0)
      --proc_5_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}