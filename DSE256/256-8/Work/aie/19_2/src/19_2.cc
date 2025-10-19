// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/19_2/src/19_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_1_4_5056 4
#define LOCK_19_1_5_7136 5
#define LOCK_19_1_6_0 6
#define LOCK_19_1_7_0 7
#define LOCK_19_3_0_7136 32
#define LOCK_19_3_1_0 33
#define LOCK_19_3_2_0 34
#define LOCK_19_3_3_0 35

// Declare shared memory buffers
v4float buf272[65];
v4float buf272d[65];
v4float buf273[65];
v4float buf273d[65];
v4float buf288[65];
v4float buf288d[65];
v4float buf289[65];
v4float buf289d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf272_buf272d_i[1] = {{(float*)buf272, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf273_buf273d_i[1] = {{(float*)buf273, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf288_buf288d_o[1] = {{(float*)buf288, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf289_buf289d_o[1] = {{(float*)buf289, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_2_bounds = sync_buffer[1];

  while (proc_19_2_bounds)
  {

    // Kernel call : i140:orthogonalize<256>
    window_buf272_buf272d_i->setData(*window_buf272_buf272d_i, (float*)buf272, (float*)buf272d, 1-index, 0);
    window_buf272_buf272d_i->acquire(*window_buf272_buf272d_i, LOCK_19_1_4_5056, LOCK_19_1_5_7136, 1-index);
    window_buf273_buf273d_i->setData(*window_buf273_buf273d_i, (float*)buf273, (float*)buf273d, 1-index, 0);
    window_buf273_buf273d_i->acquire(*window_buf273_buf273d_i, LOCK_19_1_6_0, LOCK_19_1_7_0, 1-index);
    window_buf288_buf288d_o->setData(*window_buf288_buf288d_o, (float*)buf288, (float*)buf288d, 1-index, 0);
    window_buf288_buf288d_o->acquire(*window_buf288_buf288d_o, LOCK_19_3_0_7136, LOCK_19_3_1_0, 1-index);
    window_buf289_buf289d_o->setData(*window_buf289_buf289d_o, (float*)buf289, (float*)buf289d, 1-index, 0);
    window_buf289_buf289d_o->acquire(*window_buf289_buf289d_o, LOCK_19_3_2_0, LOCK_19_3_3_0, 1-index);
    orthogonalize<256>(window_buf272_buf272d_i[0],window_buf273_buf273d_i[0],window_buf288_buf288d_o[0],window_buf289_buf289d_o[0]);
    window_buf272_buf272d_i->release(*window_buf272_buf272d_i, LOCK_19_1_4_5056, LOCK_19_1_5_7136, 1-index);
    window_buf273_buf273d_i->release(*window_buf273_buf273d_i, LOCK_19_1_6_0, LOCK_19_1_7_0, 1-index);
    window_buf288_buf288d_o->release(*window_buf288_buf288d_o, LOCK_19_3_0_7136, LOCK_19_3_1_0, 1-index);
    window_buf289_buf289d_o->release(*window_buf289_buf289d_o, LOCK_19_3_2_0, LOCK_19_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_2_bounds > 0)
      --proc_19_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}