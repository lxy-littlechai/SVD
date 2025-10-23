// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_0/src/2_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_0_0_0 48
#define LOCK_2_0_1_0 49
#define LOCK_2_1_4_0 36
#define LOCK_2_1_5_4416 37
#define LOCK_2_1_2_4256 34
#define LOCK_2_1_3_8032 35
#define LOCK_2_1_0_8032 32
#define LOCK_2_1_1_160 33

// Declare shared memory buffers
v4float buf2[9];
v4float buf24[9];
v4float buf24d[9];
v4float buf25[9];
v4float buf25d[9];
v4float buf2d[9];
v4float buf3[9];
v4float buf3d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf2_buf2d_i[1] = {{(float*)buf2, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf3_buf3d_i[1] = {{(float*)buf3, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_o[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_o[1] = {{(float*)buf25, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_0_bounds = sync_buffer[1];

  while (proc_2_0_bounds)
  {

    // Kernel call : i1:orthogonalize<32>
    window_buf2_buf2d_i->setData(*window_buf2_buf2d_i, (float*)buf2, (float*)buf2d, 1-index, 0);
    window_buf2_buf2d_i->acquire(*window_buf2_buf2d_i, LOCK_2_0_0_0, LOCK_2_0_1_0, 1-index);
    window_buf3_buf3d_i->setData(*window_buf3_buf3d_i, (float*)buf3, (float*)buf3d, 1-index, 0);
    window_buf3_buf3d_i->acquire(*window_buf3_buf3d_i, LOCK_2_1_4_0, LOCK_2_1_5_4416, 1-index);
    window_buf24_buf24d_o->setData(*window_buf24_buf24d_o, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_o->acquire(*window_buf24_buf24d_o, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf25_buf25d_o->setData(*window_buf25_buf25d_o, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_o->acquire(*window_buf25_buf25d_o, LOCK_2_1_0_8032, LOCK_2_1_1_160, 1-index);
    orthogonalize<32>(window_buf2_buf2d_i[0],window_buf3_buf3d_i[0],window_buf24_buf24d_o[0],window_buf25_buf25d_o[0]);
    window_buf2_buf2d_i->release(*window_buf2_buf2d_i, LOCK_2_0_0_0, LOCK_2_0_1_0, 1-index);
    window_buf3_buf3d_i->release(*window_buf3_buf3d_i, LOCK_2_1_4_0, LOCK_2_1_5_4416, 1-index);
    window_buf24_buf24d_o->release(*window_buf24_buf24d_o, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf25_buf25d_o->release(*window_buf25_buf25d_o, LOCK_2_1_0_8032, LOCK_2_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_0_bounds > 0)
      --proc_2_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}