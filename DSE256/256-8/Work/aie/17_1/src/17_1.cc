// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/17_1/src/17_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_1_2_0 18
#define LOCK_17_1_3_0 19
#define LOCK_17_0_0_0 0
#define LOCK_17_0_1_0 1
#define LOCK_17_0_2_1056 2
#define LOCK_17_0_3_1056 3
#define LOCK_17_0_4_0 4
#define LOCK_17_0_5_0 5

// Declare shared memory buffers
v4float buf221dr[65];
v4float buf221r[65];
v4float buf223[65];
v4float buf223d[65];
v4float buf237[65];
v4float buf237d[65];
v4float buf239[65];
v4float buf239d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf223_buf223d_i[1] = {{(float*)buf223, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221r_buf221dr_i[1] = {{(float*)buf221r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239_buf239d_o[1] = {{(float*)buf239, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf237_buf237d_o[1] = {{(float*)buf237, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_1_bounds = sync_buffer[1];

  while (proc_17_1_bounds)
  {

    // Kernel call : i111:orthogonalize<256>
    window_buf223_buf223d_i->setData(*window_buf223_buf223d_i, (float*)buf223, (float*)buf223d, 1-index, 0);
    window_buf223_buf223d_i->acquire(*window_buf223_buf223d_i, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    window_buf221r_buf221dr_i->setData(*window_buf221r_buf221dr_i, (float*)buf221r, (float*)buf221dr, 1-index, 0);
    window_buf221r_buf221dr_i->acquire(*window_buf221r_buf221dr_i, LOCK_17_0_0_0, LOCK_17_0_1_0, 1-index);
    window_buf239_buf239d_o->setData(*window_buf239_buf239d_o, (float*)buf239, (float*)buf239d, 1-index, 0);
    window_buf239_buf239d_o->acquire(*window_buf239_buf239d_o, LOCK_17_0_2_1056, LOCK_17_0_3_1056, 1-index);
    window_buf237_buf237d_o->setData(*window_buf237_buf237d_o, (float*)buf237, (float*)buf237d, 1-index, 0);
    window_buf237_buf237d_o->acquire(*window_buf237_buf237d_o, LOCK_17_0_4_0, LOCK_17_0_5_0, 1-index);
    orthogonalize<256>(window_buf223_buf223d_i[0],window_buf221r_buf221dr_i[0],window_buf239_buf239d_o[0],window_buf237_buf237d_o[0]);
    window_buf223_buf223d_i->release(*window_buf223_buf223d_i, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    window_buf221r_buf221dr_i->release(*window_buf221r_buf221dr_i, LOCK_17_0_0_0, LOCK_17_0_1_0, 1-index);
    window_buf239_buf239d_o->release(*window_buf239_buf239d_o, LOCK_17_0_2_1056, LOCK_17_0_3_1056, 1-index);
    window_buf237_buf237d_o->release(*window_buf237_buf237d_o, LOCK_17_0_4_0, LOCK_17_0_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_1_bounds > 0)
      --proc_17_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}