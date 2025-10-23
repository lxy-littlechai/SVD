// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/31_1/src/31_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_1_0_8032 16
#define LOCK_31_1_1_0 17
#define LOCK_32_1_2_0 50
#define LOCK_32_1_3_0 51
#define LOCK_31_2_0_0 32
#define LOCK_31_2_1_0 33
#define LOCK_31_2_2_0 34
#define LOCK_31_2_3_0 35

// Declare shared memory buffers
v4float buf331[9];
v4float buf331d[9];
v4float buf342[9];
v4float buf342d[9];
v4float buf353[9];
v4float buf353d[9];
v4float buf364[9];
v4float buf364d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf331_buf331d_i[1] = {{(float*)buf331, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf342_buf342d_i[1] = {{(float*)buf342, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf353_buf353d_o[1] = {{(float*)buf353, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf364_buf364d_o[1] = {{(float*)buf364, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_1_bounds = sync_buffer[1];

  while (proc_31_1_bounds)
  {

    // Kernel call : i171:orthogonalize<32>
    window_buf331_buf331d_i->setData(*window_buf331_buf331d_i, (float*)buf331, (float*)buf331d, 1-index, 0);
    window_buf331_buf331d_i->acquire(*window_buf331_buf331d_i, LOCK_31_1_0_8032, LOCK_31_1_1_0, 1-index);
    window_buf342_buf342d_i->setData(*window_buf342_buf342d_i, (float*)buf342, (float*)buf342d, 1-index, 0);
    window_buf342_buf342d_i->acquire(*window_buf342_buf342d_i, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    window_buf353_buf353d_o->setData(*window_buf353_buf353d_o, (float*)buf353, (float*)buf353d, 1-index, 0);
    window_buf353_buf353d_o->acquire(*window_buf353_buf353d_o, LOCK_31_2_0_0, LOCK_31_2_1_0, 1-index);
    window_buf364_buf364d_o->setData(*window_buf364_buf364d_o, (float*)buf364, (float*)buf364d, 1-index, 0);
    window_buf364_buf364d_o->acquire(*window_buf364_buf364d_o, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    orthogonalize<32>(window_buf331_buf331d_i[0],window_buf342_buf342d_i[0],window_buf353_buf353d_o[0],window_buf364_buf364d_o[0]);
    window_buf331_buf331d_i->release(*window_buf331_buf331d_i, LOCK_31_1_0_8032, LOCK_31_1_1_0, 1-index);
    window_buf342_buf342d_i->release(*window_buf342_buf342d_i, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    window_buf353_buf353d_o->release(*window_buf353_buf353d_o, LOCK_31_2_0_0, LOCK_31_2_1_0, 1-index);
    window_buf364_buf364d_o->release(*window_buf364_buf364d_o, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_1_bounds > 0)
      --proc_31_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}