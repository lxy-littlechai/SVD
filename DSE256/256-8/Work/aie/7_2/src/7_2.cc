// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/7_2/src/7_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_2_0_0 16
#define LOCK_6_2_1_0 17
#define LOCK_7_2_2_0 50
#define LOCK_7_2_3_0 51
#define LOCK_7_3_0_7136 32
#define LOCK_7_3_1_0 33
#define LOCK_7_3_2_0 34
#define LOCK_7_3_3_0 35

// Declare shared memory buffers
v4float buf42[65];
v4float buf42d[65];
v4float buf46[65];
v4float buf46d[65];
v4float buf58[65];
v4float buf58d[65];
v4float buf62[65];
v4float buf62d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf42_buf42d_i[1] = {{(float*)buf42, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_i[1] = {{(float*)buf46, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_o[1] = {{(float*)buf58, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf62_buf62d_o[1] = {{(float*)buf62, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_2_bounds = sync_buffer[1];

  while (proc_7_2_bounds)
  {

    // Kernel call : i22:orthogonalize<256>
    window_buf42_buf42d_i->setData(*window_buf42_buf42d_i, (float*)buf42, (float*)buf42d, 1-index, 0);
    window_buf42_buf42d_i->acquire(*window_buf42_buf42d_i, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf46_buf46d_i->setData(*window_buf46_buf46d_i, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_i->acquire(*window_buf46_buf46d_i, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    window_buf58_buf58d_o->setData(*window_buf58_buf58d_o, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_o->acquire(*window_buf58_buf58d_o, LOCK_7_3_0_7136, LOCK_7_3_1_0, 1-index);
    window_buf62_buf62d_o->setData(*window_buf62_buf62d_o, (float*)buf62, (float*)buf62d, 1-index, 0);
    window_buf62_buf62d_o->acquire(*window_buf62_buf62d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    orthogonalize<256>(window_buf42_buf42d_i[0],window_buf46_buf46d_i[0],window_buf58_buf58d_o[0],window_buf62_buf62d_o[0]);
    window_buf42_buf42d_i->release(*window_buf42_buf42d_i, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf46_buf46d_i->release(*window_buf46_buf46d_i, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    window_buf58_buf58d_o->release(*window_buf58_buf58d_o, LOCK_7_3_0_7136, LOCK_7_3_1_0, 1-index);
    window_buf62_buf62d_o->release(*window_buf62_buf62d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_2_bounds > 0)
      --proc_7_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}