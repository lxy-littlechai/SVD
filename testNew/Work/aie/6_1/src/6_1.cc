// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/6_1/src/6_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_1_0_3936 16
#define LOCK_6_1_1_2080 17
#define LOCK_7_1_0_4256 48
#define LOCK_7_1_1_8032 49
#define LOCK_6_2_0_8032 32
#define LOCK_6_2_1_0 33
#define LOCK_6_2_2_0 34
#define LOCK_6_2_3_0 35

// Declare shared memory buffers
v4float buf20[9];
v4float buf20d[9];
v4float buf22[9];
v4float buf22d[9];
v4float buf24[9];
v4float buf24d[9];
v4float buf26[9];
v4float buf26d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_i[1] = {{(float*)buf20, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_i[1] = {{(float*)buf22, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_o[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_o[1] = {{(float*)buf26, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_1_bounds = sync_buffer[1];

  while (proc_6_1_bounds)
  {

    // Kernel call : i16:orthogonalize<32>
    window_buf20_buf20d_i->setData(*window_buf20_buf20d_i, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_i->acquire(*window_buf20_buf20d_i, LOCK_6_1_0_3936, LOCK_6_1_1_2080, 1-index);
    window_buf22_buf22d_i->setData(*window_buf22_buf22d_i, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_i->acquire(*window_buf22_buf22d_i, LOCK_7_1_0_4256, LOCK_7_1_1_8032, 1-index);
    window_buf24_buf24d_o->setData(*window_buf24_buf24d_o, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_o->acquire(*window_buf24_buf24d_o, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf26_buf26d_o->setData(*window_buf26_buf26d_o, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_o->acquire(*window_buf26_buf26d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    orthogonalize<32>(window_buf20_buf20d_i[0],window_buf22_buf22d_i[0],window_buf24_buf24d_o[0],window_buf26_buf26d_o[0]);
    window_buf20_buf20d_i->release(*window_buf20_buf20d_i, LOCK_6_1_0_3936, LOCK_6_1_1_2080, 1-index);
    window_buf22_buf22d_i->release(*window_buf22_buf22d_i, LOCK_7_1_0_4256, LOCK_7_1_1_8032, 1-index);
    window_buf24_buf24d_o->release(*window_buf24_buf24d_o, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf26_buf26d_o->release(*window_buf26_buf26d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_1_bounds > 0)
      --proc_6_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}