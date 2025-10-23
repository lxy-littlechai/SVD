// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/3_4/src/3_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_4_0_3936 16
#define LOCK_2_4_1_2080 17
#define LOCK_3_4_2_0 50
#define LOCK_3_4_3_0 51
#define LOCK_3_5_0_8032 32
#define LOCK_3_5_1_0 33
#define LOCK_3_5_2_0 34
#define LOCK_3_5_3_0 35

// Declare shared memory buffers
v4float buf110[9];
v4float buf110d[9];
v4float buf119[9];
v4float buf119d[9];
v4float buf88[9];
v4float buf88d[9];
v4float buf97[9];
v4float buf97d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf88_buf88d_i[1] = {{(float*)buf88, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf97_buf97d_i[1] = {{(float*)buf97, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf110_buf110d_o[1] = {{(float*)buf110, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf119_buf119d_o[1] = {{(float*)buf119, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_4_bounds = sync_buffer[1];

  while (proc_3_4_bounds)
  {

    // Kernel call : i46:orthogonalize<32>
    window_buf88_buf88d_i->setData(*window_buf88_buf88d_i, (float*)buf88, (float*)buf88d, 1-index, 0);
    window_buf88_buf88d_i->acquire(*window_buf88_buf88d_i, LOCK_2_4_0_3936, LOCK_2_4_1_2080, 1-index);
    window_buf97_buf97d_i->setData(*window_buf97_buf97d_i, (float*)buf97, (float*)buf97d, 1-index, 0);
    window_buf97_buf97d_i->acquire(*window_buf97_buf97d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf110_buf110d_o->setData(*window_buf110_buf110d_o, (float*)buf110, (float*)buf110d, 1-index, 0);
    window_buf110_buf110d_o->acquire(*window_buf110_buf110d_o, LOCK_3_5_0_8032, LOCK_3_5_1_0, 1-index);
    window_buf119_buf119d_o->setData(*window_buf119_buf119d_o, (float*)buf119, (float*)buf119d, 1-index, 0);
    window_buf119_buf119d_o->acquire(*window_buf119_buf119d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    orthogonalize<32>(window_buf88_buf88d_i[0],window_buf97_buf97d_i[0],window_buf110_buf110d_o[0],window_buf119_buf119d_o[0]);
    window_buf88_buf88d_i->release(*window_buf88_buf88d_i, LOCK_2_4_0_3936, LOCK_2_4_1_2080, 1-index);
    window_buf97_buf97d_i->release(*window_buf97_buf97d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf110_buf110d_o->release(*window_buf110_buf110d_o, LOCK_3_5_0_8032, LOCK_3_5_1_0, 1-index);
    window_buf119_buf119d_o->release(*window_buf119_buf119d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_4_bounds > 0)
      --proc_3_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}