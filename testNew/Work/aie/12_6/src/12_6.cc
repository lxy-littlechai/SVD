// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_6/src/12_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_6_0_0 16
#define LOCK_11_6_1_0 17
#define LOCK_12_6_2_0 50
#define LOCK_12_6_3_0 51
#define LOCK_12_7_0_0 32
#define LOCK_12_7_1_0 33
#define LOCK_12_7_2_0 34
#define LOCK_12_7_3_0 35

// Declare shared memory buffers
v4float buf179[65];
v4float buf179d[65];
v4float buf180[65];
v4float buf180d[65];
v4float buf187[65];
v4float buf187d[65];
v4float buf188[65];
v4float buf188d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_i[1] = {{(float*)buf179, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_i[1] = {{(float*)buf180, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf187_buf187d_o[1] = {{(float*)buf187, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf188_buf188d_o[1] = {{(float*)buf188, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_6_bounds = sync_buffer[1];

  while (proc_12_6_bounds)
  {

    // Kernel call : i97:orthogonalize<256>
    window_buf179_buf179d_i->setData(*window_buf179_buf179d_i, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_i->acquire(*window_buf179_buf179d_i, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf180_buf180d_i->setData(*window_buf180_buf180d_i, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_i->acquire(*window_buf180_buf180d_i, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    window_buf187_buf187d_o->setData(*window_buf187_buf187d_o, (float*)buf187, (float*)buf187d, 1-index, 0);
    window_buf187_buf187d_o->acquire(*window_buf187_buf187d_o, LOCK_12_7_0_0, LOCK_12_7_1_0, 1-index);
    window_buf188_buf188d_o->setData(*window_buf188_buf188d_o, (float*)buf188, (float*)buf188d, 1-index, 0);
    window_buf188_buf188d_o->acquire(*window_buf188_buf188d_o, LOCK_12_7_2_0, LOCK_12_7_3_0, 1-index);
    orthogonalize<256>(window_buf179_buf179d_i[0],window_buf180_buf180d_i[0],window_buf187_buf187d_o[0],window_buf188_buf188d_o[0]);
    window_buf179_buf179d_i->release(*window_buf179_buf179d_i, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf180_buf180d_i->release(*window_buf180_buf180d_i, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    window_buf187_buf187d_o->release(*window_buf187_buf187d_o, LOCK_12_7_0_0, LOCK_12_7_1_0, 1-index);
    window_buf188_buf188d_o->release(*window_buf188_buf188d_o, LOCK_12_7_2_0, LOCK_12_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_6_bounds > 0)
      --proc_12_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}