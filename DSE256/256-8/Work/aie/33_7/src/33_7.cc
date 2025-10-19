// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_7/src/33_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_7_0_0 16
#define LOCK_33_7_1_3584 17
#define LOCK_33_7_2_0 18
#define LOCK_33_7_3_0 19
#define LOCK_33_6_0_3040 0
#define LOCK_33_6_1_5056 1
#define LOCK_33_6_2_2080 2
#define LOCK_33_6_3_0 3

// Declare shared memory buffers
v4float buf358dr[65];
v4float buf358r[65];
v4float buf364dr[65];
v4float buf364r[65];
v4float buf374[65];
v4float buf374d[65];
v4float buf380[65];
v4float buf380d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf358r_buf358dr_i[1] = {{(float*)buf358r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf364r_buf364dr_i[1] = {{(float*)buf364r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf374_buf374d_o[1] = {{(float*)buf374, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf380_buf380d_o[1] = {{(float*)buf380, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_7_bounds = sync_buffer[1];

  while (proc_33_7_bounds)
  {

    // Kernel call : i185:orthogonalize<256>
    window_buf358r_buf358dr_i->setData(*window_buf358r_buf358dr_i, (float*)buf358r, (float*)buf358dr, 1-index, 0);
    window_buf358r_buf358dr_i->acquire(*window_buf358r_buf358dr_i, LOCK_33_7_0_0, LOCK_33_7_1_3584, 1-index);
    window_buf364r_buf364dr_i->setData(*window_buf364r_buf364dr_i, (float*)buf364r, (float*)buf364dr, 1-index, 0);
    window_buf364r_buf364dr_i->acquire(*window_buf364r_buf364dr_i, LOCK_33_7_2_0, LOCK_33_7_3_0, 1-index);
    window_buf374_buf374d_o->setData(*window_buf374_buf374d_o, (float*)buf374, (float*)buf374d, 1-index, 0);
    window_buf374_buf374d_o->acquire(*window_buf374_buf374d_o, LOCK_33_6_0_3040, LOCK_33_6_1_5056, 1-index);
    window_buf380_buf380d_o->setData(*window_buf380_buf380d_o, (float*)buf380, (float*)buf380d, 1-index, 0);
    window_buf380_buf380d_o->acquire(*window_buf380_buf380d_o, LOCK_33_6_2_2080, LOCK_33_6_3_0, 1-index);
    orthogonalize<256>(window_buf358r_buf358dr_i[0],window_buf364r_buf364dr_i[0],window_buf374_buf374d_o[0],window_buf380_buf380d_o[0]);
    window_buf358r_buf358dr_i->release(*window_buf358r_buf358dr_i, LOCK_33_7_0_0, LOCK_33_7_1_3584, 1-index);
    window_buf364r_buf364dr_i->release(*window_buf364r_buf364dr_i, LOCK_33_7_2_0, LOCK_33_7_3_0, 1-index);
    window_buf374_buf374d_o->release(*window_buf374_buf374d_o, LOCK_33_6_0_3040, LOCK_33_6_1_5056, 1-index);
    window_buf380_buf380d_o->release(*window_buf380_buf380d_o, LOCK_33_6_2_2080, LOCK_33_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_7_bounds > 0)
      --proc_33_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}