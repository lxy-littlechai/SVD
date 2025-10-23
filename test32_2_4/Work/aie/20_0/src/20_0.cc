// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/20_0/src/20_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_0_0_0 16
#define LOCK_19_0_1_0 17
#define LOCK_19_0_2_0 18
#define LOCK_19_0_3_8032 19
#define LOCK_20_1_0_0 32
#define LOCK_20_1_1_0 33
#define LOCK_20_1_2_0 34
#define LOCK_20_1_3_0 35

// Declare shared memory buffers
v4float buf48[9];
v4float buf48d[9];
v4float buf49[9];
v4float buf49d[9];
v4float buf52[9];
v4float buf52d[9];
v4float buf53[9];
v4float buf53d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_i[1] = {{(float*)buf48, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_i[1] = {{(float*)buf49, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_o[1] = {{(float*)buf52, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_o[1] = {{(float*)buf53, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_0_bounds = sync_buffer[1];

  while (proc_20_0_bounds)
  {

    // Kernel call : i42:orthogonalize<32>
    window_buf48_buf48d_i->setData(*window_buf48_buf48d_i, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_i->acquire(*window_buf48_buf48d_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf49_buf49d_i->setData(*window_buf49_buf49d_i, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_i->acquire(*window_buf49_buf49d_i, LOCK_19_0_2_0, LOCK_19_0_3_8032, 1-index);
    window_buf52_buf52d_o->setData(*window_buf52_buf52d_o, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_o->acquire(*window_buf52_buf52d_o, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf53_buf53d_o->setData(*window_buf53_buf53d_o, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_o->acquire(*window_buf53_buf53d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    orthogonalize<32>(window_buf48_buf48d_i[0],window_buf49_buf49d_i[0],window_buf52_buf52d_o[0],window_buf53_buf53d_o[0]);
    window_buf48_buf48d_i->release(*window_buf48_buf48d_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf49_buf49d_i->release(*window_buf49_buf49d_i, LOCK_19_0_2_0, LOCK_19_0_3_8032, 1-index);
    window_buf52_buf52d_o->release(*window_buf52_buf52d_o, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf53_buf53d_o->release(*window_buf53_buf53d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_0_bounds > 0)
      --proc_20_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}