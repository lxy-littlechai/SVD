// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/4_1/src/4_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_1_2_3040 18
#define LOCK_4_1_3_2080 19
#define LOCK_5_1_0_0 48
#define LOCK_5_1_1_0 49
#define LOCK_4_2_0_7136 32
#define LOCK_4_2_1_0 33
#define LOCK_4_2_2_0 34
#define LOCK_4_2_3_0 35

// Declare shared memory buffers
v4float buf22[65];
v4float buf22d[65];
v4float buf25[65];
v4float buf25d[65];
v4float buf38[65];
v4float buf38d[65];
v4float buf41[65];
v4float buf41d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_i[1] = {{(float*)buf22, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_i[1] = {{(float*)buf25, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_o[1] = {{(float*)buf38, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_o[1] = {{(float*)buf41, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_1_bounds = sync_buffer[1];

  while (proc_4_1_bounds)
  {

    // Kernel call : i11:orthogonalize<256>
    window_buf22_buf22d_i->setData(*window_buf22_buf22d_i, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_i->acquire(*window_buf22_buf22d_i, LOCK_4_1_2_3040, LOCK_4_1_3_2080, 1-index);
    window_buf25_buf25d_i->setData(*window_buf25_buf25d_i, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_i->acquire(*window_buf25_buf25d_i, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    window_buf38_buf38d_o->setData(*window_buf38_buf38d_o, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_o->acquire(*window_buf38_buf38d_o, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf41_buf41d_o->setData(*window_buf41_buf41d_o, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_o->acquire(*window_buf41_buf41d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    orthogonalize<256>(window_buf22_buf22d_i[0],window_buf25_buf25d_i[0],window_buf38_buf38d_o[0],window_buf41_buf41d_o[0]);
    window_buf22_buf22d_i->release(*window_buf22_buf22d_i, LOCK_4_1_2_3040, LOCK_4_1_3_2080, 1-index);
    window_buf25_buf25d_i->release(*window_buf25_buf25d_i, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    window_buf38_buf38d_o->release(*window_buf38_buf38d_o, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf41_buf41d_o->release(*window_buf41_buf41d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_1_bounds > 0)
      --proc_4_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}