// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/5_1/src/5_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_1_2_3040 18
#define LOCK_5_1_3_2080 19
#define LOCK_6_1_0_0 48
#define LOCK_6_1_1_0 49
#define LOCK_5_2_0_7136 32
#define LOCK_5_2_1_0 33
#define LOCK_5_2_2_0 34
#define LOCK_5_2_3_0 35

// Declare shared memory buffers
v4float buf24[65];
v4float buf24d[65];
v4float buf27[65];
v4float buf27d[65];
v4float buf40[65];
v4float buf40d[65];
v4float buf43[65];
v4float buf43d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_i[1] = {{(float*)buf24, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_i[1] = {{(float*)buf27, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_o[1] = {{(float*)buf40, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_o[1] = {{(float*)buf43, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_1_bounds = sync_buffer[1];

  while (proc_5_1_bounds)
  {

    // Kernel call : i12:orthogonalize<256>
    window_buf24_buf24d_i->setData(*window_buf24_buf24d_i, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_i->acquire(*window_buf24_buf24d_i, LOCK_5_1_2_3040, LOCK_5_1_3_2080, 1-index);
    window_buf27_buf27d_i->setData(*window_buf27_buf27d_i, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_i->acquire(*window_buf27_buf27d_i, LOCK_6_1_0_0, LOCK_6_1_1_0, 1-index);
    window_buf40_buf40d_o->setData(*window_buf40_buf40d_o, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_o->acquire(*window_buf40_buf40d_o, LOCK_5_2_0_7136, LOCK_5_2_1_0, 1-index);
    window_buf43_buf43d_o->setData(*window_buf43_buf43d_o, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_o->acquire(*window_buf43_buf43d_o, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    orthogonalize<256>(window_buf24_buf24d_i[0],window_buf27_buf27d_i[0],window_buf40_buf40d_o[0],window_buf43_buf43d_o[0]);
    window_buf24_buf24d_i->release(*window_buf24_buf24d_i, LOCK_5_1_2_3040, LOCK_5_1_3_2080, 1-index);
    window_buf27_buf27d_i->release(*window_buf27_buf27d_i, LOCK_6_1_0_0, LOCK_6_1_1_0, 1-index);
    window_buf40_buf40d_o->release(*window_buf40_buf40d_o, LOCK_5_2_0_7136, LOCK_5_2_1_0, 1-index);
    window_buf43_buf43d_o->release(*window_buf43_buf43d_o, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_1_bounds > 0)
      --proc_5_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}