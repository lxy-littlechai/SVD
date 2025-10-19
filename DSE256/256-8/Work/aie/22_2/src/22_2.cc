// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/22_2/src/22_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_2_0_0 16
#define LOCK_21_2_1_0 17
#define LOCK_21_2_2_0 18
#define LOCK_21_2_3_0 19
#define LOCK_22_3_0_7136 32
#define LOCK_22_3_1_0 33
#define LOCK_22_3_2_0 34
#define LOCK_22_3_3_0 35

// Declare shared memory buffers
v4float buf278[65];
v4float buf278d[65];
v4float buf279[65];
v4float buf279d[65];
v4float buf294[65];
v4float buf294d[65];
v4float buf295[65];
v4float buf295d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf278_buf278d_i[1] = {{(float*)buf278, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf279_buf279d_i[1] = {{(float*)buf279, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf294_buf294d_o[1] = {{(float*)buf294, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf295_buf295d_o[1] = {{(float*)buf295, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_2_bounds = sync_buffer[1];

  while (proc_22_2_bounds)
  {

    // Kernel call : i143:orthogonalize<256>
    window_buf278_buf278d_i->setData(*window_buf278_buf278d_i, (float*)buf278, (float*)buf278d, 1-index, 0);
    window_buf278_buf278d_i->acquire(*window_buf278_buf278d_i, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf279_buf279d_i->setData(*window_buf279_buf279d_i, (float*)buf279, (float*)buf279d, 1-index, 0);
    window_buf279_buf279d_i->acquire(*window_buf279_buf279d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf294_buf294d_o->setData(*window_buf294_buf294d_o, (float*)buf294, (float*)buf294d, 1-index, 0);
    window_buf294_buf294d_o->acquire(*window_buf294_buf294d_o, LOCK_22_3_0_7136, LOCK_22_3_1_0, 1-index);
    window_buf295_buf295d_o->setData(*window_buf295_buf295d_o, (float*)buf295, (float*)buf295d, 1-index, 0);
    window_buf295_buf295d_o->acquire(*window_buf295_buf295d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    orthogonalize<256>(window_buf278_buf278d_i[0],window_buf279_buf279d_i[0],window_buf294_buf294d_o[0],window_buf295_buf295d_o[0]);
    window_buf278_buf278d_i->release(*window_buf278_buf278d_i, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf279_buf279d_i->release(*window_buf279_buf279d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf294_buf294d_o->release(*window_buf294_buf294d_o, LOCK_22_3_0_7136, LOCK_22_3_1_0, 1-index);
    window_buf295_buf295d_o->release(*window_buf295_buf295d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_2_bounds > 0)
      --proc_22_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}