// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_1/src/32_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_1_0_0 16
#define LOCK_32_1_1_0 17
#define LOCK_33_1_2_0 50
#define LOCK_33_1_3_0 51
#define LOCK_32_0_0_0 0
#define LOCK_32_0_1_0 1
#define LOCK_32_0_2_0 2
#define LOCK_32_0_3_0 3

// Declare shared memory buffers
v4float buf449[65];
v4float buf449d[65];
v4float buf456[65];
v4float buf456d[65];
v4float buf465[65];
v4float buf465d[65];
v4float buf472[65];
v4float buf472d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf449_buf449d_i[1] = {{(float*)buf449, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf456_buf456d_i[1] = {{(float*)buf456, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf465_buf465d_o[1] = {{(float*)buf465, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf472_buf472d_o[1] = {{(float*)buf472, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_1_bounds = sync_buffer[1];

  while (proc_32_1_bounds)
  {

    // Kernel call : i232:orthogonalize<256>
    window_buf449_buf449d_i->setData(*window_buf449_buf449d_i, (float*)buf449, (float*)buf449d, 1-index, 0);
    window_buf449_buf449d_i->acquire(*window_buf449_buf449d_i, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf456_buf456d_i->setData(*window_buf456_buf456d_i, (float*)buf456, (float*)buf456d, 1-index, 0);
    window_buf456_buf456d_i->acquire(*window_buf456_buf456d_i, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    window_buf465_buf465d_o->setData(*window_buf465_buf465d_o, (float*)buf465, (float*)buf465d, 1-index, 0);
    window_buf465_buf465d_o->acquire(*window_buf465_buf465d_o, LOCK_32_0_0_0, LOCK_32_0_1_0, 1-index);
    window_buf472_buf472d_o->setData(*window_buf472_buf472d_o, (float*)buf472, (float*)buf472d, 1-index, 0);
    window_buf472_buf472d_o->acquire(*window_buf472_buf472d_o, LOCK_32_0_2_0, LOCK_32_0_3_0, 1-index);
    orthogonalize<256>(window_buf449_buf449d_i[0],window_buf456_buf456d_i[0],window_buf465_buf465d_o[0],window_buf472_buf472d_o[0]);
    window_buf449_buf449d_i->release(*window_buf449_buf449d_i, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf456_buf456d_i->release(*window_buf456_buf456d_i, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    window_buf465_buf465d_o->release(*window_buf465_buf465d_o, LOCK_32_0_0_0, LOCK_32_0_1_0, 1-index);
    window_buf472_buf472d_o->release(*window_buf472_buf472d_o, LOCK_32_0_2_0, LOCK_32_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_1_bounds > 0)
      --proc_32_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}