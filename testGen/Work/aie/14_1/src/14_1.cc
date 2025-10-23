// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_1/src/14_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_1_0_0 16
#define LOCK_14_1_1_0 17
#define LOCK_15_1_2_0 50
#define LOCK_15_1_3_0 51
#define LOCK_14_0_0_0 0
#define LOCK_14_0_1_0 1
#define LOCK_14_0_2_0 2
#define LOCK_14_0_3_0 3

// Declare shared memory buffers
v4float buf295[9];
v4float buf295d[9];
v4float buf303[9];
v4float buf303d[9];
v4float buf317[9];
v4float buf317d[9];
v4float buf325[9];
v4float buf325d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf295_buf295d_i[1] = {{(float*)buf295, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf303_buf303d_i[1] = {{(float*)buf303, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf317_buf317d_o[1] = {{(float*)buf317, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf325_buf325d_o[1] = {{(float*)buf325, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_1_bounds = sync_buffer[1];

  while (proc_14_1_bounds)
  {

    // Kernel call : i144:orthogonalize<32>
    window_buf295_buf295d_i->setData(*window_buf295_buf295d_i, (float*)buf295, (float*)buf295d, 1-index, 0);
    window_buf295_buf295d_i->acquire(*window_buf295_buf295d_i, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf303_buf303d_i->setData(*window_buf303_buf303d_i, (float*)buf303, (float*)buf303d, 1-index, 0);
    window_buf303_buf303d_i->acquire(*window_buf303_buf303d_i, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    window_buf317_buf317d_o->setData(*window_buf317_buf317d_o, (float*)buf317, (float*)buf317d, 1-index, 0);
    window_buf317_buf317d_o->acquire(*window_buf317_buf317d_o, LOCK_14_0_0_0, LOCK_14_0_1_0, 1-index);
    window_buf325_buf325d_o->setData(*window_buf325_buf325d_o, (float*)buf325, (float*)buf325d, 1-index, 0);
    window_buf325_buf325d_o->acquire(*window_buf325_buf325d_o, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    orthogonalize<32>(window_buf295_buf295d_i[0],window_buf303_buf303d_i[0],window_buf317_buf317d_o[0],window_buf325_buf325d_o[0]);
    window_buf295_buf295d_i->release(*window_buf295_buf295d_i, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf303_buf303d_i->release(*window_buf303_buf303d_i, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    window_buf317_buf317d_o->release(*window_buf317_buf317d_o, LOCK_14_0_0_0, LOCK_14_0_1_0, 1-index);
    window_buf325_buf325d_o->release(*window_buf325_buf325d_o, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_1_bounds > 0)
      --proc_14_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}