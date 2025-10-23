// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_1/src/23_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_1_2_0 18
#define LOCK_23_1_3_0 19
#define LOCK_24_1_0_0 48
#define LOCK_24_1_1_0 49
#define LOCK_23_0_0_8032 0
#define LOCK_23_0_1_0 1
#define LOCK_23_0_2_0 2
#define LOCK_23_0_3_0 3

// Declare shared memory buffers
v4float buf299dr[9];
v4float buf299r[9];
v4float buf307[9];
v4float buf307d[9];
v4float buf321[9];
v4float buf321d[9];
v4float buf329[9];
v4float buf329d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf307_buf307d_i[1] = {{(float*)buf307, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf299r_buf299dr_i[1] = {{(float*)buf299r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf329_buf329d_o[1] = {{(float*)buf329, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf321_buf321d_o[1] = {{(float*)buf321, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_1_bounds = sync_buffer[1];

  while (proc_23_1_bounds)
  {

    // Kernel call : i153:orthogonalize<32>
    window_buf307_buf307d_i->setData(*window_buf307_buf307d_i, (float*)buf307, (float*)buf307d, 1-index, 0);
    window_buf307_buf307d_i->acquire(*window_buf307_buf307d_i, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    window_buf299r_buf299dr_i->setData(*window_buf299r_buf299dr_i, (float*)buf299r, (float*)buf299dr, 1-index, 0);
    window_buf299r_buf299dr_i->acquire(*window_buf299r_buf299dr_i, LOCK_24_1_0_0, LOCK_24_1_1_0, 1-index);
    window_buf329_buf329d_o->setData(*window_buf329_buf329d_o, (float*)buf329, (float*)buf329d, 1-index, 0);
    window_buf329_buf329d_o->acquire(*window_buf329_buf329d_o, LOCK_23_0_0_8032, LOCK_23_0_1_0, 1-index);
    window_buf321_buf321d_o->setData(*window_buf321_buf321d_o, (float*)buf321, (float*)buf321d, 1-index, 0);
    window_buf321_buf321d_o->acquire(*window_buf321_buf321d_o, LOCK_23_0_2_0, LOCK_23_0_3_0, 1-index);
    orthogonalize<32>(window_buf307_buf307d_i[0],window_buf299r_buf299dr_i[0],window_buf329_buf329d_o[0],window_buf321_buf321d_o[0]);
    window_buf307_buf307d_i->release(*window_buf307_buf307d_i, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    window_buf299r_buf299dr_i->release(*window_buf299r_buf299dr_i, LOCK_24_1_0_0, LOCK_24_1_1_0, 1-index);
    window_buf329_buf329d_o->release(*window_buf329_buf329d_o, LOCK_23_0_0_8032, LOCK_23_0_1_0, 1-index);
    window_buf321_buf321d_o->release(*window_buf321_buf321d_o, LOCK_23_0_2_0, LOCK_23_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_1_bounds > 0)
      --proc_23_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}