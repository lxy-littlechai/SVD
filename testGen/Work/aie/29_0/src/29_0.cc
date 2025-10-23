// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_0/src/29_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_0_0_5984 48
#define LOCK_29_0_1_0 49
#define LOCK_29_0_2_6144 50
#define LOCK_29_0_3_0 51
#define LOCK_29_1_0_8032 32
#define LOCK_29_1_1_0 33
#define LOCK_29_1_2_0 34
#define LOCK_29_1_3_0 35

// Declare shared memory buffers
v4float buf313dr[9];
v4float buf313r[9];
v4float buf326dr[9];
v4float buf326r[9];
v4float buf335[9];
v4float buf335d[9];
v4float buf348[9];
v4float buf348d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf313r_buf313dr_i[1] = {{(float*)buf313r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf326r_buf326dr_i[1] = {{(float*)buf326r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf335_buf335d_o[1] = {{(float*)buf335, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf348_buf348d_o[1] = {{(float*)buf348, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_0_bounds = sync_buffer[1];

  while (proc_29_0_bounds)
  {

    // Kernel call : i158:orthogonalize<32>
    window_buf313r_buf313dr_i->setData(*window_buf313r_buf313dr_i, (float*)buf313r, (float*)buf313dr, 1-index, 0);
    window_buf313r_buf313dr_i->acquire(*window_buf313r_buf313dr_i, LOCK_29_0_0_5984, LOCK_29_0_1_0, 1-index);
    window_buf326r_buf326dr_i->setData(*window_buf326r_buf326dr_i, (float*)buf326r, (float*)buf326dr, 1-index, 0);
    window_buf326r_buf326dr_i->acquire(*window_buf326r_buf326dr_i, LOCK_29_0_2_6144, LOCK_29_0_3_0, 1-index);
    window_buf335_buf335d_o->setData(*window_buf335_buf335d_o, (float*)buf335, (float*)buf335d, 1-index, 0);
    window_buf335_buf335d_o->acquire(*window_buf335_buf335d_o, LOCK_29_1_0_8032, LOCK_29_1_1_0, 1-index);
    window_buf348_buf348d_o->setData(*window_buf348_buf348d_o, (float*)buf348, (float*)buf348d, 1-index, 0);
    window_buf348_buf348d_o->acquire(*window_buf348_buf348d_o, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    orthogonalize<32>(window_buf313r_buf313dr_i[0],window_buf326r_buf326dr_i[0],window_buf335_buf335d_o[0],window_buf348_buf348d_o[0]);
    window_buf313r_buf313dr_i->release(*window_buf313r_buf313dr_i, LOCK_29_0_0_5984, LOCK_29_0_1_0, 1-index);
    window_buf326r_buf326dr_i->release(*window_buf326r_buf326dr_i, LOCK_29_0_2_6144, LOCK_29_0_3_0, 1-index);
    window_buf335_buf335d_o->release(*window_buf335_buf335d_o, LOCK_29_1_0_8032, LOCK_29_1_1_0, 1-index);
    window_buf348_buf348d_o->release(*window_buf348_buf348d_o, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_0_bounds > 0)
      --proc_29_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}