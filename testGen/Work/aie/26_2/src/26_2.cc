// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_2/src/26_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_2_0_0 16
#define LOCK_25_2_1_0 17
#define LOCK_26_2_2_0 50
#define LOCK_26_2_3_0 51
#define LOCK_26_3_0_0 32
#define LOCK_26_3_1_0 33
#define LOCK_26_3_2_0 34
#define LOCK_26_3_3_0 35

// Declare shared memory buffers
v4float buf365[9];
v4float buf365d[9];
v4float buf371[9];
v4float buf371d[9];
v4float buf387[9];
v4float buf387d[9];
v4float buf393[9];
v4float buf393d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf365_buf365d_i[1] = {{(float*)buf365, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf371_buf371d_i[1] = {{(float*)buf371, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf387_buf387d_o[1] = {{(float*)buf387, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf393_buf393d_o[1] = {{(float*)buf393, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_2_bounds = sync_buffer[1];

  while (proc_26_2_bounds)
  {

    // Kernel call : i177:orthogonalize<32>
    window_buf365_buf365d_i->setData(*window_buf365_buf365d_i, (float*)buf365, (float*)buf365d, 1-index, 0);
    window_buf365_buf365d_i->acquire(*window_buf365_buf365d_i, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf371_buf371d_i->setData(*window_buf371_buf371d_i, (float*)buf371, (float*)buf371d, 1-index, 0);
    window_buf371_buf371d_i->acquire(*window_buf371_buf371d_i, LOCK_26_2_2_0, LOCK_26_2_3_0, 1-index);
    window_buf387_buf387d_o->setData(*window_buf387_buf387d_o, (float*)buf387, (float*)buf387d, 1-index, 0);
    window_buf387_buf387d_o->acquire(*window_buf387_buf387d_o, LOCK_26_3_0_0, LOCK_26_3_1_0, 1-index);
    window_buf393_buf393d_o->setData(*window_buf393_buf393d_o, (float*)buf393, (float*)buf393d, 1-index, 0);
    window_buf393_buf393d_o->acquire(*window_buf393_buf393d_o, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    orthogonalize<32>(window_buf365_buf365d_i[0],window_buf371_buf371d_i[0],window_buf387_buf387d_o[0],window_buf393_buf393d_o[0]);
    window_buf365_buf365d_i->release(*window_buf365_buf365d_i, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf371_buf371d_i->release(*window_buf371_buf371d_i, LOCK_26_2_2_0, LOCK_26_2_3_0, 1-index);
    window_buf387_buf387d_o->release(*window_buf387_buf387d_o, LOCK_26_3_0_0, LOCK_26_3_1_0, 1-index);
    window_buf393_buf393d_o->release(*window_buf393_buf393d_o, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_2_bounds > 0)
      --proc_26_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}