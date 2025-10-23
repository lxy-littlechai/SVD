// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/31_6/src/31_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_6_0_3936 16
#define LOCK_30_6_1_5952 17
#define LOCK_31_6_2_0 50
#define LOCK_31_6_3_0 51
#define LOCK_31_7_0_8032 32
#define LOCK_31_7_1_0 33
#define LOCK_31_7_2_0 34
#define LOCK_31_7_3_0 35

// Declare shared memory buffers
v4float buf447[9];
v4float buf447d[9];
v4float buf448[9];
v4float buf448d[9];
v4float buf469[9];
v4float buf469d[9];
v4float buf470[9];
v4float buf470d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf447_buf447d_i[1] = {{(float*)buf447, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf448_buf448d_i[1] = {{(float*)buf448, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf469_buf469d_o[1] = {{(float*)buf469, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf470_buf470d_o[1] = {{(float*)buf470, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_6_bounds = sync_buffer[1];

  while (proc_31_6_bounds)
  {

    // Kernel call : i226:orthogonalize<32>
    window_buf447_buf447d_i->setData(*window_buf447_buf447d_i, (float*)buf447, (float*)buf447d, 1-index, 0);
    window_buf447_buf447d_i->acquire(*window_buf447_buf447d_i, LOCK_30_6_0_3936, LOCK_30_6_1_5952, 1-index);
    window_buf448_buf448d_i->setData(*window_buf448_buf448d_i, (float*)buf448, (float*)buf448d, 1-index, 0);
    window_buf448_buf448d_i->acquire(*window_buf448_buf448d_i, LOCK_31_6_2_0, LOCK_31_6_3_0, 1-index);
    window_buf469_buf469d_o->setData(*window_buf469_buf469d_o, (float*)buf469, (float*)buf469d, 1-index, 0);
    window_buf469_buf469d_o->acquire(*window_buf469_buf469d_o, LOCK_31_7_0_8032, LOCK_31_7_1_0, 1-index);
    window_buf470_buf470d_o->setData(*window_buf470_buf470d_o, (float*)buf470, (float*)buf470d, 1-index, 0);
    window_buf470_buf470d_o->acquire(*window_buf470_buf470d_o, LOCK_31_7_2_0, LOCK_31_7_3_0, 1-index);
    orthogonalize<32>(window_buf447_buf447d_i[0],window_buf448_buf448d_i[0],window_buf469_buf469d_o[0],window_buf470_buf470d_o[0]);
    window_buf447_buf447d_i->release(*window_buf447_buf447d_i, LOCK_30_6_0_3936, LOCK_30_6_1_5952, 1-index);
    window_buf448_buf448d_i->release(*window_buf448_buf448d_i, LOCK_31_6_2_0, LOCK_31_6_3_0, 1-index);
    window_buf469_buf469d_o->release(*window_buf469_buf469d_o, LOCK_31_7_0_8032, LOCK_31_7_1_0, 1-index);
    window_buf470_buf470d_o->release(*window_buf470_buf470d_o, LOCK_31_7_2_0, LOCK_31_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_6_bounds > 0)
      --proc_31_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}