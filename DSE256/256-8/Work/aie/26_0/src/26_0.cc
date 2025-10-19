// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_0/src/26_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_0_0_0 48
#define LOCK_26_0_1_0 49
#define LOCK_26_0_2_7136 50
#define LOCK_26_0_3_3776 51
#define LOCK_26_1_0_3136 32
#define LOCK_26_1_1_7136 33
#define LOCK_26_1_2_7136 34
#define LOCK_26_1_3_1056 35

// Declare shared memory buffers
v4float buf224dr[65];
v4float buf224r[65];
v4float buf239dr[65];
v4float buf239r[65];
v4float buf240[65];
v4float buf240d[65];
v4float buf255[65];
v4float buf255d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224r_buf224dr_i[1] = {{(float*)buf224r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239r_buf239dr_i[1] = {{(float*)buf239r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_o[1] = {{(float*)buf240, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf255_buf255d_o[1] = {{(float*)buf255, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_0_bounds = sync_buffer[1];

  while (proc_26_0_bounds)
  {

    // Kernel call : i119:orthogonalize<256>
    window_buf224r_buf224dr_i->setData(*window_buf224r_buf224dr_i, (float*)buf224r, (float*)buf224dr, 1-index, 0);
    window_buf224r_buf224dr_i->acquire(*window_buf224r_buf224dr_i, LOCK_26_0_0_0, LOCK_26_0_1_0, 1-index);
    window_buf239r_buf239dr_i->setData(*window_buf239r_buf239dr_i, (float*)buf239r, (float*)buf239dr, 1-index, 0);
    window_buf239r_buf239dr_i->acquire(*window_buf239r_buf239dr_i, LOCK_26_0_2_7136, LOCK_26_0_3_3776, 1-index);
    window_buf240_buf240d_o->setData(*window_buf240_buf240d_o, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_o->acquire(*window_buf240_buf240d_o, LOCK_26_1_0_3136, LOCK_26_1_1_7136, 1-index);
    window_buf255_buf255d_o->setData(*window_buf255_buf255d_o, (float*)buf255, (float*)buf255d, 1-index, 0);
    window_buf255_buf255d_o->acquire(*window_buf255_buf255d_o, LOCK_26_1_2_7136, LOCK_26_1_3_1056, 1-index);
    orthogonalize<256>(window_buf224r_buf224dr_i[0],window_buf239r_buf239dr_i[0],window_buf240_buf240d_o[0],window_buf255_buf255d_o[0]);
    window_buf224r_buf224dr_i->release(*window_buf224r_buf224dr_i, LOCK_26_0_0_0, LOCK_26_0_1_0, 1-index);
    window_buf239r_buf239dr_i->release(*window_buf239r_buf239dr_i, LOCK_26_0_2_7136, LOCK_26_0_3_3776, 1-index);
    window_buf240_buf240d_o->release(*window_buf240_buf240d_o, LOCK_26_1_0_3136, LOCK_26_1_1_7136, 1-index);
    window_buf255_buf255d_o->release(*window_buf255_buf255d_o, LOCK_26_1_2_7136, LOCK_26_1_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_0_bounds > 0)
      --proc_26_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}