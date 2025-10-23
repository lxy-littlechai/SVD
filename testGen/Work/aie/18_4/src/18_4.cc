// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_4/src/18_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_4_0_3936 16
#define LOCK_17_4_1_2080 17
#define LOCK_18_4_2_0 50
#define LOCK_18_4_3_0 51
#define LOCK_18_3_0_0 0
#define LOCK_18_3_1_0 1
#define LOCK_18_3_2_0 2
#define LOCK_18_3_3_0 3

// Declare shared memory buffers
v4float buf220[9];
v4float buf220d[9];
v4float buf240[9];
v4float buf240d[9];
v4float buf242[9];
v4float buf242d[9];
v4float buf262[9];
v4float buf262d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_i[1] = {{(float*)buf220, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_i[1] = {{(float*)buf240, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf242_buf242d_o[1] = {{(float*)buf242, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf262_buf262d_o[1] = {{(float*)buf262, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_4_bounds = sync_buffer[1];

  while (proc_18_4_bounds)
  {

    // Kernel call : i115:orthogonalize<32>
    window_buf220_buf220d_i->setData(*window_buf220_buf220d_i, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_i->acquire(*window_buf220_buf220d_i, LOCK_17_4_0_3936, LOCK_17_4_1_2080, 1-index);
    window_buf240_buf240d_i->setData(*window_buf240_buf240d_i, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_i->acquire(*window_buf240_buf240d_i, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    window_buf242_buf242d_o->setData(*window_buf242_buf242d_o, (float*)buf242, (float*)buf242d, 1-index, 0);
    window_buf242_buf242d_o->acquire(*window_buf242_buf242d_o, LOCK_18_3_0_0, LOCK_18_3_1_0, 1-index);
    window_buf262_buf262d_o->setData(*window_buf262_buf262d_o, (float*)buf262, (float*)buf262d, 1-index, 0);
    window_buf262_buf262d_o->acquire(*window_buf262_buf262d_o, LOCK_18_3_2_0, LOCK_18_3_3_0, 1-index);
    orthogonalize<32>(window_buf220_buf220d_i[0],window_buf240_buf240d_i[0],window_buf242_buf242d_o[0],window_buf262_buf262d_o[0]);
    window_buf220_buf220d_i->release(*window_buf220_buf220d_i, LOCK_17_4_0_3936, LOCK_17_4_1_2080, 1-index);
    window_buf240_buf240d_i->release(*window_buf240_buf240d_i, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    window_buf242_buf242d_o->release(*window_buf242_buf242d_o, LOCK_18_3_0_0, LOCK_18_3_1_0, 1-index);
    window_buf262_buf262d_o->release(*window_buf262_buf262d_o, LOCK_18_3_2_0, LOCK_18_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_4_bounds > 0)
      --proc_18_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}