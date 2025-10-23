// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_4/src/34_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_4_0_3936 16
#define LOCK_33_4_1_2080 17
#define LOCK_34_4_2_0 50
#define LOCK_34_4_3_0 51
#define LOCK_34_5_0_8032 32
#define LOCK_34_5_1_0 33
#define LOCK_34_5_2_0 34
#define LOCK_34_5_3_0 35

// Declare shared memory buffers
v4float buf396[9];
v4float buf396d[9];
v4float buf400[9];
v4float buf400d[9];
v4float buf418[9];
v4float buf418d[9];
v4float buf422[9];
v4float buf422d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf396_buf396d_i[1] = {{(float*)buf396, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf400_buf400d_i[1] = {{(float*)buf400, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf418_buf418d_o[1] = {{(float*)buf418, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf422_buf422d_o[1] = {{(float*)buf422, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_4_bounds = sync_buffer[1];

  while (proc_34_4_bounds)
  {

    // Kernel call : i207:orthogonalize<32>
    window_buf396_buf396d_i->setData(*window_buf396_buf396d_i, (float*)buf396, (float*)buf396d, 1-index, 0);
    window_buf396_buf396d_i->acquire(*window_buf396_buf396d_i, LOCK_33_4_0_3936, LOCK_33_4_1_2080, 1-index);
    window_buf400_buf400d_i->setData(*window_buf400_buf400d_i, (float*)buf400, (float*)buf400d, 1-index, 0);
    window_buf400_buf400d_i->acquire(*window_buf400_buf400d_i, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    window_buf418_buf418d_o->setData(*window_buf418_buf418d_o, (float*)buf418, (float*)buf418d, 1-index, 0);
    window_buf418_buf418d_o->acquire(*window_buf418_buf418d_o, LOCK_34_5_0_8032, LOCK_34_5_1_0, 1-index);
    window_buf422_buf422d_o->setData(*window_buf422_buf422d_o, (float*)buf422, (float*)buf422d, 1-index, 0);
    window_buf422_buf422d_o->acquire(*window_buf422_buf422d_o, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    orthogonalize<32>(window_buf396_buf396d_i[0],window_buf400_buf400d_i[0],window_buf418_buf418d_o[0],window_buf422_buf422d_o[0]);
    window_buf396_buf396d_i->release(*window_buf396_buf396d_i, LOCK_33_4_0_3936, LOCK_33_4_1_2080, 1-index);
    window_buf400_buf400d_i->release(*window_buf400_buf400d_i, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    window_buf418_buf418d_o->release(*window_buf418_buf418d_o, LOCK_34_5_0_8032, LOCK_34_5_1_0, 1-index);
    window_buf422_buf422d_o->release(*window_buf422_buf422d_o, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_4_bounds > 0)
      --proc_34_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}