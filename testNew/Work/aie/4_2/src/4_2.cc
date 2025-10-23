// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/4_2/src/4_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_2_2_3040 18
#define LOCK_3_2_3_2080 19
#define LOCK_4_2_0_7136 48
#define LOCK_4_2_1_0 49
#define LOCK_4_3_0_7136 32
#define LOCK_4_3_1_0 33
#define LOCK_4_3_2_0 34
#define LOCK_4_3_3_0 35

// Declare shared memory buffers
v4float buf20[65];
v4float buf20d[65];
v4float buf23[65];
v4float buf23d[65];
v4float buf28[65];
v4float buf28d[65];
v4float buf31[65];
v4float buf31d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_i[1] = {{(float*)buf20, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23_buf23d_i[1] = {{(float*)buf23, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_o[1] = {{(float*)buf28, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_o[1] = {{(float*)buf31, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_2_bounds = sync_buffer[1];

  while (proc_4_2_bounds)
  {

    // Kernel call : i11:orthogonalize<256>
    window_buf20_buf20d_i->setData(*window_buf20_buf20d_i, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_i->acquire(*window_buf20_buf20d_i, LOCK_3_2_2_3040, LOCK_3_2_3_2080, 1-index);
    window_buf23_buf23d_i->setData(*window_buf23_buf23d_i, (float*)buf23, (float*)buf23d, 1-index, 0);
    window_buf23_buf23d_i->acquire(*window_buf23_buf23d_i, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf28_buf28d_o->setData(*window_buf28_buf28d_o, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_o->acquire(*window_buf28_buf28d_o, LOCK_4_3_0_7136, LOCK_4_3_1_0, 1-index);
    window_buf31_buf31d_o->setData(*window_buf31_buf31d_o, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_o->acquire(*window_buf31_buf31d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    orthogonalize<256>(window_buf20_buf20d_i[0],window_buf23_buf23d_i[0],window_buf28_buf28d_o[0],window_buf31_buf31d_o[0]);
    window_buf20_buf20d_i->release(*window_buf20_buf20d_i, LOCK_3_2_2_3040, LOCK_3_2_3_2080, 1-index);
    window_buf23_buf23d_i->release(*window_buf23_buf23d_i, LOCK_4_2_0_7136, LOCK_4_2_1_0, 1-index);
    window_buf28_buf28d_o->release(*window_buf28_buf28d_o, LOCK_4_3_0_7136, LOCK_4_3_1_0, 1-index);
    window_buf31_buf31d_o->release(*window_buf31_buf31d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_2_bounds > 0)
      --proc_4_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}