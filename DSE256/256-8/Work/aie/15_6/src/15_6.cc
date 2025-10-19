// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/15_6/src/15_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_6_0_0 16
#define LOCK_14_6_1_0 17
#define LOCK_15_6_2_0 50
#define LOCK_15_6_3_0 51
#define LOCK_15_5_0_0 0
#define LOCK_15_5_1_0 1
#define LOCK_15_5_2_0 2
#define LOCK_15_5_3_0 3

// Declare shared memory buffers
v4float buf130[65];
v4float buf130d[65];
v4float buf138[65];
v4float buf138d[65];
v4float buf146[65];
v4float buf146d[65];
v4float buf154[65];
v4float buf154d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf130_buf130d_i[1] = {{(float*)buf130, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf138_buf138d_i[1] = {{(float*)buf138, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf146_buf146d_o[1] = {{(float*)buf146, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf154_buf154d_o[1] = {{(float*)buf154, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_6_bounds = sync_buffer[1];

  while (proc_15_6_bounds)
  {

    // Kernel call : i69:orthogonalize<256>
    window_buf130_buf130d_i->setData(*window_buf130_buf130d_i, (float*)buf130, (float*)buf130d, 1-index, 0);
    window_buf130_buf130d_i->acquire(*window_buf130_buf130d_i, LOCK_14_6_0_0, LOCK_14_6_1_0, 1-index);
    window_buf138_buf138d_i->setData(*window_buf138_buf138d_i, (float*)buf138, (float*)buf138d, 1-index, 0);
    window_buf138_buf138d_i->acquire(*window_buf138_buf138d_i, LOCK_15_6_2_0, LOCK_15_6_3_0, 1-index);
    window_buf146_buf146d_o->setData(*window_buf146_buf146d_o, (float*)buf146, (float*)buf146d, 1-index, 0);
    window_buf146_buf146d_o->acquire(*window_buf146_buf146d_o, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    window_buf154_buf154d_o->setData(*window_buf154_buf154d_o, (float*)buf154, (float*)buf154d, 1-index, 0);
    window_buf154_buf154d_o->acquire(*window_buf154_buf154d_o, LOCK_15_5_2_0, LOCK_15_5_3_0, 1-index);
    orthogonalize<256>(window_buf130_buf130d_i[0],window_buf138_buf138d_i[0],window_buf146_buf146d_o[0],window_buf154_buf154d_o[0]);
    window_buf130_buf130d_i->release(*window_buf130_buf130d_i, LOCK_14_6_0_0, LOCK_14_6_1_0, 1-index);
    window_buf138_buf138d_i->release(*window_buf138_buf138d_i, LOCK_15_6_2_0, LOCK_15_6_3_0, 1-index);
    window_buf146_buf146d_o->release(*window_buf146_buf146d_o, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    window_buf154_buf154d_o->release(*window_buf154_buf154d_o, LOCK_15_5_2_0, LOCK_15_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_6_bounds > 0)
      --proc_15_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}