// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_2/src/13_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_2_0_0 16
#define LOCK_12_2_1_0 17
#define LOCK_13_2_2_0 50
#define LOCK_13_2_3_0 51
#define LOCK_13_1_0_8032 0
#define LOCK_13_1_1_0 1
#define LOCK_13_1_2_0 2
#define LOCK_13_1_3_0 3

// Declare shared memory buffers
v4float buf275dr[9];
v4float buf275r[9];
v4float buf277[9];
v4float buf277d[9];
v4float buf297[9];
v4float buf297d[9];
v4float buf299[9];
v4float buf299d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf275r_buf275dr_i[1] = {{(float*)buf275r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf277_buf277d_i[1] = {{(float*)buf277, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf297_buf297d_o[1] = {{(float*)buf297, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf299_buf299d_o[1] = {{(float*)buf299, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_2_bounds = sync_buffer[1];

  while (proc_13_2_bounds)
  {

    // Kernel call : i132:orthogonalize<32>
    window_buf275r_buf275dr_i->setData(*window_buf275r_buf275dr_i, (float*)buf275r, (float*)buf275dr, 1-index, 0);
    window_buf275r_buf275dr_i->acquire(*window_buf275r_buf275dr_i, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf277_buf277d_i->setData(*window_buf277_buf277d_i, (float*)buf277, (float*)buf277d, 1-index, 0);
    window_buf277_buf277d_i->acquire(*window_buf277_buf277d_i, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    window_buf297_buf297d_o->setData(*window_buf297_buf297d_o, (float*)buf297, (float*)buf297d, 1-index, 0);
    window_buf297_buf297d_o->acquire(*window_buf297_buf297d_o, LOCK_13_1_0_8032, LOCK_13_1_1_0, 1-index);
    window_buf299_buf299d_o->setData(*window_buf299_buf299d_o, (float*)buf299, (float*)buf299d, 1-index, 0);
    window_buf299_buf299d_o->acquire(*window_buf299_buf299d_o, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    orthogonalize<32>(window_buf275r_buf275dr_i[0],window_buf277_buf277d_i[0],window_buf297_buf297d_o[0],window_buf299_buf299d_o[0]);
    window_buf275r_buf275dr_i->release(*window_buf275r_buf275dr_i, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf277_buf277d_i->release(*window_buf277_buf277d_i, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    window_buf297_buf297d_o->release(*window_buf297_buf297d_o, LOCK_13_1_0_8032, LOCK_13_1_1_0, 1-index);
    window_buf299_buf299d_o->release(*window_buf299_buf299d_o, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_2_bounds > 0)
      --proc_13_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}