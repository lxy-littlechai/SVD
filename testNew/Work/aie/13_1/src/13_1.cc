// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/13_1/src/13_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_1_0_2112 16
#define LOCK_13_1_1_1056 17
#define LOCK_14_1_0_7136 48
#define LOCK_14_1_1_0 49
#define LOCK_13_2_0_3040 32
#define LOCK_13_2_1_2080 33
#define LOCK_13_2_2_0 34
#define LOCK_13_2_3_0 35

// Declare shared memory buffers
v4float buf140[65];
v4float buf140d[65];
v4float buf142[65];
v4float buf142d[65];
v4float buf148[65];
v4float buf148d[65];
v4float buf150[65];
v4float buf150d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_i[1] = {{(float*)buf140, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf142_buf142d_i[1] = {{(float*)buf142, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf148_buf148d_o[1] = {{(float*)buf148, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf150_buf150d_o[1] = {{(float*)buf150, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_1_bounds = sync_buffer[1];

  while (proc_13_1_bounds)
  {

    // Kernel call : i78:orthogonalize<256>
    window_buf140_buf140d_i->setData(*window_buf140_buf140d_i, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_i->acquire(*window_buf140_buf140d_i, LOCK_13_1_0_2112, LOCK_13_1_1_1056, 1-index);
    window_buf142_buf142d_i->setData(*window_buf142_buf142d_i, (float*)buf142, (float*)buf142d, 1-index, 0);
    window_buf142_buf142d_i->acquire(*window_buf142_buf142d_i, LOCK_14_1_0_7136, LOCK_14_1_1_0, 1-index);
    window_buf148_buf148d_o->setData(*window_buf148_buf148d_o, (float*)buf148, (float*)buf148d, 1-index, 0);
    window_buf148_buf148d_o->acquire(*window_buf148_buf148d_o, LOCK_13_2_0_3040, LOCK_13_2_1_2080, 1-index);
    window_buf150_buf150d_o->setData(*window_buf150_buf150d_o, (float*)buf150, (float*)buf150d, 1-index, 0);
    window_buf150_buf150d_o->acquire(*window_buf150_buf150d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    orthogonalize<256>(window_buf140_buf140d_i[0],window_buf142_buf142d_i[0],window_buf148_buf148d_o[0],window_buf150_buf150d_o[0]);
    window_buf140_buf140d_i->release(*window_buf140_buf140d_i, LOCK_13_1_0_2112, LOCK_13_1_1_1056, 1-index);
    window_buf142_buf142d_i->release(*window_buf142_buf142d_i, LOCK_14_1_0_7136, LOCK_14_1_1_0, 1-index);
    window_buf148_buf148d_o->release(*window_buf148_buf148d_o, LOCK_13_2_0_3040, LOCK_13_2_1_2080, 1-index);
    window_buf150_buf150d_o->release(*window_buf150_buf150d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_1_bounds > 0)
      --proc_13_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}