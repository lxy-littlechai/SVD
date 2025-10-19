// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/35_6/src/35_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_6_0_3040 16
#define LOCK_34_6_1_3136 17
#define LOCK_35_6_0_7136 48
#define LOCK_35_6_1_0 49
#define LOCK_35_5_0_0 0
#define LOCK_35_5_1_0 1
#define LOCK_35_5_2_0 2
#define LOCK_35_5_3_0 3

// Declare shared memory buffers
v4float buf376[65];
v4float buf376d[65];
v4float buf383[65];
v4float buf383d[65];
v4float buf392[65];
v4float buf392d[65];
v4float buf399[65];
v4float buf399d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf376_buf376d_i[1] = {{(float*)buf376, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf383_buf383d_i[1] = {{(float*)buf383, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf392_buf392d_o[1] = {{(float*)buf392, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf399_buf399d_o[1] = {{(float*)buf399, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_6_bounds = sync_buffer[1];

  while (proc_35_6_bounds)
  {

    // Kernel call : i195:orthogonalize<256>
    window_buf376_buf376d_i->setData(*window_buf376_buf376d_i, (float*)buf376, (float*)buf376d, 1-index, 0);
    window_buf376_buf376d_i->acquire(*window_buf376_buf376d_i, LOCK_34_6_0_3040, LOCK_34_6_1_3136, 1-index);
    window_buf383_buf383d_i->setData(*window_buf383_buf383d_i, (float*)buf383, (float*)buf383d, 1-index, 0);
    window_buf383_buf383d_i->acquire(*window_buf383_buf383d_i, LOCK_35_6_0_7136, LOCK_35_6_1_0, 1-index);
    window_buf392_buf392d_o->setData(*window_buf392_buf392d_o, (float*)buf392, (float*)buf392d, 1-index, 0);
    window_buf392_buf392d_o->acquire(*window_buf392_buf392d_o, LOCK_35_5_0_0, LOCK_35_5_1_0, 1-index);
    window_buf399_buf399d_o->setData(*window_buf399_buf399d_o, (float*)buf399, (float*)buf399d, 1-index, 0);
    window_buf399_buf399d_o->acquire(*window_buf399_buf399d_o, LOCK_35_5_2_0, LOCK_35_5_3_0, 1-index);
    orthogonalize<256>(window_buf376_buf376d_i[0],window_buf383_buf383d_i[0],window_buf392_buf392d_o[0],window_buf399_buf399d_o[0]);
    window_buf376_buf376d_i->release(*window_buf376_buf376d_i, LOCK_34_6_0_3040, LOCK_34_6_1_3136, 1-index);
    window_buf383_buf383d_i->release(*window_buf383_buf383d_i, LOCK_35_6_0_7136, LOCK_35_6_1_0, 1-index);
    window_buf392_buf392d_o->release(*window_buf392_buf392d_o, LOCK_35_5_0_0, LOCK_35_5_1_0, 1-index);
    window_buf399_buf399d_o->release(*window_buf399_buf399d_o, LOCK_35_5_2_0, LOCK_35_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_6_bounds > 0)
      --proc_35_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}