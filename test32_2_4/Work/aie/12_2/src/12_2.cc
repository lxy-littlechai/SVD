// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/12_2/src/12_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_2_0_2080 16
#define LOCK_11_2_1_0 17
#define LOCK_12_2_0_2080 48
#define LOCK_12_2_1_0 49
#define LOCK_12_3_0_8032 32
#define LOCK_12_3_1_0 33
#define LOCK_12_3_2_0 34
#define LOCK_12_3_3_0 35

// Declare shared memory buffers
v4float buf40[9];
v4float buf40d[9];
v4float buf43[9];
v4float buf43d[9];
v4float buf44[9];
v4float buf44d[9];
v4float buf47[9];
v4float buf47d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_i[1] = {{(float*)buf40, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_i[1] = {{(float*)buf43, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_o[1] = {{(float*)buf44, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_o[1] = {{(float*)buf47, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_2_bounds = sync_buffer[1];

  while (proc_12_2_bounds)
  {

    // Kernel call : i33:orthogonalize<32>
    window_buf40_buf40d_i->setData(*window_buf40_buf40d_i, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_i->acquire(*window_buf40_buf40d_i, LOCK_11_2_0_2080, LOCK_11_2_1_0, 1-index);
    window_buf43_buf43d_i->setData(*window_buf43_buf43d_i, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_i->acquire(*window_buf43_buf43d_i, LOCK_12_2_0_2080, LOCK_12_2_1_0, 1-index);
    window_buf44_buf44d_o->setData(*window_buf44_buf44d_o, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_o->acquire(*window_buf44_buf44d_o, LOCK_12_3_0_8032, LOCK_12_3_1_0, 1-index);
    window_buf47_buf47d_o->setData(*window_buf47_buf47d_o, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_o->acquire(*window_buf47_buf47d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    orthogonalize<32>(window_buf40_buf40d_i[0],window_buf43_buf43d_i[0],window_buf44_buf44d_o[0],window_buf47_buf47d_o[0]);
    window_buf40_buf40d_i->release(*window_buf40_buf40d_i, LOCK_11_2_0_2080, LOCK_11_2_1_0, 1-index);
    window_buf43_buf43d_i->release(*window_buf43_buf43d_i, LOCK_12_2_0_2080, LOCK_12_2_1_0, 1-index);
    window_buf44_buf44d_o->release(*window_buf44_buf44d_o, LOCK_12_3_0_8032, LOCK_12_3_1_0, 1-index);
    window_buf47_buf47d_o->release(*window_buf47_buf47d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_2_bounds > 0)
      --proc_12_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}