// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_3/src/15_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_3_0_8032 16
#define LOCK_15_3_1_0 17
#define LOCK_16_3_2_0 50
#define LOCK_16_3_3_0 51
#define LOCK_15_2_0_0 0
#define LOCK_15_2_1_0 1
#define LOCK_15_2_2_0 2
#define LOCK_15_2_3_0 3

// Declare shared memory buffers
v4float buf247[9];
v4float buf247d[9];
v4float buf259[9];
v4float buf259d[9];
v4float buf269[9];
v4float buf269d[9];
v4float buf281[9];
v4float buf281d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_i[1] = {{(float*)buf247, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf259_buf259d_i[1] = {{(float*)buf259, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf269_buf269d_o[1] = {{(float*)buf269, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf281_buf281d_o[1] = {{(float*)buf281, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_3_bounds = sync_buffer[1];

  while (proc_15_3_bounds)
  {

    // Kernel call : i123:orthogonalize<32>
    window_buf247_buf247d_i->setData(*window_buf247_buf247d_i, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_i->acquire(*window_buf247_buf247d_i, LOCK_15_3_0_8032, LOCK_15_3_1_0, 1-index);
    window_buf259_buf259d_i->setData(*window_buf259_buf259d_i, (float*)buf259, (float*)buf259d, 1-index, 0);
    window_buf259_buf259d_i->acquire(*window_buf259_buf259d_i, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    window_buf269_buf269d_o->setData(*window_buf269_buf269d_o, (float*)buf269, (float*)buf269d, 1-index, 0);
    window_buf269_buf269d_o->acquire(*window_buf269_buf269d_o, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf281_buf281d_o->setData(*window_buf281_buf281d_o, (float*)buf281, (float*)buf281d, 1-index, 0);
    window_buf281_buf281d_o->acquire(*window_buf281_buf281d_o, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    orthogonalize<32>(window_buf247_buf247d_i[0],window_buf259_buf259d_i[0],window_buf269_buf269d_o[0],window_buf281_buf281d_o[0]);
    window_buf247_buf247d_i->release(*window_buf247_buf247d_i, LOCK_15_3_0_8032, LOCK_15_3_1_0, 1-index);
    window_buf259_buf259d_i->release(*window_buf259_buf259d_i, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    window_buf269_buf269d_o->release(*window_buf269_buf269d_o, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf281_buf281d_o->release(*window_buf281_buf281d_o, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_3_bounds > 0)
      --proc_15_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}