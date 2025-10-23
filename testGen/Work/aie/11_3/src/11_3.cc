// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_3/src/11_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_3_2_0 18
#define LOCK_11_3_3_0 19
#define LOCK_12_3_0_0 48
#define LOCK_12_3_1_0 49
#define LOCK_11_4_0_3936 32
#define LOCK_11_4_1_2080 33
#define LOCK_11_4_2_0 34
#define LOCK_11_4_3_0 35

// Declare shared memory buffers
v4float buf109[9];
v4float buf109d[9];
v4float buf69dr[9];
v4float buf69r[9];
v4float buf87[9];
v4float buf87d[9];
v4float buf91[9];
v4float buf91d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_i[1] = {{(float*)buf87, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf69r_buf69dr_i[1] = {{(float*)buf69r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf109_buf109d_o[1] = {{(float*)buf109, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf91_buf91d_o[1] = {{(float*)buf91, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_3_bounds = sync_buffer[1];

  while (proc_11_3_bounds)
  {

    // Kernel call : i43:orthogonalize<32>
    window_buf87_buf87d_i->setData(*window_buf87_buf87d_i, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_i->acquire(*window_buf87_buf87d_i, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    window_buf69r_buf69dr_i->setData(*window_buf69r_buf69dr_i, (float*)buf69r, (float*)buf69dr, 1-index, 0);
    window_buf69r_buf69dr_i->acquire(*window_buf69r_buf69dr_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf109_buf109d_o->setData(*window_buf109_buf109d_o, (float*)buf109, (float*)buf109d, 1-index, 0);
    window_buf109_buf109d_o->acquire(*window_buf109_buf109d_o, LOCK_11_4_0_3936, LOCK_11_4_1_2080, 1-index);
    window_buf91_buf91d_o->setData(*window_buf91_buf91d_o, (float*)buf91, (float*)buf91d, 1-index, 0);
    window_buf91_buf91d_o->acquire(*window_buf91_buf91d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    orthogonalize<32>(window_buf87_buf87d_i[0],window_buf69r_buf69dr_i[0],window_buf109_buf109d_o[0],window_buf91_buf91d_o[0]);
    window_buf87_buf87d_i->release(*window_buf87_buf87d_i, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    window_buf69r_buf69dr_i->release(*window_buf69r_buf69dr_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf109_buf109d_o->release(*window_buf109_buf109d_o, LOCK_11_4_0_3936, LOCK_11_4_1_2080, 1-index);
    window_buf91_buf91d_o->release(*window_buf91_buf91d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_3_bounds > 0)
      --proc_11_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}