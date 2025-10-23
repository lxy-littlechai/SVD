// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/4_1/src/4_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_1_2_0 18
#define LOCK_4_1_3_0 19
#define LOCK_5_1_0_0 48
#define LOCK_5_1_1_1056 49
#define LOCK_4_2_0_7136 32
#define LOCK_4_2_1_0 33
#define LOCK_4_2_2_0 34
#define LOCK_4_2_3_0 35

// Declare shared memory buffers
v4float buf15[65];
v4float buf15d[65];
v4float buf17[65];
v4float buf17d[65];
v4float buf23[65];
v4float buf23d[65];
v4float buf9dr[65];
v4float buf9r[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf15_buf15d_i[1] = {{(float*)buf15, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9r_buf9dr_i[1] = {{(float*)buf9r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23_buf23d_o[1] = {{(float*)buf23, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17_buf17d_o[1] = {{(float*)buf17, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_1_bounds = sync_buffer[1];

  while (proc_4_1_bounds)
  {

    // Kernel call : i7:orthogonalize<256>
    window_buf15_buf15d_i->setData(*window_buf15_buf15d_i, (float*)buf15, (float*)buf15d, 1-index, 0);
    window_buf15_buf15d_i->acquire(*window_buf15_buf15d_i, LOCK_4_1_2_0, LOCK_4_1_3_0, 1-index);
    window_buf9r_buf9dr_i->setData(*window_buf9r_buf9dr_i, (float*)buf9r, (float*)buf9dr, 1-index, 0);
    window_buf9r_buf9dr_i->acquire(*window_buf9r_buf9dr_i, LOCK_5_1_0_0, LOCK_5_1_1_1056, 1-index);
    window_buf23_buf23d_o->setData(*window_buf23_buf23d_o, (float*)buf23, (float*)buf23d, 1-index, 0);
    window_buf23_buf23d_o->acquire(*window_buf23_buf23d_o, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf17_buf17d_o->setData(*window_buf17_buf17d_o, (float*)buf17, (float*)buf17d, 1-index, 0);
    window_buf17_buf17d_o->acquire(*window_buf17_buf17d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    orthogonalize<256>(window_buf15_buf15d_i[0],window_buf9r_buf9dr_i[0],window_buf23_buf23d_o[0],window_buf17_buf17d_o[0]);
    window_buf15_buf15d_i->release(*window_buf15_buf15d_i, LOCK_4_1_2_0, LOCK_4_1_3_0, 1-index);
    window_buf9r_buf9dr_i->release(*window_buf9r_buf9dr_i, LOCK_5_1_0_0, LOCK_5_1_1_1056, 1-index);
    window_buf23_buf23d_o->release(*window_buf23_buf23d_o, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf17_buf17d_o->release(*window_buf17_buf17d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
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