// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_7/src/30_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_7_0_0 48
#define LOCK_31_7_1_0 49
#define LOCK_31_7_2_7136 50
#define LOCK_31_7_3_3776 51
#define LOCK_30_6_0_3040 0
#define LOCK_30_6_1_5056 1
#define LOCK_30_6_2_2080 2
#define LOCK_30_6_3_0 3

// Declare shared memory buffers
v4float buf352dr[65];
v4float buf352r[65];
v4float buf363dr[65];
v4float buf363r[65];
v4float buf368[65];
v4float buf368d[65];
v4float buf379[65];
v4float buf379d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf352r_buf352dr_i[1] = {{(float*)buf352r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf363r_buf363dr_i[1] = {{(float*)buf363r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf368_buf368d_o[1] = {{(float*)buf368, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf379_buf379d_o[1] = {{(float*)buf379, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_7_bounds = sync_buffer[1];

  while (proc_30_7_bounds)
  {

    // Kernel call : i182:orthogonalize<256>
    window_buf352r_buf352dr_i->setData(*window_buf352r_buf352dr_i, (float*)buf352r, (float*)buf352dr, 1-index, 0);
    window_buf352r_buf352dr_i->acquire(*window_buf352r_buf352dr_i, LOCK_31_7_0_0, LOCK_31_7_1_0, 1-index);
    window_buf363r_buf363dr_i->setData(*window_buf363r_buf363dr_i, (float*)buf363r, (float*)buf363dr, 1-index, 0);
    window_buf363r_buf363dr_i->acquire(*window_buf363r_buf363dr_i, LOCK_31_7_2_7136, LOCK_31_7_3_3776, 1-index);
    window_buf368_buf368d_o->setData(*window_buf368_buf368d_o, (float*)buf368, (float*)buf368d, 1-index, 0);
    window_buf368_buf368d_o->acquire(*window_buf368_buf368d_o, LOCK_30_6_0_3040, LOCK_30_6_1_5056, 1-index);
    window_buf379_buf379d_o->setData(*window_buf379_buf379d_o, (float*)buf379, (float*)buf379d, 1-index, 0);
    window_buf379_buf379d_o->acquire(*window_buf379_buf379d_o, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    orthogonalize<256>(window_buf352r_buf352dr_i[0],window_buf363r_buf363dr_i[0],window_buf368_buf368d_o[0],window_buf379_buf379d_o[0]);
    window_buf352r_buf352dr_i->release(*window_buf352r_buf352dr_i, LOCK_31_7_0_0, LOCK_31_7_1_0, 1-index);
    window_buf363r_buf363dr_i->release(*window_buf363r_buf363dr_i, LOCK_31_7_2_7136, LOCK_31_7_3_3776, 1-index);
    window_buf368_buf368d_o->release(*window_buf368_buf368d_o, LOCK_30_6_0_3040, LOCK_30_6_1_5056, 1-index);
    window_buf379_buf379d_o->release(*window_buf379_buf379d_o, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_7_bounds > 0)
      --proc_30_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}