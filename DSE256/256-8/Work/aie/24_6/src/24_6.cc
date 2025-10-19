// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/24_6/src/24_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_6_0_0 16
#define LOCK_23_6_1_0 17
#define LOCK_24_6_2_0 50
#define LOCK_24_6_3_0 51
#define LOCK_24_7_0_0 32
#define LOCK_24_7_1_0 33
#define LOCK_24_7_2_0 34
#define LOCK_24_7_3_0 35

// Declare shared memory buffers
v4float buf342[65];
v4float buf342d[65];
v4float buf350[65];
v4float buf350d[65];
v4float buf358[65];
v4float buf358d[65];
v4float buf366[65];
v4float buf366d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf342_buf342d_i[1] = {{(float*)buf342, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf350_buf350d_i[1] = {{(float*)buf350, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf358_buf358d_o[1] = {{(float*)buf358, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf366_buf366d_o[1] = {{(float*)buf366, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_24_6_bounds = sync_buffer[1];

  while (proc_24_6_bounds)
  {

    // Kernel call : i177:orthogonalize<256>
    window_buf342_buf342d_i->setData(*window_buf342_buf342d_i, (float*)buf342, (float*)buf342d, 1-index, 0);
    window_buf342_buf342d_i->acquire(*window_buf342_buf342d_i, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf350_buf350d_i->setData(*window_buf350_buf350d_i, (float*)buf350, (float*)buf350d, 1-index, 0);
    window_buf350_buf350d_i->acquire(*window_buf350_buf350d_i, LOCK_24_6_2_0, LOCK_24_6_3_0, 1-index);
    window_buf358_buf358d_o->setData(*window_buf358_buf358d_o, (float*)buf358, (float*)buf358d, 1-index, 0);
    window_buf358_buf358d_o->acquire(*window_buf358_buf358d_o, LOCK_24_7_0_0, LOCK_24_7_1_0, 1-index);
    window_buf366_buf366d_o->setData(*window_buf366_buf366d_o, (float*)buf366, (float*)buf366d, 1-index, 0);
    window_buf366_buf366d_o->acquire(*window_buf366_buf366d_o, LOCK_24_7_2_0, LOCK_24_7_3_0, 1-index);
    orthogonalize<256>(window_buf342_buf342d_i[0],window_buf350_buf350d_i[0],window_buf358_buf358d_o[0],window_buf366_buf366d_o[0]);
    window_buf342_buf342d_i->release(*window_buf342_buf342d_i, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf350_buf350d_i->release(*window_buf350_buf350d_i, LOCK_24_6_2_0, LOCK_24_6_3_0, 1-index);
    window_buf358_buf358d_o->release(*window_buf358_buf358d_o, LOCK_24_7_0_0, LOCK_24_7_1_0, 1-index);
    window_buf366_buf366d_o->release(*window_buf366_buf366d_o, LOCK_24_7_2_0, LOCK_24_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_6_bounds > 0)
      --proc_24_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}