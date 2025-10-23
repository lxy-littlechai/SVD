// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_0/src/35_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_35_0_0_0 48
#define LOCK_35_0_1_0 49
#define LOCK_34_0_0_0 16
#define LOCK_34_0_1_0 17
#define LOCK_35_1_0_8032 32
#define LOCK_35_1_1_0 33
#define LOCK_35_1_2_0 34
#define LOCK_35_1_3_0 35

// Declare shared memory buffers
v4float buf314dr[9];
v4float buf314r[9];
v4float buf329dr[9];
v4float buf329r[9];
v4float buf336[9];
v4float buf336d[9];
v4float buf351[9];
v4float buf351d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf314r_buf314dr_i[1] = {{(float*)buf314r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf329r_buf329dr_i[1] = {{(float*)buf329r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf336_buf336d_o[1] = {{(float*)buf336, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf351_buf351d_o[1] = {{(float*)buf351, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_0_bounds = sync_buffer[1];

  while (proc_35_0_bounds)
  {

    // Kernel call : i164:orthogonalize<32>
    window_buf314r_buf314dr_i->setData(*window_buf314r_buf314dr_i, (float*)buf314r, (float*)buf314dr, 1-index, 0);
    window_buf314r_buf314dr_i->acquire(*window_buf314r_buf314dr_i, LOCK_35_0_0_0, LOCK_35_0_1_0, 1-index);
    window_buf329r_buf329dr_i->setData(*window_buf329r_buf329dr_i, (float*)buf329r, (float*)buf329dr, 1-index, 0);
    window_buf329r_buf329dr_i->acquire(*window_buf329r_buf329dr_i, LOCK_34_0_0_0, LOCK_34_0_1_0, 1-index);
    window_buf336_buf336d_o->setData(*window_buf336_buf336d_o, (float*)buf336, (float*)buf336d, 1-index, 0);
    window_buf336_buf336d_o->acquire(*window_buf336_buf336d_o, LOCK_35_1_0_8032, LOCK_35_1_1_0, 1-index);
    window_buf351_buf351d_o->setData(*window_buf351_buf351d_o, (float*)buf351, (float*)buf351d, 1-index, 0);
    window_buf351_buf351d_o->acquire(*window_buf351_buf351d_o, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    orthogonalize<32>(window_buf314r_buf314dr_i[0],window_buf329r_buf329dr_i[0],window_buf336_buf336d_o[0],window_buf351_buf351d_o[0]);
    window_buf314r_buf314dr_i->release(*window_buf314r_buf314dr_i, LOCK_35_0_0_0, LOCK_35_0_1_0, 1-index);
    window_buf329r_buf329dr_i->release(*window_buf329r_buf329dr_i, LOCK_34_0_0_0, LOCK_34_0_1_0, 1-index);
    window_buf336_buf336d_o->release(*window_buf336_buf336d_o, LOCK_35_1_0_8032, LOCK_35_1_1_0, 1-index);
    window_buf351_buf351d_o->release(*window_buf351_buf351d_o, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_0_bounds > 0)
      --proc_35_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}