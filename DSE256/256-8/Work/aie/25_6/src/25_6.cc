// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_6/src/25_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_6_0_0 16
#define LOCK_24_6_1_0 17
#define LOCK_25_6_2_0 50
#define LOCK_25_6_3_0 51
#define LOCK_25_7_0_0 32
#define LOCK_25_7_1_0 33
#define LOCK_25_7_2_0 34
#define LOCK_25_7_3_0 35

// Declare shared memory buffers
v4float buf344[65];
v4float buf344d[65];
v4float buf348[65];
v4float buf348d[65];
v4float buf360[65];
v4float buf360d[65];
v4float buf364[65];
v4float buf364d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf344_buf344d_i[1] = {{(float*)buf344, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf348_buf348d_i[1] = {{(float*)buf348, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf360_buf360d_o[1] = {{(float*)buf360, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf364_buf364d_o[1] = {{(float*)buf364, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_6_bounds = sync_buffer[1];

  while (proc_25_6_bounds)
  {

    // Kernel call : i178:orthogonalize<256>
    window_buf344_buf344d_i->setData(*window_buf344_buf344d_i, (float*)buf344, (float*)buf344d, 1-index, 0);
    window_buf344_buf344d_i->acquire(*window_buf344_buf344d_i, LOCK_24_6_0_0, LOCK_24_6_1_0, 1-index);
    window_buf348_buf348d_i->setData(*window_buf348_buf348d_i, (float*)buf348, (float*)buf348d, 1-index, 0);
    window_buf348_buf348d_i->acquire(*window_buf348_buf348d_i, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    window_buf360_buf360d_o->setData(*window_buf360_buf360d_o, (float*)buf360, (float*)buf360d, 1-index, 0);
    window_buf360_buf360d_o->acquire(*window_buf360_buf360d_o, LOCK_25_7_0_0, LOCK_25_7_1_0, 1-index);
    window_buf364_buf364d_o->setData(*window_buf364_buf364d_o, (float*)buf364, (float*)buf364d, 1-index, 0);
    window_buf364_buf364d_o->acquire(*window_buf364_buf364d_o, LOCK_25_7_2_0, LOCK_25_7_3_0, 1-index);
    orthogonalize<256>(window_buf344_buf344d_i[0],window_buf348_buf348d_i[0],window_buf360_buf360d_o[0],window_buf364_buf364d_o[0]);
    window_buf344_buf344d_i->release(*window_buf344_buf344d_i, LOCK_24_6_0_0, LOCK_24_6_1_0, 1-index);
    window_buf348_buf348d_i->release(*window_buf348_buf348d_i, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    window_buf360_buf360d_o->release(*window_buf360_buf360d_o, LOCK_25_7_0_0, LOCK_25_7_1_0, 1-index);
    window_buf364_buf364d_o->release(*window_buf364_buf364d_o, LOCK_25_7_2_0, LOCK_25_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_6_bounds > 0)
      --proc_25_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}