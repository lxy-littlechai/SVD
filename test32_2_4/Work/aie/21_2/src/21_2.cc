// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/21_2/src/21_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_2_0_0 16
#define LOCK_20_2_1_0 17
#define LOCK_21_2_0_2080 48
#define LOCK_21_2_1_0 49
#define LOCK_21_3_0_8032 32
#define LOCK_21_3_1_0 33
#define LOCK_21_3_2_0 34
#define LOCK_21_3_3_0 35

// Declare shared memory buffers
v4float buf56[9];
v4float buf56d[9];
v4float buf59[9];
v4float buf59d[9];
v4float buf60[9];
v4float buf60d[9];
v4float buf63[9];
v4float buf63d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_i[1] = {{(float*)buf56, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_i[1] = {{(float*)buf59, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf60_buf60d_o[1] = {{(float*)buf60, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_o[1] = {{(float*)buf63, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_2_bounds = sync_buffer[1];

  while (proc_21_2_bounds)
  {

    // Kernel call : i47:orthogonalize<32>
    window_buf56_buf56d_i->setData(*window_buf56_buf56d_i, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_i->acquire(*window_buf56_buf56d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf59_buf59d_i->setData(*window_buf59_buf59d_i, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_i->acquire(*window_buf59_buf59d_i, LOCK_21_2_0_2080, LOCK_21_2_1_0, 1-index);
    window_buf60_buf60d_o->setData(*window_buf60_buf60d_o, (float*)buf60, (float*)buf60d, 1-index, 0);
    window_buf60_buf60d_o->acquire(*window_buf60_buf60d_o, LOCK_21_3_0_8032, LOCK_21_3_1_0, 1-index);
    window_buf63_buf63d_o->setData(*window_buf63_buf63d_o, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_o->acquire(*window_buf63_buf63d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    orthogonalize<32>(window_buf56_buf56d_i[0],window_buf59_buf59d_i[0],window_buf60_buf60d_o[0],window_buf63_buf63d_o[0]);
    window_buf56_buf56d_i->release(*window_buf56_buf56d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf59_buf59d_i->release(*window_buf59_buf59d_i, LOCK_21_2_0_2080, LOCK_21_2_1_0, 1-index);
    window_buf60_buf60d_o->release(*window_buf60_buf60d_o, LOCK_21_3_0_8032, LOCK_21_3_1_0, 1-index);
    window_buf63_buf63d_o->release(*window_buf63_buf63d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_2_bounds > 0)
      --proc_21_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}