// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_2/src/34_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_2_0_0 16
#define LOCK_33_2_1_0 17
#define LOCK_34_2_2_0 50
#define LOCK_34_2_3_0 51
#define LOCK_34_1_0_0 0
#define LOCK_34_1_1_0 1
#define LOCK_34_1_2_0 2
#define LOCK_34_1_3_0 3

// Declare shared memory buffers
v4float buf434[65];
v4float buf434d[65];
v4float buf438[65];
v4float buf438d[65];
v4float buf450[65];
v4float buf450d[65];
v4float buf454[65];
v4float buf454d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf434_buf434d_i[1] = {{(float*)buf434, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf438_buf438d_i[1] = {{(float*)buf438, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf450_buf450d_o[1] = {{(float*)buf450, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf454_buf454d_o[1] = {{(float*)buf454, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_2_bounds = sync_buffer[1];

  while (proc_34_2_bounds)
  {

    // Kernel call : i226:orthogonalize<256>
    window_buf434_buf434d_i->setData(*window_buf434_buf434d_i, (float*)buf434, (float*)buf434d, 1-index, 0);
    window_buf434_buf434d_i->acquire(*window_buf434_buf434d_i, LOCK_33_2_0_0, LOCK_33_2_1_0, 1-index);
    window_buf438_buf438d_i->setData(*window_buf438_buf438d_i, (float*)buf438, (float*)buf438d, 1-index, 0);
    window_buf438_buf438d_i->acquire(*window_buf438_buf438d_i, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    window_buf450_buf450d_o->setData(*window_buf450_buf450d_o, (float*)buf450, (float*)buf450d, 1-index, 0);
    window_buf450_buf450d_o->acquire(*window_buf450_buf450d_o, LOCK_34_1_0_0, LOCK_34_1_1_0, 1-index);
    window_buf454_buf454d_o->setData(*window_buf454_buf454d_o, (float*)buf454, (float*)buf454d, 1-index, 0);
    window_buf454_buf454d_o->acquire(*window_buf454_buf454d_o, LOCK_34_1_2_0, LOCK_34_1_3_0, 1-index);
    orthogonalize<256>(window_buf434_buf434d_i[0],window_buf438_buf438d_i[0],window_buf450_buf450d_o[0],window_buf454_buf454d_o[0]);
    window_buf434_buf434d_i->release(*window_buf434_buf434d_i, LOCK_33_2_0_0, LOCK_33_2_1_0, 1-index);
    window_buf438_buf438d_i->release(*window_buf438_buf438d_i, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    window_buf450_buf450d_o->release(*window_buf450_buf450d_o, LOCK_34_1_0_0, LOCK_34_1_1_0, 1-index);
    window_buf454_buf454d_o->release(*window_buf454_buf454d_o, LOCK_34_1_2_0, LOCK_34_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_2_bounds > 0)
      --proc_34_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}