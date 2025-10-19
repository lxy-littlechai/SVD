// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/15_3/src/15_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_3_0_7136 16
#define LOCK_15_3_1_0 17
#define LOCK_16_3_2_0 50
#define LOCK_16_3_3_0 51
#define LOCK_15_2_2_7136 2
#define LOCK_15_2_3_0 3
#define LOCK_15_2_0_0 0
#define LOCK_15_2_1_0 1

// Declare shared memory buffers
v4float buf176[65];
v4float buf176d[65];
v4float buf182[65];
v4float buf182d[65];
v4float buf192[65];
v4float buf192d[65];
v4float buf198[65];
v4float buf198d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf176_buf176d_i[1] = {{(float*)buf176, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_i[1] = {{(float*)buf182, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf192_buf192d_o[1] = {{(float*)buf192, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf198_buf198d_o[1] = {{(float*)buf198, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_3_bounds = sync_buffer[1];

  while (proc_15_3_bounds)
  {

    // Kernel call : i93:orthogonalize<256>
    window_buf176_buf176d_i->setData(*window_buf176_buf176d_i, (float*)buf176, (float*)buf176d, 1-index, 0);
    window_buf176_buf176d_i->acquire(*window_buf176_buf176d_i, LOCK_15_3_0_7136, LOCK_15_3_1_0, 1-index);
    window_buf182_buf182d_i->setData(*window_buf182_buf182d_i, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_i->acquire(*window_buf182_buf182d_i, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    window_buf192_buf192d_o->setData(*window_buf192_buf192d_o, (float*)buf192, (float*)buf192d, 1-index, 0);
    window_buf192_buf192d_o->acquire(*window_buf192_buf192d_o, LOCK_15_2_2_7136, LOCK_15_2_3_0, 1-index);
    window_buf198_buf198d_o->setData(*window_buf198_buf198d_o, (float*)buf198, (float*)buf198d, 1-index, 0);
    window_buf198_buf198d_o->acquire(*window_buf198_buf198d_o, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    orthogonalize<256>(window_buf176_buf176d_i[0],window_buf182_buf182d_i[0],window_buf192_buf192d_o[0],window_buf198_buf198d_o[0]);
    window_buf176_buf176d_i->release(*window_buf176_buf176d_i, LOCK_15_3_0_7136, LOCK_15_3_1_0, 1-index);
    window_buf182_buf182d_i->release(*window_buf182_buf182d_i, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    window_buf192_buf192d_o->release(*window_buf192_buf192d_o, LOCK_15_2_2_7136, LOCK_15_2_3_0, 1-index);
    window_buf198_buf198d_o->release(*window_buf198_buf198d_o, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_3_bounds > 0)
      --proc_15_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}