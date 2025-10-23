// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_3/src/23_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_3_2_0 18
#define LOCK_23_3_3_0 19
#define LOCK_24_3_0_0 48
#define LOCK_24_3_1_0 49
#define LOCK_23_2_0_0 0
#define LOCK_23_2_1_0 1
#define LOCK_23_2_2_0 2
#define LOCK_23_2_3_0 3

// Declare shared memory buffers
v4float buf253dr[9];
v4float buf253r[9];
v4float buf263[9];
v4float buf263d[9];
v4float buf275[9];
v4float buf275d[9];
v4float buf285[9];
v4float buf285d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf263_buf263d_i[1] = {{(float*)buf263, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf253r_buf253dr_i[1] = {{(float*)buf253r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf285_buf285d_o[1] = {{(float*)buf285, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf275_buf275d_o[1] = {{(float*)buf275, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_3_bounds = sync_buffer[1];

  while (proc_23_3_bounds)
  {

    // Kernel call : i131:orthogonalize<32>
    window_buf263_buf263d_i->setData(*window_buf263_buf263d_i, (float*)buf263, (float*)buf263d, 1-index, 0);
    window_buf263_buf263d_i->acquire(*window_buf263_buf263d_i, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    window_buf253r_buf253dr_i->setData(*window_buf253r_buf253dr_i, (float*)buf253r, (float*)buf253dr, 1-index, 0);
    window_buf253r_buf253dr_i->acquire(*window_buf253r_buf253dr_i, LOCK_24_3_0_0, LOCK_24_3_1_0, 1-index);
    window_buf285_buf285d_o->setData(*window_buf285_buf285d_o, (float*)buf285, (float*)buf285d, 1-index, 0);
    window_buf285_buf285d_o->acquire(*window_buf285_buf285d_o, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf275_buf275d_o->setData(*window_buf275_buf275d_o, (float*)buf275, (float*)buf275d, 1-index, 0);
    window_buf275_buf275d_o->acquire(*window_buf275_buf275d_o, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    orthogonalize<32>(window_buf263_buf263d_i[0],window_buf253r_buf253dr_i[0],window_buf285_buf285d_o[0],window_buf275_buf275d_o[0]);
    window_buf263_buf263d_i->release(*window_buf263_buf263d_i, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    window_buf253r_buf253dr_i->release(*window_buf253r_buf253dr_i, LOCK_24_3_0_0, LOCK_24_3_1_0, 1-index);
    window_buf285_buf285d_o->release(*window_buf285_buf285d_o, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf275_buf275d_o->release(*window_buf275_buf275d_o, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_3_bounds > 0)
      --proc_23_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}