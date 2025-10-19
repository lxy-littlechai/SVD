// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_5/src/26_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_5_2_0 18
#define LOCK_26_5_3_0 19
#define LOCK_27_5_0_0 48
#define LOCK_27_5_1_0 49
#define LOCK_26_6_0_2080 32
#define LOCK_26_6_1_0 33
#define LOCK_26_6_2_0 34
#define LOCK_26_6_3_0 35

// Declare shared memory buffers
v4float buf323dr[65];
v4float buf323r[65];
v4float buf335[65];
v4float buf335d[65];
v4float buf339[65];
v4float buf339d[65];
v4float buf351[65];
v4float buf351d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf335_buf335d_i[1] = {{(float*)buf335, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf323r_buf323dr_i[1] = {{(float*)buf323r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf351_buf351d_o[1] = {{(float*)buf351, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf339_buf339d_o[1] = {{(float*)buf339, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_5_bounds = sync_buffer[1];

  while (proc_26_5_bounds)
  {

    // Kernel call : i171:orthogonalize<256>
    window_buf335_buf335d_i->setData(*window_buf335_buf335d_i, (float*)buf335, (float*)buf335d, 1-index, 0);
    window_buf335_buf335d_i->acquire(*window_buf335_buf335d_i, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    window_buf323r_buf323dr_i->setData(*window_buf323r_buf323dr_i, (float*)buf323r, (float*)buf323dr, 1-index, 0);
    window_buf323r_buf323dr_i->acquire(*window_buf323r_buf323dr_i, LOCK_27_5_0_0, LOCK_27_5_1_0, 1-index);
    window_buf351_buf351d_o->setData(*window_buf351_buf351d_o, (float*)buf351, (float*)buf351d, 1-index, 0);
    window_buf351_buf351d_o->acquire(*window_buf351_buf351d_o, LOCK_26_6_0_2080, LOCK_26_6_1_0, 1-index);
    window_buf339_buf339d_o->setData(*window_buf339_buf339d_o, (float*)buf339, (float*)buf339d, 1-index, 0);
    window_buf339_buf339d_o->acquire(*window_buf339_buf339d_o, LOCK_26_6_2_0, LOCK_26_6_3_0, 1-index);
    orthogonalize<256>(window_buf335_buf335d_i[0],window_buf323r_buf323dr_i[0],window_buf351_buf351d_o[0],window_buf339_buf339d_o[0]);
    window_buf335_buf335d_i->release(*window_buf335_buf335d_i, LOCK_26_5_2_0, LOCK_26_5_3_0, 1-index);
    window_buf323r_buf323dr_i->release(*window_buf323r_buf323dr_i, LOCK_27_5_0_0, LOCK_27_5_1_0, 1-index);
    window_buf351_buf351d_o->release(*window_buf351_buf351d_o, LOCK_26_6_0_2080, LOCK_26_6_1_0, 1-index);
    window_buf339_buf339d_o->release(*window_buf339_buf339d_o, LOCK_26_6_2_0, LOCK_26_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_5_bounds > 0)
      --proc_26_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}