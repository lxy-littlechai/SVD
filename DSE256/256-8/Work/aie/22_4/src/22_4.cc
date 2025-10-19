// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/22_4/src/22_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_4_0_0 16
#define LOCK_21_4_1_0 17
#define LOCK_22_4_2_0 50
#define LOCK_22_4_3_0 51
#define LOCK_22_5_0_0 32
#define LOCK_22_5_1_0 33
#define LOCK_22_5_2_0 34
#define LOCK_22_5_3_0 35

// Declare shared memory buffers
v4float buf308[65];
v4float buf308d[65];
v4float buf313[65];
v4float buf313d[65];
v4float buf324[65];
v4float buf324d[65];
v4float buf329[65];
v4float buf329d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf308_buf308d_i[1] = {{(float*)buf308, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf313_buf313d_i[1] = {{(float*)buf313, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf324_buf324d_o[1] = {{(float*)buf324, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf329_buf329d_o[1] = {{(float*)buf329, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_4_bounds = sync_buffer[1];

  while (proc_22_4_bounds)
  {

    // Kernel call : i159:orthogonalize<256>
    window_buf308_buf308d_i->setData(*window_buf308_buf308d_i, (float*)buf308, (float*)buf308d, 1-index, 0);
    window_buf308_buf308d_i->acquire(*window_buf308_buf308d_i, LOCK_21_4_0_0, LOCK_21_4_1_0, 1-index);
    window_buf313_buf313d_i->setData(*window_buf313_buf313d_i, (float*)buf313, (float*)buf313d, 1-index, 0);
    window_buf313_buf313d_i->acquire(*window_buf313_buf313d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf324_buf324d_o->setData(*window_buf324_buf324d_o, (float*)buf324, (float*)buf324d, 1-index, 0);
    window_buf324_buf324d_o->acquire(*window_buf324_buf324d_o, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    window_buf329_buf329d_o->setData(*window_buf329_buf329d_o, (float*)buf329, (float*)buf329d, 1-index, 0);
    window_buf329_buf329d_o->acquire(*window_buf329_buf329d_o, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    orthogonalize<256>(window_buf308_buf308d_i[0],window_buf313_buf313d_i[0],window_buf324_buf324d_o[0],window_buf329_buf329d_o[0]);
    window_buf308_buf308d_i->release(*window_buf308_buf308d_i, LOCK_21_4_0_0, LOCK_21_4_1_0, 1-index);
    window_buf313_buf313d_i->release(*window_buf313_buf313d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf324_buf324d_o->release(*window_buf324_buf324d_o, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    window_buf329_buf329d_o->release(*window_buf329_buf329d_o, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_4_bounds > 0)
      --proc_22_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}