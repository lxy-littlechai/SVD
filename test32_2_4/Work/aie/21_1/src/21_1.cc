// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/21_1/src/21_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_1_2_0 18
#define LOCK_21_1_3_0 19
#define LOCK_22_1_0_0 48
#define LOCK_22_1_1_0 49
#define LOCK_21_2_0_2080 32
#define LOCK_21_2_1_0 33
#define LOCK_21_2_2_0 34
#define LOCK_21_2_3_0 35

// Declare shared memory buffers
v4float buf53dr[9];
v4float buf53r[9];
v4float buf55[9];
v4float buf55d[9];
v4float buf57[9];
v4float buf57d[9];
v4float buf59[9];
v4float buf59d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_i[1] = {{(float*)buf55, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53r_buf53dr_i[1] = {{(float*)buf53r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_o[1] = {{(float*)buf59, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_o[1] = {{(float*)buf57, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_1_bounds = sync_buffer[1];

  while (proc_21_1_bounds)
  {

    // Kernel call : i45:orthogonalize<32>
    window_buf55_buf55d_i->setData(*window_buf55_buf55d_i, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_i->acquire(*window_buf55_buf55d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf53r_buf53dr_i->setData(*window_buf53r_buf53dr_i, (float*)buf53r, (float*)buf53dr, 1-index, 0);
    window_buf53r_buf53dr_i->acquire(*window_buf53r_buf53dr_i, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf59_buf59d_o->setData(*window_buf59_buf59d_o, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_o->acquire(*window_buf59_buf59d_o, LOCK_21_2_0_2080, LOCK_21_2_1_0, 1-index);
    window_buf57_buf57d_o->setData(*window_buf57_buf57d_o, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_o->acquire(*window_buf57_buf57d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    orthogonalize<32>(window_buf55_buf55d_i[0],window_buf53r_buf53dr_i[0],window_buf59_buf59d_o[0],window_buf57_buf57d_o[0]);
    window_buf55_buf55d_i->release(*window_buf55_buf55d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf53r_buf53dr_i->release(*window_buf53r_buf53dr_i, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf59_buf59d_o->release(*window_buf59_buf59d_o, LOCK_21_2_0_2080, LOCK_21_2_1_0, 1-index);
    window_buf57_buf57d_o->release(*window_buf57_buf57d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_1_bounds > 0)
      --proc_21_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}