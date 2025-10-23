// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_1/src/21_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_1_0_3936 16
#define LOCK_21_1_1_2080 17
#define LOCK_22_1_2_0 50
#define LOCK_22_1_3_0 51
#define LOCK_21_0_0_8032 0
#define LOCK_21_0_1_0 1
#define LOCK_21_0_2_0 2
#define LOCK_21_0_3_0 3

// Declare shared memory buffers
v4float buf290[9];
v4float buf290d[9];
v4float buf296[9];
v4float buf296d[9];
v4float buf312[9];
v4float buf312d[9];
v4float buf318[9];
v4float buf318d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf290_buf290d_i[1] = {{(float*)buf290, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf296_buf296d_i[1] = {{(float*)buf296, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf312_buf312d_o[1] = {{(float*)buf312, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf318_buf318d_o[1] = {{(float*)buf318, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_1_bounds = sync_buffer[1];

  while (proc_21_1_bounds)
  {

    // Kernel call : i151:orthogonalize<32>
    window_buf290_buf290d_i->setData(*window_buf290_buf290d_i, (float*)buf290, (float*)buf290d, 1-index, 0);
    window_buf290_buf290d_i->acquire(*window_buf290_buf290d_i, LOCK_21_1_0_3936, LOCK_21_1_1_2080, 1-index);
    window_buf296_buf296d_i->setData(*window_buf296_buf296d_i, (float*)buf296, (float*)buf296d, 1-index, 0);
    window_buf296_buf296d_i->acquire(*window_buf296_buf296d_i, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    window_buf312_buf312d_o->setData(*window_buf312_buf312d_o, (float*)buf312, (float*)buf312d, 1-index, 0);
    window_buf312_buf312d_o->acquire(*window_buf312_buf312d_o, LOCK_21_0_0_8032, LOCK_21_0_1_0, 1-index);
    window_buf318_buf318d_o->setData(*window_buf318_buf318d_o, (float*)buf318, (float*)buf318d, 1-index, 0);
    window_buf318_buf318d_o->acquire(*window_buf318_buf318d_o, LOCK_21_0_2_0, LOCK_21_0_3_0, 1-index);
    orthogonalize<32>(window_buf290_buf290d_i[0],window_buf296_buf296d_i[0],window_buf312_buf312d_o[0],window_buf318_buf318d_o[0]);
    window_buf290_buf290d_i->release(*window_buf290_buf290d_i, LOCK_21_1_0_3936, LOCK_21_1_1_2080, 1-index);
    window_buf296_buf296d_i->release(*window_buf296_buf296d_i, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    window_buf312_buf312d_o->release(*window_buf312_buf312d_o, LOCK_21_0_0_8032, LOCK_21_0_1_0, 1-index);
    window_buf318_buf318d_o->release(*window_buf318_buf318d_o, LOCK_21_0_2_0, LOCK_21_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_1_bounds > 0)
      --proc_21_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}