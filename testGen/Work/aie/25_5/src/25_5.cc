// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_5/src/25_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_5_0_8032 16
#define LOCK_25_5_1_0 17
#define LOCK_26_5_2_0 50
#define LOCK_26_5_3_0 51
#define LOCK_25_6_0_0 32
#define LOCK_25_6_1_0 33
#define LOCK_25_6_2_0 34
#define LOCK_25_6_3_0 35

// Declare shared memory buffers
v4float buf435[9];
v4float buf435d[9];
v4float buf438[9];
v4float buf438d[9];
v4float buf457[9];
v4float buf457d[9];
v4float buf460[9];
v4float buf460d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf435_buf435d_i[1] = {{(float*)buf435, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf438_buf438d_i[1] = {{(float*)buf438, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf457_buf457d_o[1] = {{(float*)buf457, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf460_buf460d_o[1] = {{(float*)buf460, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_5_bounds = sync_buffer[1];

  while (proc_25_5_bounds)
  {

    // Kernel call : i209:orthogonalize<32>
    window_buf435_buf435d_i->setData(*window_buf435_buf435d_i, (float*)buf435, (float*)buf435d, 1-index, 0);
    window_buf435_buf435d_i->acquire(*window_buf435_buf435d_i, LOCK_25_5_0_8032, LOCK_25_5_1_0, 1-index);
    window_buf438_buf438d_i->setData(*window_buf438_buf438d_i, (float*)buf438, (float*)buf438d, 1-index, 0);
    window_buf438_buf438d_i->acquire(*window_buf438_buf438d_i, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    window_buf457_buf457d_o->setData(*window_buf457_buf457d_o, (float*)buf457, (float*)buf457d, 1-index, 0);
    window_buf457_buf457d_o->acquire(*window_buf457_buf457d_o, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf460_buf460d_o->setData(*window_buf460_buf460d_o, (float*)buf460, (float*)buf460d, 1-index, 0);
    window_buf460_buf460d_o->acquire(*window_buf460_buf460d_o, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    orthogonalize<32>(window_buf435_buf435d_i[0],window_buf438_buf438d_i[0],window_buf457_buf457d_o[0],window_buf460_buf460d_o[0]);
    window_buf435_buf435d_i->release(*window_buf435_buf435d_i, LOCK_25_5_0_8032, LOCK_25_5_1_0, 1-index);
    window_buf438_buf438d_i->release(*window_buf438_buf438d_i, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    window_buf457_buf457d_o->release(*window_buf457_buf457d_o, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf460_buf460d_o->release(*window_buf460_buf460d_o, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_5_bounds > 0)
      --proc_25_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}