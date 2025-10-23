// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_1/src/8_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_1_2_4256 18
#define LOCK_8_1_3_8032 19
#define LOCK_9_1_0_160 48
#define LOCK_9_1_1_160 49
#define LOCK_8_2_0_8032 32
#define LOCK_8_2_1_0 33
#define LOCK_8_2_2_0 34
#define LOCK_8_2_3_0 35

// Declare shared memory buffers
v4float buf36[9];
v4float buf36d[9];
v4float buf39[9];
v4float buf39d[9];
v4float buf58[9];
v4float buf58d[9];
v4float buf61[9];
v4float buf61d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_i[1] = {{(float*)buf36, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_i[1] = {{(float*)buf39, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_o[1] = {{(float*)buf58, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_o[1] = {{(float*)buf61, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_1_bounds = sync_buffer[1];

  while (proc_8_1_bounds)
  {

    // Kernel call : i18:orthogonalize<32>
    window_buf36_buf36d_i->setData(*window_buf36_buf36d_i, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_i->acquire(*window_buf36_buf36d_i, LOCK_8_1_2_4256, LOCK_8_1_3_8032, 1-index);
    window_buf39_buf39d_i->setData(*window_buf39_buf39d_i, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_i->acquire(*window_buf39_buf39d_i, LOCK_9_1_0_160, LOCK_9_1_1_160, 1-index);
    window_buf58_buf58d_o->setData(*window_buf58_buf58d_o, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_o->acquire(*window_buf58_buf58d_o, LOCK_8_2_0_8032, LOCK_8_2_1_0, 1-index);
    window_buf61_buf61d_o->setData(*window_buf61_buf61d_o, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_o->acquire(*window_buf61_buf61d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    orthogonalize<32>(window_buf36_buf36d_i[0],window_buf39_buf39d_i[0],window_buf58_buf58d_o[0],window_buf61_buf61d_o[0]);
    window_buf36_buf36d_i->release(*window_buf36_buf36d_i, LOCK_8_1_2_4256, LOCK_8_1_3_8032, 1-index);
    window_buf39_buf39d_i->release(*window_buf39_buf39d_i, LOCK_9_1_0_160, LOCK_9_1_1_160, 1-index);
    window_buf58_buf58d_o->release(*window_buf58_buf58d_o, LOCK_8_2_0_8032, LOCK_8_2_1_0, 1-index);
    window_buf61_buf61d_o->release(*window_buf61_buf61d_o, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
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