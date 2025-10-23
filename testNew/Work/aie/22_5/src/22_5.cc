// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_5/src/22_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_5_0_7136 16
#define LOCK_22_5_1_0 17
#define LOCK_23_5_0_0 48
#define LOCK_23_5_1_0 49
#define LOCK_22_6_0_0 32
#define LOCK_22_6_1_0 33
#define LOCK_22_6_2_0 34
#define LOCK_22_6_3_0 35

// Declare shared memory buffers
v4float buf232[65];
v4float buf232d[65];
v4float buf234[65];
v4float buf234d[65];
v4float buf240[65];
v4float buf240d[65];
v4float buf242[65];
v4float buf242d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232_buf232d_i[1] = {{(float*)buf232, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf234_buf234d_i[1] = {{(float*)buf234, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_o[1] = {{(float*)buf240, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf242_buf242d_o[1] = {{(float*)buf242, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_5_bounds = sync_buffer[1];

  while (proc_22_5_bounds)
  {

    // Kernel call : i130:orthogonalize<256>
    window_buf232_buf232d_i->setData(*window_buf232_buf232d_i, (float*)buf232, (float*)buf232d, 1-index, 0);
    window_buf232_buf232d_i->acquire(*window_buf232_buf232d_i, LOCK_22_5_0_7136, LOCK_22_5_1_0, 1-index);
    window_buf234_buf234d_i->setData(*window_buf234_buf234d_i, (float*)buf234, (float*)buf234d, 1-index, 0);
    window_buf234_buf234d_i->acquire(*window_buf234_buf234d_i, LOCK_23_5_0_0, LOCK_23_5_1_0, 1-index);
    window_buf240_buf240d_o->setData(*window_buf240_buf240d_o, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_o->acquire(*window_buf240_buf240d_o, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf242_buf242d_o->setData(*window_buf242_buf242d_o, (float*)buf242, (float*)buf242d, 1-index, 0);
    window_buf242_buf242d_o->acquire(*window_buf242_buf242d_o, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    orthogonalize<256>(window_buf232_buf232d_i[0],window_buf234_buf234d_i[0],window_buf240_buf240d_o[0],window_buf242_buf242d_o[0]);
    window_buf232_buf232d_i->release(*window_buf232_buf232d_i, LOCK_22_5_0_7136, LOCK_22_5_1_0, 1-index);
    window_buf234_buf234d_i->release(*window_buf234_buf234d_i, LOCK_23_5_0_0, LOCK_23_5_1_0, 1-index);
    window_buf240_buf240d_o->release(*window_buf240_buf240d_o, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf242_buf242d_o->release(*window_buf242_buf242d_o, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_5_bounds > 0)
      --proc_22_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}