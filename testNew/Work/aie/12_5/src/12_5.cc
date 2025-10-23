// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_5/src/12_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_5_0_7136 16
#define LOCK_12_5_1_0 17
#define LOCK_13_5_2_0 50
#define LOCK_13_5_3_0 51
#define LOCK_12_6_0_0 32
#define LOCK_12_6_1_0 33
#define LOCK_12_6_2_0 34
#define LOCK_12_6_3_0 35

// Declare shared memory buffers
v4float buf169[65];
v4float buf169d[65];
v4float buf172[65];
v4float buf172d[65];
v4float buf177[65];
v4float buf177d[65];
v4float buf180[65];
v4float buf180d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf169_buf169d_i[1] = {{(float*)buf169, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172_buf172d_i[1] = {{(float*)buf172, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_o[1] = {{(float*)buf177, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_o[1] = {{(float*)buf180, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_5_bounds = sync_buffer[1];

  while (proc_12_5_bounds)
  {

    // Kernel call : i93:orthogonalize<256>
    window_buf169_buf169d_i->setData(*window_buf169_buf169d_i, (float*)buf169, (float*)buf169d, 1-index, 0);
    window_buf169_buf169d_i->acquire(*window_buf169_buf169d_i, LOCK_12_5_0_7136, LOCK_12_5_1_0, 1-index);
    window_buf172_buf172d_i->setData(*window_buf172_buf172d_i, (float*)buf172, (float*)buf172d, 1-index, 0);
    window_buf172_buf172d_i->acquire(*window_buf172_buf172d_i, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    window_buf177_buf177d_o->setData(*window_buf177_buf177d_o, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_o->acquire(*window_buf177_buf177d_o, LOCK_12_6_0_0, LOCK_12_6_1_0, 1-index);
    window_buf180_buf180d_o->setData(*window_buf180_buf180d_o, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_o->acquire(*window_buf180_buf180d_o, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    orthogonalize<256>(window_buf169_buf169d_i[0],window_buf172_buf172d_i[0],window_buf177_buf177d_o[0],window_buf180_buf180d_o[0]);
    window_buf169_buf169d_i->release(*window_buf169_buf169d_i, LOCK_12_5_0_7136, LOCK_12_5_1_0, 1-index);
    window_buf172_buf172d_i->release(*window_buf172_buf172d_i, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    window_buf177_buf177d_o->release(*window_buf177_buf177d_o, LOCK_12_6_0_0, LOCK_12_6_1_0, 1-index);
    window_buf180_buf180d_o->release(*window_buf180_buf180d_o, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_5_bounds > 0)
      --proc_12_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}