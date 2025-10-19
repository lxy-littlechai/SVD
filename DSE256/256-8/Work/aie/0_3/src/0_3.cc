// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/0_3/src/0_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_3_4_0 20
#define LOCK_0_3_5_0 21
#define LOCK_1_3_0_0 48
#define LOCK_1_3_1_0 49

// Declare shared memory buffers
v4float buf262[65];
v4float buf262d[65];
v4float buf263[65];
v4float buf263d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf262_buf262d_i[1] = {{(float*)buf262, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf263_buf263d_o[1] = {{(float*)buf263, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_3_bounds = sync_buffer[1];

  while (proc_0_3_bounds)
  {

    // Kernel call : i131:normalize<256>
    window_buf262_buf262d_i->setData(*window_buf262_buf262d_i, (float*)buf262, (float*)buf262d, 1-index, 0);
    window_buf262_buf262d_i->acquire(*window_buf262_buf262d_i, LOCK_0_3_4_0, LOCK_0_3_5_0, 1-index);
    window_buf263_buf263d_o->setData(*window_buf263_buf263d_o, (float*)buf263, (float*)buf263d, 1-index, 0);
    window_buf263_buf263d_o->acquire(*window_buf263_buf263d_o, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    normalize<256>(window_buf262_buf262d_i[0],window_buf263_buf263d_o[0]);
    window_buf262_buf262d_i->release(*window_buf262_buf262d_i, LOCK_0_3_4_0, LOCK_0_3_5_0, 1-index);
    window_buf263_buf263d_o->release(*window_buf263_buf263d_o, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_3_bounds > 0)
      --proc_0_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}