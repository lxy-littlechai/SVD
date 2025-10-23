// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_2/src/14_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_2_0_3040 16
#define LOCK_13_2_1_2080 17
#define LOCK_14_2_0_7136 48
#define LOCK_14_2_1_0 49
#define LOCK_14_3_0_7136 32
#define LOCK_14_3_1_0 33
#define LOCK_14_3_2_0 34
#define LOCK_14_3_3_0 35

// Declare shared memory buffers
v4float buf148[65];
v4float buf148d[65];
v4float buf151[65];
v4float buf151d[65];
v4float buf156[65];
v4float buf156d[65];
v4float buf159[65];
v4float buf159d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf148_buf148d_i[1] = {{(float*)buf148, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_i[1] = {{(float*)buf151, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf156_buf156d_o[1] = {{(float*)buf156, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159_buf159d_o[1] = {{(float*)buf159, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_2_bounds = sync_buffer[1];

  while (proc_14_2_bounds)
  {

    // Kernel call : i83:orthogonalize<256>
    window_buf148_buf148d_i->setData(*window_buf148_buf148d_i, (float*)buf148, (float*)buf148d, 1-index, 0);
    window_buf148_buf148d_i->acquire(*window_buf148_buf148d_i, LOCK_13_2_0_3040, LOCK_13_2_1_2080, 1-index);
    window_buf151_buf151d_i->setData(*window_buf151_buf151d_i, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_i->acquire(*window_buf151_buf151d_i, LOCK_14_2_0_7136, LOCK_14_2_1_0, 1-index);
    window_buf156_buf156d_o->setData(*window_buf156_buf156d_o, (float*)buf156, (float*)buf156d, 1-index, 0);
    window_buf156_buf156d_o->acquire(*window_buf156_buf156d_o, LOCK_14_3_0_7136, LOCK_14_3_1_0, 1-index);
    window_buf159_buf159d_o->setData(*window_buf159_buf159d_o, (float*)buf159, (float*)buf159d, 1-index, 0);
    window_buf159_buf159d_o->acquire(*window_buf159_buf159d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    orthogonalize<256>(window_buf148_buf148d_i[0],window_buf151_buf151d_i[0],window_buf156_buf156d_o[0],window_buf159_buf159d_o[0]);
    window_buf148_buf148d_i->release(*window_buf148_buf148d_i, LOCK_13_2_0_3040, LOCK_13_2_1_2080, 1-index);
    window_buf151_buf151d_i->release(*window_buf151_buf151d_i, LOCK_14_2_0_7136, LOCK_14_2_1_0, 1-index);
    window_buf156_buf156d_o->release(*window_buf156_buf156d_o, LOCK_14_3_0_7136, LOCK_14_3_1_0, 1-index);
    window_buf159_buf159d_o->release(*window_buf159_buf159d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_2_bounds > 0)
      --proc_14_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}