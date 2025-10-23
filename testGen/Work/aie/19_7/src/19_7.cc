// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/19_7/src/19_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_7_0_0 48
#define LOCK_20_7_1_0 49
#define LOCK_19_7_2_160 18
#define LOCK_19_7_3_704 19
#define LOCK_19_6_0_3936 0
#define LOCK_19_6_1_2080 1
#define LOCK_19_6_2_0 2
#define LOCK_19_6_3_0 3

// Declare shared memory buffers
v4float buf160dr[9];
v4float buf160r[9];
v4float buf174dr[9];
v4float buf174r[9];
v4float buf182[9];
v4float buf182d[9];
v4float buf196[9];
v4float buf196d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf160r_buf160dr_i[1] = {{(float*)buf160r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174r_buf174dr_i[1] = {{(float*)buf174r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_o[1] = {{(float*)buf182, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf196_buf196d_o[1] = {{(float*)buf196, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_7_bounds = sync_buffer[1];

  while (proc_19_7_bounds)
  {

    // Kernel call : i83:orthogonalize<32>
    window_buf160r_buf160dr_i->setData(*window_buf160r_buf160dr_i, (float*)buf160r, (float*)buf160dr, 1-index, 0);
    window_buf160r_buf160dr_i->acquire(*window_buf160r_buf160dr_i, LOCK_20_7_0_0, LOCK_20_7_1_0, 1-index);
    window_buf174r_buf174dr_i->setData(*window_buf174r_buf174dr_i, (float*)buf174r, (float*)buf174dr, 1-index, 0);
    window_buf174r_buf174dr_i->acquire(*window_buf174r_buf174dr_i, LOCK_19_7_2_160, LOCK_19_7_3_704, 1-index);
    window_buf182_buf182d_o->setData(*window_buf182_buf182d_o, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_o->acquire(*window_buf182_buf182d_o, LOCK_19_6_0_3936, LOCK_19_6_1_2080, 1-index);
    window_buf196_buf196d_o->setData(*window_buf196_buf196d_o, (float*)buf196, (float*)buf196d, 1-index, 0);
    window_buf196_buf196d_o->acquire(*window_buf196_buf196d_o, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    orthogonalize<32>(window_buf160r_buf160dr_i[0],window_buf174r_buf174dr_i[0],window_buf182_buf182d_o[0],window_buf196_buf196d_o[0]);
    window_buf160r_buf160dr_i->release(*window_buf160r_buf160dr_i, LOCK_20_7_0_0, LOCK_20_7_1_0, 1-index);
    window_buf174r_buf174dr_i->release(*window_buf174r_buf174dr_i, LOCK_19_7_2_160, LOCK_19_7_3_704, 1-index);
    window_buf182_buf182d_o->release(*window_buf182_buf182d_o, LOCK_19_6_0_3936, LOCK_19_6_1_2080, 1-index);
    window_buf196_buf196d_o->release(*window_buf196_buf196d_o, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_7_bounds > 0)
      --proc_19_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}