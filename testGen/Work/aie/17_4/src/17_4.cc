// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_4/src/17_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_4_0_0 16
#define LOCK_16_4_1_0 17
#define LOCK_17_4_2_0 50
#define LOCK_17_4_3_0 51
#define LOCK_17_3_0_8032 0
#define LOCK_17_3_1_0 1
#define LOCK_17_3_2_0 2
#define LOCK_17_3_3_0 3

// Declare shared memory buffers
v4float buf221[9];
v4float buf221d[9];
v4float buf239[9];
v4float buf239d[9];
v4float buf243[9];
v4float buf243d[9];
v4float buf261[9];
v4float buf261d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221_buf221d_i[1] = {{(float*)buf221, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239_buf239d_i[1] = {{(float*)buf239, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf243_buf243d_o[1] = {{(float*)buf243, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf261_buf261d_o[1] = {{(float*)buf261, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_4_bounds = sync_buffer[1];

  while (proc_17_4_bounds)
  {

    // Kernel call : i114:orthogonalize<32>
    window_buf221_buf221d_i->setData(*window_buf221_buf221d_i, (float*)buf221, (float*)buf221d, 1-index, 0);
    window_buf221_buf221d_i->acquire(*window_buf221_buf221d_i, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf239_buf239d_i->setData(*window_buf239_buf239d_i, (float*)buf239, (float*)buf239d, 1-index, 0);
    window_buf239_buf239d_i->acquire(*window_buf239_buf239d_i, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    window_buf243_buf243d_o->setData(*window_buf243_buf243d_o, (float*)buf243, (float*)buf243d, 1-index, 0);
    window_buf243_buf243d_o->acquire(*window_buf243_buf243d_o, LOCK_17_3_0_8032, LOCK_17_3_1_0, 1-index);
    window_buf261_buf261d_o->setData(*window_buf261_buf261d_o, (float*)buf261, (float*)buf261d, 1-index, 0);
    window_buf261_buf261d_o->acquire(*window_buf261_buf261d_o, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    orthogonalize<32>(window_buf221_buf221d_i[0],window_buf239_buf239d_i[0],window_buf243_buf243d_o[0],window_buf261_buf261d_o[0]);
    window_buf221_buf221d_i->release(*window_buf221_buf221d_i, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf239_buf239d_i->release(*window_buf239_buf239d_i, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    window_buf243_buf243d_o->release(*window_buf243_buf243d_o, LOCK_17_3_0_8032, LOCK_17_3_1_0, 1-index);
    window_buf261_buf261d_o->release(*window_buf261_buf261d_o, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_4_bounds > 0)
      --proc_17_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}