// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_2/src/8_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_2_0_0 16
#define LOCK_7_2_1_0 17
#define LOCK_8_2_2_0 50
#define LOCK_8_2_3_0 51
#define LOCK_8_3_0_3936 32
#define LOCK_8_3_1_2080 33
#define LOCK_8_3_2_0 34
#define LOCK_8_3_3_0 35

// Declare shared memory buffers
v4float buf56[9];
v4float buf56d[9];
v4float buf61[9];
v4float buf61d[9];
v4float buf78[9];
v4float buf78d[9];
v4float buf83[9];
v4float buf83d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_i[1] = {{(float*)buf56, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_i[1] = {{(float*)buf61, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf78_buf78d_o[1] = {{(float*)buf78, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_o[1] = {{(float*)buf83, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_2_bounds = sync_buffer[1];

  while (proc_8_2_bounds)
  {

    // Kernel call : i29:orthogonalize<32>
    window_buf56_buf56d_i->setData(*window_buf56_buf56d_i, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_i->acquire(*window_buf56_buf56d_i, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf61_buf61d_i->setData(*window_buf61_buf61d_i, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_i->acquire(*window_buf61_buf61d_i, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    window_buf78_buf78d_o->setData(*window_buf78_buf78d_o, (float*)buf78, (float*)buf78d, 1-index, 0);
    window_buf78_buf78d_o->acquire(*window_buf78_buf78d_o, LOCK_8_3_0_3936, LOCK_8_3_1_2080, 1-index);
    window_buf83_buf83d_o->setData(*window_buf83_buf83d_o, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_o->acquire(*window_buf83_buf83d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    orthogonalize<32>(window_buf56_buf56d_i[0],window_buf61_buf61d_i[0],window_buf78_buf78d_o[0],window_buf83_buf83d_o[0]);
    window_buf56_buf56d_i->release(*window_buf56_buf56d_i, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf61_buf61d_i->release(*window_buf61_buf61d_i, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    window_buf78_buf78d_o->release(*window_buf78_buf78d_o, LOCK_8_3_0_3936, LOCK_8_3_1_2080, 1-index);
    window_buf83_buf83d_o->release(*window_buf83_buf83d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_2_bounds > 0)
      --proc_8_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}