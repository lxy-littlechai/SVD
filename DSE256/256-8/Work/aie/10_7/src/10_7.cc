// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/10_7/src/10_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_7_0_0 48
#define LOCK_11_7_1_0 49
#define LOCK_10_7_0_0 16
#define LOCK_10_7_1_0 17
#define LOCK_10_6_0_0 0
#define LOCK_10_6_1_0 1
#define LOCK_10_6_2_0 2
#define LOCK_10_6_3_0 3

// Declare shared memory buffers
v4float buf117dr[65];
v4float buf117r[65];
v4float buf121dr[65];
v4float buf121r[65];
v4float buf133[65];
v4float buf133d[65];
v4float buf137[65];
v4float buf137d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf117r_buf117dr_i[1] = {{(float*)buf117r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf121r_buf121dr_i[1] = {{(float*)buf121r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf133_buf133d_o[1] = {{(float*)buf133, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137_buf137d_o[1] = {{(float*)buf137, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_7_bounds = sync_buffer[1];

  while (proc_10_7_bounds)
  {

    // Kernel call : i56:orthogonalize<256>
    window_buf117r_buf117dr_i->setData(*window_buf117r_buf117dr_i, (float*)buf117r, (float*)buf117dr, 1-index, 0);
    window_buf117r_buf117dr_i->acquire(*window_buf117r_buf117dr_i, LOCK_11_7_0_0, LOCK_11_7_1_0, 1-index);
    window_buf121r_buf121dr_i->setData(*window_buf121r_buf121dr_i, (float*)buf121r, (float*)buf121dr, 1-index, 0);
    window_buf121r_buf121dr_i->acquire(*window_buf121r_buf121dr_i, LOCK_10_7_0_0, LOCK_10_7_1_0, 1-index);
    window_buf133_buf133d_o->setData(*window_buf133_buf133d_o, (float*)buf133, (float*)buf133d, 1-index, 0);
    window_buf133_buf133d_o->acquire(*window_buf133_buf133d_o, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf137_buf137d_o->setData(*window_buf137_buf137d_o, (float*)buf137, (float*)buf137d, 1-index, 0);
    window_buf137_buf137d_o->acquire(*window_buf137_buf137d_o, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    orthogonalize<256>(window_buf117r_buf117dr_i[0],window_buf121r_buf121dr_i[0],window_buf133_buf133d_o[0],window_buf137_buf137d_o[0]);
    window_buf117r_buf117dr_i->release(*window_buf117r_buf117dr_i, LOCK_11_7_0_0, LOCK_11_7_1_0, 1-index);
    window_buf121r_buf121dr_i->release(*window_buf121r_buf121dr_i, LOCK_10_7_0_0, LOCK_10_7_1_0, 1-index);
    window_buf133_buf133d_o->release(*window_buf133_buf133d_o, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf137_buf137d_o->release(*window_buf137_buf137d_o, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_7_bounds > 0)
      --proc_10_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}