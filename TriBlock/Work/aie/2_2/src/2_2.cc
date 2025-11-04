// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/TriBlock/./Work/aie/2_2/src/2_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_2_0_0 16
#define LOCK_1_2_1_0 17
#define LOCK_2_2_0_8032 48
#define LOCK_2_2_1_0 49
#define LOCK_2_3_0_8032 32
#define LOCK_2_3_1_0 33
#define LOCK_2_3_2_0 34
#define LOCK_2_3_3_0 35

// Declare shared memory buffers
v4float buf11[9];
v4float buf11d[9];
v4float buf12[9];
v4float buf12d[9];
v4float buf15[9];
v4float buf15d[9];
v4float buf8[9];
v4float buf8d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_i[1] = {{(float*)buf8, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf11_buf11d_i[1] = {{(float*)buf11, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf12_buf12d_o[1] = {{(float*)buf12, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf15_buf15d_o[1] = {{(float*)buf15, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_2_bounds = sync_buffer[1];

  while (proc_2_2_bounds)
  {

    // Kernel call : i5:orthogonalize<32>
    window_buf8_buf8d_i->setData(*window_buf8_buf8d_i, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_i->acquire(*window_buf8_buf8d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf11_buf11d_i->setData(*window_buf11_buf11d_i, (float*)buf11, (float*)buf11d, 1-index, 0);
    window_buf11_buf11d_i->acquire(*window_buf11_buf11d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf12_buf12d_o->setData(*window_buf12_buf12d_o, (float*)buf12, (float*)buf12d, 1-index, 0);
    window_buf12_buf12d_o->acquire(*window_buf12_buf12d_o, LOCK_2_3_0_8032, LOCK_2_3_1_0, 1-index);
    window_buf15_buf15d_o->setData(*window_buf15_buf15d_o, (float*)buf15, (float*)buf15d, 1-index, 0);
    window_buf15_buf15d_o->acquire(*window_buf15_buf15d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    orthogonalize<32>(window_buf8_buf8d_i[0],window_buf11_buf11d_i[0],window_buf12_buf12d_o[0],window_buf15_buf15d_o[0]);
    window_buf8_buf8d_i->release(*window_buf8_buf8d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf11_buf11d_i->release(*window_buf11_buf11d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf12_buf12d_o->release(*window_buf12_buf12d_o, LOCK_2_3_0_8032, LOCK_2_3_1_0, 1-index);
    window_buf15_buf15d_o->release(*window_buf15_buf15d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_2_bounds > 0)
      --proc_2_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}