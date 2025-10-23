// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_5/src/2_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_5_0_8032 16
#define LOCK_2_5_1_0 17
#define LOCK_3_5_2_0 50
#define LOCK_3_5_3_0 51
#define LOCK_2_6_0_0 32
#define LOCK_2_6_1_0 33
#define LOCK_2_6_2_0 34
#define LOCK_2_6_3_0 35

// Declare shared memory buffers
v4float buf111[9];
v4float buf111d[9];
v4float buf119[9];
v4float buf119d[9];
v4float buf133[9];
v4float buf133d[9];
v4float buf141[9];
v4float buf141d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf111_buf111d_i[1] = {{(float*)buf111, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf119_buf119d_i[1] = {{(float*)buf119, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf133_buf133d_o[1] = {{(float*)buf133, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf141_buf141d_o[1] = {{(float*)buf141, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_5_bounds = sync_buffer[1];

  while (proc_2_5_bounds)
  {

    // Kernel call : i56:orthogonalize<32>
    window_buf111_buf111d_i->setData(*window_buf111_buf111d_i, (float*)buf111, (float*)buf111d, 1-index, 0);
    window_buf111_buf111d_i->acquire(*window_buf111_buf111d_i, LOCK_2_5_0_8032, LOCK_2_5_1_0, 1-index);
    window_buf119_buf119d_i->setData(*window_buf119_buf119d_i, (float*)buf119, (float*)buf119d, 1-index, 0);
    window_buf119_buf119d_i->acquire(*window_buf119_buf119d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf133_buf133d_o->setData(*window_buf133_buf133d_o, (float*)buf133, (float*)buf133d, 1-index, 0);
    window_buf133_buf133d_o->acquire(*window_buf133_buf133d_o, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf141_buf141d_o->setData(*window_buf141_buf141d_o, (float*)buf141, (float*)buf141d, 1-index, 0);
    window_buf141_buf141d_o->acquire(*window_buf141_buf141d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    orthogonalize<32>(window_buf111_buf111d_i[0],window_buf119_buf119d_i[0],window_buf133_buf133d_o[0],window_buf141_buf141d_o[0]);
    window_buf111_buf111d_i->release(*window_buf111_buf111d_i, LOCK_2_5_0_8032, LOCK_2_5_1_0, 1-index);
    window_buf119_buf119d_i->release(*window_buf119_buf119d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf133_buf133d_o->release(*window_buf133_buf133d_o, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf141_buf141d_o->release(*window_buf141_buf141d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_5_bounds > 0)
      --proc_2_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}