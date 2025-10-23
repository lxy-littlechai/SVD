// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_1/src/1_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_1_0_160 16
#define LOCK_1_1_1_160 17
#define LOCK_2_1_0_8032 48
#define LOCK_2_1_1_160 49
#define LOCK_1_2_0_0 32
#define LOCK_1_2_1_0 33
#define LOCK_1_2_2_0 34
#define LOCK_1_2_3_0 35

// Declare shared memory buffers
v4float buf22[9];
v4float buf22d[9];
v4float buf25[9];
v4float buf25d[9];
v4float buf44[9];
v4float buf44d[9];
v4float buf47[9];
v4float buf47d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_i[1] = {{(float*)buf22, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_i[1] = {{(float*)buf25, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_o[1] = {{(float*)buf44, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_o[1] = {{(float*)buf47, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_1_bounds = sync_buffer[1];

  while (proc_1_1_bounds)
  {

    // Kernel call : i11:orthogonalize<32>
    window_buf22_buf22d_i->setData(*window_buf22_buf22d_i, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_i->acquire(*window_buf22_buf22d_i, LOCK_1_1_0_160, LOCK_1_1_1_160, 1-index);
    window_buf25_buf25d_i->setData(*window_buf25_buf25d_i, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_i->acquire(*window_buf25_buf25d_i, LOCK_2_1_0_8032, LOCK_2_1_1_160, 1-index);
    window_buf44_buf44d_o->setData(*window_buf44_buf44d_o, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_o->acquire(*window_buf44_buf44d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf47_buf47d_o->setData(*window_buf47_buf47d_o, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_o->acquire(*window_buf47_buf47d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    orthogonalize<32>(window_buf22_buf22d_i[0],window_buf25_buf25d_i[0],window_buf44_buf44d_o[0],window_buf47_buf47d_o[0]);
    window_buf22_buf22d_i->release(*window_buf22_buf22d_i, LOCK_1_1_0_160, LOCK_1_1_1_160, 1-index);
    window_buf25_buf25d_i->release(*window_buf25_buf25d_i, LOCK_2_1_0_8032, LOCK_2_1_1_160, 1-index);
    window_buf44_buf44d_o->release(*window_buf44_buf44d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf47_buf47d_o->release(*window_buf47_buf47d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_1_bounds > 0)
      --proc_1_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}