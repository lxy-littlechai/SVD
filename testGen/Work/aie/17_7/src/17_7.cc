// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_7/src/17_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_7_0_5984 48
#define LOCK_18_7_1_0 49
#define LOCK_17_7_2_6144 18
#define LOCK_17_7_3_0 19
#define LOCK_17_6_0_0 0
#define LOCK_17_6_1_0 1
#define LOCK_17_6_2_0 2
#define LOCK_17_6_3_0 3

// Declare shared memory buffers
v4float buf156dr[9];
v4float buf156r[9];
v4float buf171dr[9];
v4float buf171r[9];
v4float buf178[9];
v4float buf178d[9];
v4float buf193[9];
v4float buf193d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf156r_buf156dr_i[1] = {{(float*)buf156r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171r_buf171dr_i[1] = {{(float*)buf171r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_o[1] = {{(float*)buf178, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf193_buf193d_o[1] = {{(float*)buf193, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_7_bounds = sync_buffer[1];

  while (proc_17_7_bounds)
  {

    // Kernel call : i81:orthogonalize<32>
    window_buf156r_buf156dr_i->setData(*window_buf156r_buf156dr_i, (float*)buf156r, (float*)buf156dr, 1-index, 0);
    window_buf156r_buf156dr_i->acquire(*window_buf156r_buf156dr_i, LOCK_18_7_0_5984, LOCK_18_7_1_0, 1-index);
    window_buf171r_buf171dr_i->setData(*window_buf171r_buf171dr_i, (float*)buf171r, (float*)buf171dr, 1-index, 0);
    window_buf171r_buf171dr_i->acquire(*window_buf171r_buf171dr_i, LOCK_17_7_2_6144, LOCK_17_7_3_0, 1-index);
    window_buf178_buf178d_o->setData(*window_buf178_buf178d_o, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_o->acquire(*window_buf178_buf178d_o, LOCK_17_6_0_0, LOCK_17_6_1_0, 1-index);
    window_buf193_buf193d_o->setData(*window_buf193_buf193d_o, (float*)buf193, (float*)buf193d, 1-index, 0);
    window_buf193_buf193d_o->acquire(*window_buf193_buf193d_o, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    orthogonalize<32>(window_buf156r_buf156dr_i[0],window_buf171r_buf171dr_i[0],window_buf178_buf178d_o[0],window_buf193_buf193d_o[0]);
    window_buf156r_buf156dr_i->release(*window_buf156r_buf156dr_i, LOCK_18_7_0_5984, LOCK_18_7_1_0, 1-index);
    window_buf171r_buf171dr_i->release(*window_buf171r_buf171dr_i, LOCK_17_7_2_6144, LOCK_17_7_3_0, 1-index);
    window_buf178_buf178d_o->release(*window_buf178_buf178d_o, LOCK_17_6_0_0, LOCK_17_6_1_0, 1-index);
    window_buf193_buf193d_o->release(*window_buf193_buf193d_o, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_7_bounds > 0)
      --proc_17_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}