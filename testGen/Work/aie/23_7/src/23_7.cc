// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_7/src/23_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_7_0_0 48
#define LOCK_24_7_1_0 49
#define LOCK_24_7_2_0 50
#define LOCK_24_7_3_4032 51
#define LOCK_23_6_0_0 0
#define LOCK_23_6_1_0 1
#define LOCK_23_6_2_0 2
#define LOCK_23_6_3_0 3

// Declare shared memory buffers
v4float buf161dr[9];
v4float buf161r[9];
v4float buf175dr[9];
v4float buf175r[9];
v4float buf183[9];
v4float buf183d[9];
v4float buf197[9];
v4float buf197d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf175r_buf175dr_i[1] = {{(float*)buf175r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161r_buf161dr_i[1] = {{(float*)buf161r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf197_buf197d_o[1] = {{(float*)buf197, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf183_buf183d_o[1] = {{(float*)buf183, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_7_bounds = sync_buffer[1];

  while (proc_23_7_bounds)
  {

    // Kernel call : i87:orthogonalize<32>
    window_buf175r_buf175dr_i->setData(*window_buf175r_buf175dr_i, (float*)buf175r, (float*)buf175dr, 1-index, 0);
    window_buf175r_buf175dr_i->acquire(*window_buf175r_buf175dr_i, LOCK_24_7_0_0, LOCK_24_7_1_0, 1-index);
    window_buf161r_buf161dr_i->setData(*window_buf161r_buf161dr_i, (float*)buf161r, (float*)buf161dr, 1-index, 0);
    window_buf161r_buf161dr_i->acquire(*window_buf161r_buf161dr_i, LOCK_24_7_2_0, LOCK_24_7_3_4032, 1-index);
    window_buf197_buf197d_o->setData(*window_buf197_buf197d_o, (float*)buf197, (float*)buf197d, 1-index, 0);
    window_buf197_buf197d_o->acquire(*window_buf197_buf197d_o, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf183_buf183d_o->setData(*window_buf183_buf183d_o, (float*)buf183, (float*)buf183d, 1-index, 0);
    window_buf183_buf183d_o->acquire(*window_buf183_buf183d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    orthogonalize<32>(window_buf175r_buf175dr_i[0],window_buf161r_buf161dr_i[0],window_buf197_buf197d_o[0],window_buf183_buf183d_o[0]);
    window_buf175r_buf175dr_i->release(*window_buf175r_buf175dr_i, LOCK_24_7_0_0, LOCK_24_7_1_0, 1-index);
    window_buf161r_buf161dr_i->release(*window_buf161r_buf161dr_i, LOCK_24_7_2_0, LOCK_24_7_3_4032, 1-index);
    window_buf197_buf197d_o->release(*window_buf197_buf197d_o, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf183_buf183d_o->release(*window_buf183_buf183d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_7_bounds > 0)
      --proc_23_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}