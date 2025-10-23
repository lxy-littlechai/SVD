// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/8_2/src/8_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_2_0_7136 16
#define LOCK_7_2_1_0 17
#define LOCK_8_2_2_0 50
#define LOCK_8_2_3_0 51
#define LOCK_8_3_0_0 32
#define LOCK_8_3_1_0 33
#define LOCK_8_3_2_0 34
#define LOCK_8_3_3_0 35

// Declare shared memory buffers
v4float buf82[65];
v4float buf82d[65];
v4float buf86[65];
v4float buf86d[65];
v4float buf90[65];
v4float buf90d[65];
v4float buf94[65];
v4float buf94d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_i[1] = {{(float*)buf82, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf86_buf86d_i[1] = {{(float*)buf86, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf90_buf90d_o[1] = {{(float*)buf90, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf94_buf94d_o[1] = {{(float*)buf94, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_2_bounds = sync_buffer[1];

  while (proc_8_2_bounds)
  {

    // Kernel call : i46:orthogonalize<256>
    window_buf82_buf82d_i->setData(*window_buf82_buf82d_i, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_i->acquire(*window_buf82_buf82d_i, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf86_buf86d_i->setData(*window_buf86_buf86d_i, (float*)buf86, (float*)buf86d, 1-index, 0);
    window_buf86_buf86d_i->acquire(*window_buf86_buf86d_i, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    window_buf90_buf90d_o->setData(*window_buf90_buf90d_o, (float*)buf90, (float*)buf90d, 1-index, 0);
    window_buf90_buf90d_o->acquire(*window_buf90_buf90d_o, LOCK_8_3_0_0, LOCK_8_3_1_0, 1-index);
    window_buf94_buf94d_o->setData(*window_buf94_buf94d_o, (float*)buf94, (float*)buf94d, 1-index, 0);
    window_buf94_buf94d_o->acquire(*window_buf94_buf94d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    orthogonalize<256>(window_buf82_buf82d_i[0],window_buf86_buf86d_i[0],window_buf90_buf90d_o[0],window_buf94_buf94d_o[0]);
    window_buf82_buf82d_i->release(*window_buf82_buf82d_i, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf86_buf86d_i->release(*window_buf86_buf86d_i, LOCK_8_2_2_0, LOCK_8_2_3_0, 1-index);
    window_buf90_buf90d_o->release(*window_buf90_buf90d_o, LOCK_8_3_0_0, LOCK_8_3_1_0, 1-index);
    window_buf94_buf94d_o->release(*window_buf94_buf94d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_2_bounds > 0)
      --proc_8_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}