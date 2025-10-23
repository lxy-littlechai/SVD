// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_4/src/1_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_4_2_0 18
#define LOCK_0_4_3_0 19
#define LOCK_1_4_2_0 50
#define LOCK_1_4_3_0 51
#define LOCK_1_5_0_0 32
#define LOCK_1_5_1_0 33
#define LOCK_1_5_2_0 34
#define LOCK_1_5_3_0 35

// Declare shared memory buffers
v4float buf113[9];
v4float buf113d[9];
v4float buf115[9];
v4float buf115d[9];
v4float buf91dr[9];
v4float buf91r[9];
v4float buf93[9];
v4float buf93d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf91r_buf91dr_i[1] = {{(float*)buf91r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf93_buf93d_i[1] = {{(float*)buf93, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf113_buf113d_o[1] = {{(float*)buf113, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf115_buf115d_o[1] = {{(float*)buf115, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_4_bounds = sync_buffer[1];

  while (proc_1_4_bounds)
  {

    // Kernel call : i44:orthogonalize<32>
    window_buf91r_buf91dr_i->setData(*window_buf91r_buf91dr_i, (float*)buf91r, (float*)buf91dr, 1-index, 0);
    window_buf91r_buf91dr_i->acquire(*window_buf91r_buf91dr_i, LOCK_0_4_2_0, LOCK_0_4_3_0, 1-index);
    window_buf93_buf93d_i->setData(*window_buf93_buf93d_i, (float*)buf93, (float*)buf93d, 1-index, 0);
    window_buf93_buf93d_i->acquire(*window_buf93_buf93d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf113_buf113d_o->setData(*window_buf113_buf113d_o, (float*)buf113, (float*)buf113d, 1-index, 0);
    window_buf113_buf113d_o->acquire(*window_buf113_buf113d_o, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    window_buf115_buf115d_o->setData(*window_buf115_buf115d_o, (float*)buf115, (float*)buf115d, 1-index, 0);
    window_buf115_buf115d_o->acquire(*window_buf115_buf115d_o, LOCK_1_5_2_0, LOCK_1_5_3_0, 1-index);
    orthogonalize<32>(window_buf91r_buf91dr_i[0],window_buf93_buf93d_i[0],window_buf113_buf113d_o[0],window_buf115_buf115d_o[0]);
    window_buf91r_buf91dr_i->release(*window_buf91r_buf91dr_i, LOCK_0_4_2_0, LOCK_0_4_3_0, 1-index);
    window_buf93_buf93d_i->release(*window_buf93_buf93d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf113_buf113d_o->release(*window_buf113_buf113d_o, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    window_buf115_buf115d_o->release(*window_buf115_buf115d_o, LOCK_1_5_2_0, LOCK_1_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_4_bounds > 0)
      --proc_1_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}