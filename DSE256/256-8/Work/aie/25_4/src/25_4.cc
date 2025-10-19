// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_4/src/25_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_4_0_0 16
#define LOCK_24_4_1_0 17
#define LOCK_25_4_2_0 50
#define LOCK_25_4_3_0 51
#define LOCK_25_5_0_0 32
#define LOCK_25_5_1_0 33
#define LOCK_25_5_2_0 34
#define LOCK_25_5_3_0 35

// Declare shared memory buffers
v4float buf314[65];
v4float buf314d[65];
v4float buf318[65];
v4float buf318d[65];
v4float buf330[65];
v4float buf330d[65];
v4float buf334[65];
v4float buf334d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf314_buf314d_i[1] = {{(float*)buf314, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf318_buf318d_i[1] = {{(float*)buf318, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf330_buf330d_o[1] = {{(float*)buf330, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf334_buf334d_o[1] = {{(float*)buf334, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_4_bounds = sync_buffer[1];

  while (proc_25_4_bounds)
  {

    // Kernel call : i162:orthogonalize<256>
    window_buf314_buf314d_i->setData(*window_buf314_buf314d_i, (float*)buf314, (float*)buf314d, 1-index, 0);
    window_buf314_buf314d_i->acquire(*window_buf314_buf314d_i, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf318_buf318d_i->setData(*window_buf318_buf318d_i, (float*)buf318, (float*)buf318d, 1-index, 0);
    window_buf318_buf318d_i->acquire(*window_buf318_buf318d_i, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    window_buf330_buf330d_o->setData(*window_buf330_buf330d_o, (float*)buf330, (float*)buf330d, 1-index, 0);
    window_buf330_buf330d_o->acquire(*window_buf330_buf330d_o, LOCK_25_5_0_0, LOCK_25_5_1_0, 1-index);
    window_buf334_buf334d_o->setData(*window_buf334_buf334d_o, (float*)buf334, (float*)buf334d, 1-index, 0);
    window_buf334_buf334d_o->acquire(*window_buf334_buf334d_o, LOCK_25_5_2_0, LOCK_25_5_3_0, 1-index);
    orthogonalize<256>(window_buf314_buf314d_i[0],window_buf318_buf318d_i[0],window_buf330_buf330d_o[0],window_buf334_buf334d_o[0]);
    window_buf314_buf314d_i->release(*window_buf314_buf314d_i, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf318_buf318d_i->release(*window_buf318_buf318d_i, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    window_buf330_buf330d_o->release(*window_buf330_buf330d_o, LOCK_25_5_0_0, LOCK_25_5_1_0, 1-index);
    window_buf334_buf334d_o->release(*window_buf334_buf334d_o, LOCK_25_5_2_0, LOCK_25_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_4_bounds > 0)
      --proc_25_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}