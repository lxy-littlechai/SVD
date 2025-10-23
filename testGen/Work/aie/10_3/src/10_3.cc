// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/10_3/src/10_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_3_0_0 16
#define LOCK_10_3_1_0 17
#define LOCK_11_3_0_8032 48
#define LOCK_11_3_1_0 49
#define LOCK_10_4_0_3936 32
#define LOCK_10_4_1_2080 33
#define LOCK_10_4_2_0 34
#define LOCK_10_4_3_0 35

// Declare shared memory buffers
v4float buf104[9];
v4float buf104d[9];
v4float buf106[9];
v4float buf106d[9];
v4float buf82[9];
v4float buf82d[9];
v4float buf84[9];
v4float buf84d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_i[1] = {{(float*)buf82, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf84_buf84d_i[1] = {{(float*)buf84, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf104_buf104d_o[1] = {{(float*)buf104, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_o[1] = {{(float*)buf106, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_3_bounds = sync_buffer[1];

  while (proc_10_3_bounds)
  {

    // Kernel call : i42:orthogonalize<32>
    window_buf82_buf82d_i->setData(*window_buf82_buf82d_i, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_i->acquire(*window_buf82_buf82d_i, LOCK_10_3_0_0, LOCK_10_3_1_0, 1-index);
    window_buf84_buf84d_i->setData(*window_buf84_buf84d_i, (float*)buf84, (float*)buf84d, 1-index, 0);
    window_buf84_buf84d_i->acquire(*window_buf84_buf84d_i, LOCK_11_3_0_8032, LOCK_11_3_1_0, 1-index);
    window_buf104_buf104d_o->setData(*window_buf104_buf104d_o, (float*)buf104, (float*)buf104d, 1-index, 0);
    window_buf104_buf104d_o->acquire(*window_buf104_buf104d_o, LOCK_10_4_0_3936, LOCK_10_4_1_2080, 1-index);
    window_buf106_buf106d_o->setData(*window_buf106_buf106d_o, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_o->acquire(*window_buf106_buf106d_o, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    orthogonalize<32>(window_buf82_buf82d_i[0],window_buf84_buf84d_i[0],window_buf104_buf104d_o[0],window_buf106_buf106d_o[0]);
    window_buf82_buf82d_i->release(*window_buf82_buf82d_i, LOCK_10_3_0_0, LOCK_10_3_1_0, 1-index);
    window_buf84_buf84d_i->release(*window_buf84_buf84d_i, LOCK_11_3_0_8032, LOCK_11_3_1_0, 1-index);
    window_buf104_buf104d_o->release(*window_buf104_buf104d_o, LOCK_10_4_0_3936, LOCK_10_4_1_2080, 1-index);
    window_buf106_buf106d_o->release(*window_buf106_buf106d_o, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_3_bounds > 0)
      --proc_10_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}