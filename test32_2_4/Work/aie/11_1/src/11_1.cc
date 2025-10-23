// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/11_1/src/11_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_1_0_0 16
#define LOCK_11_1_1_0 17
#define LOCK_12_1_0_8032 48
#define LOCK_12_1_1_0 49
#define LOCK_11_2_0_2080 32
#define LOCK_11_2_1_0 33
#define LOCK_11_2_2_0 34
#define LOCK_11_2_3_0 35

// Declare shared memory buffers
v4float buf36[9];
v4float buf36d[9];
v4float buf38[9];
v4float buf38d[9];
v4float buf40[9];
v4float buf40d[9];
v4float buf42[9];
v4float buf42d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_i[1] = {{(float*)buf36, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_i[1] = {{(float*)buf38, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_o[1] = {{(float*)buf40, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf42_buf42d_o[1] = {{(float*)buf42, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_1_bounds = sync_buffer[1];

  while (proc_11_1_bounds)
  {

    // Kernel call : i30:orthogonalize<32>
    window_buf36_buf36d_i->setData(*window_buf36_buf36d_i, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_i->acquire(*window_buf36_buf36d_i, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf38_buf38d_i->setData(*window_buf38_buf38d_i, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_i->acquire(*window_buf38_buf38d_i, LOCK_12_1_0_8032, LOCK_12_1_1_0, 1-index);
    window_buf40_buf40d_o->setData(*window_buf40_buf40d_o, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_o->acquire(*window_buf40_buf40d_o, LOCK_11_2_0_2080, LOCK_11_2_1_0, 1-index);
    window_buf42_buf42d_o->setData(*window_buf42_buf42d_o, (float*)buf42, (float*)buf42d, 1-index, 0);
    window_buf42_buf42d_o->acquire(*window_buf42_buf42d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    orthogonalize<32>(window_buf36_buf36d_i[0],window_buf38_buf38d_i[0],window_buf40_buf40d_o[0],window_buf42_buf42d_o[0]);
    window_buf36_buf36d_i->release(*window_buf36_buf36d_i, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf38_buf38d_i->release(*window_buf38_buf38d_i, LOCK_12_1_0_8032, LOCK_12_1_1_0, 1-index);
    window_buf40_buf40d_o->release(*window_buf40_buf40d_o, LOCK_11_2_0_2080, LOCK_11_2_1_0, 1-index);
    window_buf42_buf42d_o->release(*window_buf42_buf42d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_1_bounds > 0)
      --proc_11_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}