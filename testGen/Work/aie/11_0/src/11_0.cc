// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_0/src/11_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_0_0_0 48
#define LOCK_11_0_1_8032 49
#define LOCK_11_0_2_0 50
#define LOCK_11_0_3_8032 51
#define LOCK_11_1_0_8032 32
#define LOCK_11_1_1_0 33
#define LOCK_11_1_2_0 34
#define LOCK_11_1_3_0 35

// Declare shared memory buffers
v4float buf20[9];
v4float buf20d[9];
v4float buf21[9];
v4float buf21d[9];
v4float buf42[9];
v4float buf42d[9];
v4float buf43[9];
v4float buf43d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_i[1] = {{(float*)buf20, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_i[1] = {{(float*)buf21, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf42_buf42d_o[1] = {{(float*)buf42, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_o[1] = {{(float*)buf43, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_0_bounds = sync_buffer[1];

  while (proc_11_0_bounds)
  {

    // Kernel call : i10:orthogonalize<32>
    window_buf20_buf20d_i->setData(*window_buf20_buf20d_i, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_i->acquire(*window_buf20_buf20d_i, LOCK_11_0_0_0, LOCK_11_0_1_8032, 1-index);
    window_buf21_buf21d_i->setData(*window_buf21_buf21d_i, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_i->acquire(*window_buf21_buf21d_i, LOCK_11_0_2_0, LOCK_11_0_3_8032, 1-index);
    window_buf42_buf42d_o->setData(*window_buf42_buf42d_o, (float*)buf42, (float*)buf42d, 1-index, 0);
    window_buf42_buf42d_o->acquire(*window_buf42_buf42d_o, LOCK_11_1_0_8032, LOCK_11_1_1_0, 1-index);
    window_buf43_buf43d_o->setData(*window_buf43_buf43d_o, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_o->acquire(*window_buf43_buf43d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    orthogonalize<32>(window_buf20_buf20d_i[0],window_buf21_buf21d_i[0],window_buf42_buf42d_o[0],window_buf43_buf43d_o[0]);
    window_buf20_buf20d_i->release(*window_buf20_buf20d_i, LOCK_11_0_0_0, LOCK_11_0_1_8032, 1-index);
    window_buf21_buf21d_i->release(*window_buf21_buf21d_i, LOCK_11_0_2_0, LOCK_11_0_3_8032, 1-index);
    window_buf42_buf42d_o->release(*window_buf42_buf42d_o, LOCK_11_1_0_8032, LOCK_11_1_1_0, 1-index);
    window_buf43_buf43d_o->release(*window_buf43_buf43d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_0_bounds > 0)
      --proc_11_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}