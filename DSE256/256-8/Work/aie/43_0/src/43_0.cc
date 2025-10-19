// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/43_0/src/43_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_43_0_0_0 48
#define LOCK_43_0_1_3584 49
#define LOCK_43_0_2_0 50
#define LOCK_43_0_3_0 51
#define LOCK_43_1_0_7136 32
#define LOCK_43_1_1_0 33
#define LOCK_43_1_2_0 34
#define LOCK_43_1_3_0 35

// Declare shared memory buffers
v4float buf464dr[65];
v4float buf464r[65];
v4float buf468dr[65];
v4float buf468r[65];
v4float buf480[65];
v4float buf480d[65];
v4float buf484[65];
v4float buf484d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf464r_buf464dr_i[1] = {{(float*)buf464r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf468r_buf468dr_i[1] = {{(float*)buf468r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf480_buf480d_o[1] = {{(float*)buf480, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf484_buf484d_o[1] = {{(float*)buf484, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_43_0_bounds = sync_buffer[1];

  while (proc_43_0_bounds)
  {

    // Kernel call : i242:orthogonalize<256>
    window_buf464r_buf464dr_i->setData(*window_buf464r_buf464dr_i, (float*)buf464r, (float*)buf464dr, 1-index, 0);
    window_buf464r_buf464dr_i->acquire(*window_buf464r_buf464dr_i, LOCK_43_0_0_0, LOCK_43_0_1_3584, 1-index);
    window_buf468r_buf468dr_i->setData(*window_buf468r_buf468dr_i, (float*)buf468r, (float*)buf468dr, 1-index, 0);
    window_buf468r_buf468dr_i->acquire(*window_buf468r_buf468dr_i, LOCK_43_0_2_0, LOCK_43_0_3_0, 1-index);
    window_buf480_buf480d_o->setData(*window_buf480_buf480d_o, (float*)buf480, (float*)buf480d, 1-index, 0);
    window_buf480_buf480d_o->acquire(*window_buf480_buf480d_o, LOCK_43_1_0_7136, LOCK_43_1_1_0, 1-index);
    window_buf484_buf484d_o->setData(*window_buf484_buf484d_o, (float*)buf484, (float*)buf484d, 1-index, 0);
    window_buf484_buf484d_o->acquire(*window_buf484_buf484d_o, LOCK_43_1_2_0, LOCK_43_1_3_0, 1-index);
    orthogonalize<256>(window_buf464r_buf464dr_i[0],window_buf468r_buf468dr_i[0],window_buf480_buf480d_o[0],window_buf484_buf484d_o[0]);
    window_buf464r_buf464dr_i->release(*window_buf464r_buf464dr_i, LOCK_43_0_0_0, LOCK_43_0_1_3584, 1-index);
    window_buf468r_buf468dr_i->release(*window_buf468r_buf468dr_i, LOCK_43_0_2_0, LOCK_43_0_3_0, 1-index);
    window_buf480_buf480d_o->release(*window_buf480_buf480d_o, LOCK_43_1_0_7136, LOCK_43_1_1_0, 1-index);
    window_buf484_buf484d_o->release(*window_buf484_buf484d_o, LOCK_43_1_2_0, LOCK_43_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_43_0_bounds > 0)
      --proc_43_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}