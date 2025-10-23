// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_2/src/1_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_2_0_0 16
#define LOCK_0_2_1_0 17
#define LOCK_1_2_2_0 50
#define LOCK_1_2_3_0 51
#define LOCK_1_3_0_8032 32
#define LOCK_1_3_1_0 33
#define LOCK_1_3_2_0 34
#define LOCK_1_3_3_0 35

// Declare shared memory buffers
v4float buf45dr[9];
v4float buf45r[9];
v4float buf47[9];
v4float buf47d[9];
v4float buf67[9];
v4float buf67d[9];
v4float buf69[9];
v4float buf69d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45r_buf45dr_i[1] = {{(float*)buf45r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_i[1] = {{(float*)buf47, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67_buf67d_o[1] = {{(float*)buf67, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf69_buf69d_o[1] = {{(float*)buf69, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_2_bounds = sync_buffer[1];

  while (proc_1_2_bounds)
  {

    // Kernel call : i22:orthogonalize<32>
    window_buf45r_buf45dr_i->setData(*window_buf45r_buf45dr_i, (float*)buf45r, (float*)buf45dr, 1-index, 0);
    window_buf45r_buf45dr_i->acquire(*window_buf45r_buf45dr_i, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
    window_buf47_buf47d_i->setData(*window_buf47_buf47d_i, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_i->acquire(*window_buf47_buf47d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf67_buf67d_o->setData(*window_buf67_buf67d_o, (float*)buf67, (float*)buf67d, 1-index, 0);
    window_buf67_buf67d_o->acquire(*window_buf67_buf67d_o, LOCK_1_3_0_8032, LOCK_1_3_1_0, 1-index);
    window_buf69_buf69d_o->setData(*window_buf69_buf69d_o, (float*)buf69, (float*)buf69d, 1-index, 0);
    window_buf69_buf69d_o->acquire(*window_buf69_buf69d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    orthogonalize<32>(window_buf45r_buf45dr_i[0],window_buf47_buf47d_i[0],window_buf67_buf67d_o[0],window_buf69_buf69d_o[0]);
    window_buf45r_buf45dr_i->release(*window_buf45r_buf45dr_i, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
    window_buf47_buf47d_i->release(*window_buf47_buf47d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf67_buf67d_o->release(*window_buf67_buf67d_o, LOCK_1_3_0_8032, LOCK_1_3_1_0, 1-index);
    window_buf69_buf69d_o->release(*window_buf69_buf69d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_2_bounds > 0)
      --proc_1_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}