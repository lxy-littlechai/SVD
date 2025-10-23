// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/1_2/src/1_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_3_0_0 32
#define LOCK_1_3_1_0 33
#define LOCK_1_2_2_0 50
#define LOCK_1_2_3_0 51
#define LOCK_1_3_2_320 34
#define LOCK_1_3_3_160 35
#define LOCK_1_3_4_0 36
#define LOCK_1_3_5_0 37

// Declare shared memory buffers
v4float buf10[9];
v4float buf10d[9];
v4float buf13[9];
v4float buf13d[9];
v4float buf14[9];
v4float buf14d[9];
v4float buf9dr[9];
v4float buf9r[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9r_buf9dr_i[1] = {{(float*)buf9r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf10_buf10d_i[1] = {{(float*)buf10, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf13_buf13d_o[1] = {{(float*)buf13, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf14_buf14d_o[1] = {{(float*)buf14, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_2_bounds = sync_buffer[1];

  while (proc_1_2_bounds)
  {

    // Kernel call : i4:orthogonalize<32>
    window_buf9r_buf9dr_i->setData(*window_buf9r_buf9dr_i, (float*)buf9r, (float*)buf9dr, 1-index, 0);
    window_buf9r_buf9dr_i->acquire(*window_buf9r_buf9dr_i, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf10_buf10d_i->setData(*window_buf10_buf10d_i, (float*)buf10, (float*)buf10d, 1-index, 0);
    window_buf10_buf10d_i->acquire(*window_buf10_buf10d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf13_buf13d_o->setData(*window_buf13_buf13d_o, (float*)buf13, (float*)buf13d, 1-index, 0);
    window_buf13_buf13d_o->acquire(*window_buf13_buf13d_o, LOCK_1_3_2_320, LOCK_1_3_3_160, 1-index);
    window_buf14_buf14d_o->setData(*window_buf14_buf14d_o, (float*)buf14, (float*)buf14d, 1-index, 0);
    window_buf14_buf14d_o->acquire(*window_buf14_buf14d_o, LOCK_1_3_4_0, LOCK_1_3_5_0, 1-index);
    orthogonalize<32>(window_buf9r_buf9dr_i[0],window_buf10_buf10d_i[0],window_buf13_buf13d_o[0],window_buf14_buf14d_o[0]);
    window_buf9r_buf9dr_i->release(*window_buf9r_buf9dr_i, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf10_buf10d_i->release(*window_buf10_buf10d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf13_buf13d_o->release(*window_buf13_buf13d_o, LOCK_1_3_2_320, LOCK_1_3_3_160, 1-index);
    window_buf14_buf14d_o->release(*window_buf14_buf14d_o, LOCK_1_3_4_0, LOCK_1_3_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_2_bounds > 0)
      --proc_1_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}