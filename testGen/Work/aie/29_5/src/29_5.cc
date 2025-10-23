// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_5/src/29_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_5_0_8032 16
#define LOCK_29_5_1_0 17
#define LOCK_30_5_2_0 50
#define LOCK_30_5_3_0 51
#define LOCK_29_6_0_0 32
#define LOCK_29_6_1_0 33
#define LOCK_29_6_2_0 34
#define LOCK_29_6_3_0 35

// Declare shared memory buffers
v4float buf427[9];
v4float buf427d[9];
v4float buf430[9];
v4float buf430d[9];
v4float buf449[9];
v4float buf449d[9];
v4float buf452[9];
v4float buf452d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf427_buf427d_i[1] = {{(float*)buf427, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf430_buf430d_i[1] = {{(float*)buf430, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf449_buf449d_o[1] = {{(float*)buf449, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf452_buf452d_o[1] = {{(float*)buf452, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_5_bounds = sync_buffer[1];

  while (proc_29_5_bounds)
  {

    // Kernel call : i213:orthogonalize<32>
    window_buf427_buf427d_i->setData(*window_buf427_buf427d_i, (float*)buf427, (float*)buf427d, 1-index, 0);
    window_buf427_buf427d_i->acquire(*window_buf427_buf427d_i, LOCK_29_5_0_8032, LOCK_29_5_1_0, 1-index);
    window_buf430_buf430d_i->setData(*window_buf430_buf430d_i, (float*)buf430, (float*)buf430d, 1-index, 0);
    window_buf430_buf430d_i->acquire(*window_buf430_buf430d_i, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    window_buf449_buf449d_o->setData(*window_buf449_buf449d_o, (float*)buf449, (float*)buf449d, 1-index, 0);
    window_buf449_buf449d_o->acquire(*window_buf449_buf449d_o, LOCK_29_6_0_0, LOCK_29_6_1_0, 1-index);
    window_buf452_buf452d_o->setData(*window_buf452_buf452d_o, (float*)buf452, (float*)buf452d, 1-index, 0);
    window_buf452_buf452d_o->acquire(*window_buf452_buf452d_o, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    orthogonalize<32>(window_buf427_buf427d_i[0],window_buf430_buf430d_i[0],window_buf449_buf449d_o[0],window_buf452_buf452d_o[0]);
    window_buf427_buf427d_i->release(*window_buf427_buf427d_i, LOCK_29_5_0_8032, LOCK_29_5_1_0, 1-index);
    window_buf430_buf430d_i->release(*window_buf430_buf430d_i, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    window_buf449_buf449d_o->release(*window_buf449_buf449d_o, LOCK_29_6_0_0, LOCK_29_6_1_0, 1-index);
    window_buf452_buf452d_o->release(*window_buf452_buf452d_o, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_5_bounds > 0)
      --proc_29_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}