// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_1/src/11_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_1_2_0 18
#define LOCK_11_1_3_0 19
#define LOCK_12_1_0_0 48
#define LOCK_12_1_1_0 49
#define LOCK_11_2_0_0 32
#define LOCK_11_2_1_0 33
#define LOCK_11_2_2_0 34
#define LOCK_11_2_3_0 35

// Declare shared memory buffers
v4float buf23dr[9];
v4float buf23r[9];
v4float buf43[9];
v4float buf43d[9];
v4float buf45[9];
v4float buf45d[9];
v4float buf65[9];
v4float buf65d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_i[1] = {{(float*)buf43, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23r_buf23dr_i[1] = {{(float*)buf23r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_o[1] = {{(float*)buf65, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45_buf45d_o[1] = {{(float*)buf45, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_1_bounds = sync_buffer[1];

  while (proc_11_1_bounds)
  {

    // Kernel call : i21:orthogonalize<32>
    window_buf43_buf43d_i->setData(*window_buf43_buf43d_i, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_i->acquire(*window_buf43_buf43d_i, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf23r_buf23dr_i->setData(*window_buf23r_buf23dr_i, (float*)buf23r, (float*)buf23dr, 1-index, 0);
    window_buf23r_buf23dr_i->acquire(*window_buf23r_buf23dr_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf65_buf65d_o->setData(*window_buf65_buf65d_o, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_o->acquire(*window_buf65_buf65d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf45_buf45d_o->setData(*window_buf45_buf45d_o, (float*)buf45, (float*)buf45d, 1-index, 0);
    window_buf45_buf45d_o->acquire(*window_buf45_buf45d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    orthogonalize<32>(window_buf43_buf43d_i[0],window_buf23r_buf23dr_i[0],window_buf65_buf65d_o[0],window_buf45_buf45d_o[0]);
    window_buf43_buf43d_i->release(*window_buf43_buf43d_i, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf23r_buf23dr_i->release(*window_buf23r_buf23dr_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf65_buf65d_o->release(*window_buf65_buf65d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf45_buf45d_o->release(*window_buf45_buf45d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
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