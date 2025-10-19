// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_5/src/32_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_5_0_0 16
#define LOCK_32_5_1_0 17
#define LOCK_33_5_2_0 50
#define LOCK_33_5_3_0 51
#define LOCK_32_4_0_3040 0
#define LOCK_32_4_1_2080 1
#define LOCK_32_4_2_0 2
#define LOCK_32_4_3_0 3

// Declare shared memory buffers
v4float buf386[65];
v4float buf386d[65];
v4float buf396[65];
v4float buf396d[65];
v4float buf402[65];
v4float buf402d[65];
v4float buf412[65];
v4float buf412d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf386_buf386d_i[1] = {{(float*)buf386, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf396_buf396d_i[1] = {{(float*)buf396, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf402_buf402d_o[1] = {{(float*)buf402, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf412_buf412d_o[1] = {{(float*)buf412, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_5_bounds = sync_buffer[1];

  while (proc_32_5_bounds)
  {

    // Kernel call : i200:orthogonalize<256>
    window_buf386_buf386d_i->setData(*window_buf386_buf386d_i, (float*)buf386, (float*)buf386d, 1-index, 0);
    window_buf386_buf386d_i->acquire(*window_buf386_buf386d_i, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf396_buf396d_i->setData(*window_buf396_buf396d_i, (float*)buf396, (float*)buf396d, 1-index, 0);
    window_buf396_buf396d_i->acquire(*window_buf396_buf396d_i, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    window_buf402_buf402d_o->setData(*window_buf402_buf402d_o, (float*)buf402, (float*)buf402d, 1-index, 0);
    window_buf402_buf402d_o->acquire(*window_buf402_buf402d_o, LOCK_32_4_0_3040, LOCK_32_4_1_2080, 1-index);
    window_buf412_buf412d_o->setData(*window_buf412_buf412d_o, (float*)buf412, (float*)buf412d, 1-index, 0);
    window_buf412_buf412d_o->acquire(*window_buf412_buf412d_o, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    orthogonalize<256>(window_buf386_buf386d_i[0],window_buf396_buf396d_i[0],window_buf402_buf402d_o[0],window_buf412_buf412d_o[0]);
    window_buf386_buf386d_i->release(*window_buf386_buf386d_i, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf396_buf396d_i->release(*window_buf396_buf396d_i, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    window_buf402_buf402d_o->release(*window_buf402_buf402d_o, LOCK_32_4_0_3040, LOCK_32_4_1_2080, 1-index);
    window_buf412_buf412d_o->release(*window_buf412_buf412d_o, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_5_bounds > 0)
      --proc_32_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}