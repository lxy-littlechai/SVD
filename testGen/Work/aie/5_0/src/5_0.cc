// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/5_0/src/5_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_0_0_0 48
#define LOCK_5_0_1_8032 49
#define LOCK_5_1_4_0 36
#define LOCK_5_1_5_0 37
#define LOCK_5_1_2_160 34
#define LOCK_5_1_3_160 35
#define LOCK_5_1_0_0 32
#define LOCK_5_1_1_0 33

// Declare shared memory buffers
v4float buf30[9];
v4float buf30d[9];
v4float buf31[9];
v4float buf31d[9];
v4float buf8[9];
v4float buf8d[9];
v4float buf9[9];
v4float buf9d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_i[1] = {{(float*)buf8, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9_buf9d_i[1] = {{(float*)buf9, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_o[1] = {{(float*)buf30, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_o[1] = {{(float*)buf31, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_0_bounds = sync_buffer[1];

  while (proc_5_0_bounds)
  {

    // Kernel call : i4:orthogonalize<32>
    window_buf8_buf8d_i->setData(*window_buf8_buf8d_i, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_i->acquire(*window_buf8_buf8d_i, LOCK_5_0_0_0, LOCK_5_0_1_8032, 1-index);
    window_buf9_buf9d_i->setData(*window_buf9_buf9d_i, (float*)buf9, (float*)buf9d, 1-index, 0);
    window_buf9_buf9d_i->acquire(*window_buf9_buf9d_i, LOCK_5_1_4_0, LOCK_5_1_5_0, 1-index);
    window_buf30_buf30d_o->setData(*window_buf30_buf30d_o, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_o->acquire(*window_buf30_buf30d_o, LOCK_5_1_2_160, LOCK_5_1_3_160, 1-index);
    window_buf31_buf31d_o->setData(*window_buf31_buf31d_o, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_o->acquire(*window_buf31_buf31d_o, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    orthogonalize<32>(window_buf8_buf8d_i[0],window_buf9_buf9d_i[0],window_buf30_buf30d_o[0],window_buf31_buf31d_o[0]);
    window_buf8_buf8d_i->release(*window_buf8_buf8d_i, LOCK_5_0_0_0, LOCK_5_0_1_8032, 1-index);
    window_buf9_buf9d_i->release(*window_buf9_buf9d_i, LOCK_5_1_4_0, LOCK_5_1_5_0, 1-index);
    window_buf30_buf30d_o->release(*window_buf30_buf30d_o, LOCK_5_1_2_160, LOCK_5_1_3_160, 1-index);
    window_buf31_buf31d_o->release(*window_buf31_buf31d_o, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_0_bounds > 0)
      --proc_5_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}