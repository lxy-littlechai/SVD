// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/8_1/src/8_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_1_0_3040 16
#define LOCK_8_1_1_2080 17
#define LOCK_9_1_0_7136 48
#define LOCK_9_1_1_0 49
#define LOCK_8_2_0_0 32
#define LOCK_8_2_1_0 33
#define LOCK_8_2_2_0 34
#define LOCK_8_2_3_0 35

// Declare shared memory buffers
v4float buf76[65];
v4float buf76d[65];
v4float buf78[65];
v4float buf78d[65];
v4float buf84[65];
v4float buf84d[65];
v4float buf86[65];
v4float buf86d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf76_buf76d_i[1] = {{(float*)buf76, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf78_buf78d_i[1] = {{(float*)buf78, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf84_buf84d_o[1] = {{(float*)buf84, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf86_buf86d_o[1] = {{(float*)buf86, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_1_bounds = sync_buffer[1];

  while (proc_8_1_bounds)
  {

    // Kernel call : i42:orthogonalize<256>
    window_buf76_buf76d_i->setData(*window_buf76_buf76d_i, (float*)buf76, (float*)buf76d, 1-index, 0);
    window_buf76_buf76d_i->acquire(*window_buf76_buf76d_i, LOCK_8_1_0_3040, LOCK_8_1_1_2080, 1-index);
    window_buf78_buf78d_i->setData(*window_buf78_buf78d_i, (float*)buf78, (float*)buf78d, 1-index, 0);
    window_buf78_buf78d_i->acquire(*window_buf78_buf78d_i, LOCK_9_1_0_7136, LOCK_9_1_1_0, 1-index);
    window_buf84_buf84d_o->setData(*window_buf84_buf84d_o, (float*)buf84, (float*)buf84d, 1-index, 0);
    window_buf84_buf84d_o->acquire(*window_buf84_buf84d_o, LOCK_8_2_0_0, LOCK_8_2_1_0, 1-index);
    window_buf86_buf86d_o->setData(*window_buf86_buf86d_o, (float*)buf86, (float*)buf86d, 1-index, 0);
    window_buf86_buf86d_o->acquire(*window_buf86_buf86d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    orthogonalize<256>(window_buf76_buf76d_i[0],window_buf78_buf78d_i[0],window_buf84_buf84d_o[0],window_buf86_buf86d_o[0]);
    window_buf76_buf76d_i->release(*window_buf76_buf76d_i, LOCK_8_1_0_3040, LOCK_8_1_1_2080, 1-index);
    window_buf78_buf78d_i->release(*window_buf78_buf78d_i, LOCK_9_1_0_7136, LOCK_9_1_1_0, 1-index);
    window_buf84_buf84d_o->release(*window_buf84_buf84d_o, LOCK_8_2_0_0, LOCK_8_2_1_0, 1-index);
    window_buf86_buf86d_o->release(*window_buf86_buf86d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_1_bounds > 0)
      --proc_8_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}