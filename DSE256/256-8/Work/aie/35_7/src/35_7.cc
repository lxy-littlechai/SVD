// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/35_7/src/35_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_36_7_0_0 48
#define LOCK_36_7_1_0 49
#define LOCK_36_7_2_0 50
#define LOCK_36_7_3_3584 51
#define LOCK_35_6_0_7136 0
#define LOCK_35_6_1_0 1
#define LOCK_35_6_2_0 2
#define LOCK_35_6_3_0 3

// Declare shared memory buffers
v4float buf357dr[65];
v4float buf357r[65];
v4float buf367dr[65];
v4float buf367r[65];
v4float buf373[65];
v4float buf373d[65];
v4float buf383[65];
v4float buf383d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf367r_buf367dr_i[1] = {{(float*)buf367r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf357r_buf357dr_i[1] = {{(float*)buf357r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf383_buf383d_o[1] = {{(float*)buf383, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf373_buf373d_o[1] = {{(float*)buf373, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_7_bounds = sync_buffer[1];

  while (proc_35_7_bounds)
  {

    // Kernel call : i187:orthogonalize<256>
    window_buf367r_buf367dr_i->setData(*window_buf367r_buf367dr_i, (float*)buf367r, (float*)buf367dr, 1-index, 0);
    window_buf367r_buf367dr_i->acquire(*window_buf367r_buf367dr_i, LOCK_36_7_0_0, LOCK_36_7_1_0, 1-index);
    window_buf357r_buf357dr_i->setData(*window_buf357r_buf357dr_i, (float*)buf357r, (float*)buf357dr, 1-index, 0);
    window_buf357r_buf357dr_i->acquire(*window_buf357r_buf357dr_i, LOCK_36_7_2_0, LOCK_36_7_3_3584, 1-index);
    window_buf383_buf383d_o->setData(*window_buf383_buf383d_o, (float*)buf383, (float*)buf383d, 1-index, 0);
    window_buf383_buf383d_o->acquire(*window_buf383_buf383d_o, LOCK_35_6_0_7136, LOCK_35_6_1_0, 1-index);
    window_buf373_buf373d_o->setData(*window_buf373_buf373d_o, (float*)buf373, (float*)buf373d, 1-index, 0);
    window_buf373_buf373d_o->acquire(*window_buf373_buf373d_o, LOCK_35_6_2_0, LOCK_35_6_3_0, 1-index);
    orthogonalize<256>(window_buf367r_buf367dr_i[0],window_buf357r_buf357dr_i[0],window_buf383_buf383d_o[0],window_buf373_buf373d_o[0]);
    window_buf367r_buf367dr_i->release(*window_buf367r_buf367dr_i, LOCK_36_7_0_0, LOCK_36_7_1_0, 1-index);
    window_buf357r_buf357dr_i->release(*window_buf357r_buf357dr_i, LOCK_36_7_2_0, LOCK_36_7_3_3584, 1-index);
    window_buf383_buf383d_o->release(*window_buf383_buf383d_o, LOCK_35_6_0_7136, LOCK_35_6_1_0, 1-index);
    window_buf373_buf373d_o->release(*window_buf373_buf373d_o, LOCK_35_6_2_0, LOCK_35_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_7_bounds > 0)
      --proc_35_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}