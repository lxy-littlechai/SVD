// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_7/src/29_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_7_0_0 48
#define LOCK_30_7_1_3584 49
#define LOCK_30_7_2_0 50
#define LOCK_30_7_3_0 51
#define LOCK_29_6_0_3040 0
#define LOCK_29_6_1_2080 1
#define LOCK_29_6_2_0 2
#define LOCK_29_6_3_0 3

// Declare shared memory buffers
v4float buf353dr[65];
v4float buf353r[65];
v4float buf361dr[65];
v4float buf361r[65];
v4float buf369[65];
v4float buf369d[65];
v4float buf377[65];
v4float buf377d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf353r_buf353dr_i[1] = {{(float*)buf353r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf361r_buf361dr_i[1] = {{(float*)buf361r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf369_buf369d_o[1] = {{(float*)buf369, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf377_buf377d_o[1] = {{(float*)buf377, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_7_bounds = sync_buffer[1];

  while (proc_29_7_bounds)
  {

    // Kernel call : i181:orthogonalize<256>
    window_buf353r_buf353dr_i->setData(*window_buf353r_buf353dr_i, (float*)buf353r, (float*)buf353dr, 1-index, 0);
    window_buf353r_buf353dr_i->acquire(*window_buf353r_buf353dr_i, LOCK_30_7_0_0, LOCK_30_7_1_3584, 1-index);
    window_buf361r_buf361dr_i->setData(*window_buf361r_buf361dr_i, (float*)buf361r, (float*)buf361dr, 1-index, 0);
    window_buf361r_buf361dr_i->acquire(*window_buf361r_buf361dr_i, LOCK_30_7_2_0, LOCK_30_7_3_0, 1-index);
    window_buf369_buf369d_o->setData(*window_buf369_buf369d_o, (float*)buf369, (float*)buf369d, 1-index, 0);
    window_buf369_buf369d_o->acquire(*window_buf369_buf369d_o, LOCK_29_6_0_3040, LOCK_29_6_1_2080, 1-index);
    window_buf377_buf377d_o->setData(*window_buf377_buf377d_o, (float*)buf377, (float*)buf377d, 1-index, 0);
    window_buf377_buf377d_o->acquire(*window_buf377_buf377d_o, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    orthogonalize<256>(window_buf353r_buf353dr_i[0],window_buf361r_buf361dr_i[0],window_buf369_buf369d_o[0],window_buf377_buf377d_o[0]);
    window_buf353r_buf353dr_i->release(*window_buf353r_buf353dr_i, LOCK_30_7_0_0, LOCK_30_7_1_3584, 1-index);
    window_buf361r_buf361dr_i->release(*window_buf361r_buf361dr_i, LOCK_30_7_2_0, LOCK_30_7_3_0, 1-index);
    window_buf369_buf369d_o->release(*window_buf369_buf369d_o, LOCK_29_6_0_3040, LOCK_29_6_1_2080, 1-index);
    window_buf377_buf377d_o->release(*window_buf377_buf377d_o, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_7_bounds > 0)
      --proc_29_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}