// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/24_2/src/24_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_2_0_0 16
#define LOCK_23_2_1_0 17
#define LOCK_23_2_2_0 18
#define LOCK_23_2_3_0 19
#define LOCK_24_3_0_7136 32
#define LOCK_24_3_1_0 33
#define LOCK_24_3_2_0 34
#define LOCK_24_3_3_0 35

// Declare shared memory buffers
v4float buf282[65];
v4float buf282d[65];
v4float buf283[65];
v4float buf283d[65];
v4float buf298[65];
v4float buf298d[65];
v4float buf299[65];
v4float buf299d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf282_buf282d_i[1] = {{(float*)buf282, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf283_buf283d_i[1] = {{(float*)buf283, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf298_buf298d_o[1] = {{(float*)buf298, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf299_buf299d_o[1] = {{(float*)buf299, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_24_2_bounds = sync_buffer[1];

  while (proc_24_2_bounds)
  {

    // Kernel call : i145:orthogonalize<256>
    window_buf282_buf282d_i->setData(*window_buf282_buf282d_i, (float*)buf282, (float*)buf282d, 1-index, 0);
    window_buf282_buf282d_i->acquire(*window_buf282_buf282d_i, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf283_buf283d_i->setData(*window_buf283_buf283d_i, (float*)buf283, (float*)buf283d, 1-index, 0);
    window_buf283_buf283d_i->acquire(*window_buf283_buf283d_i, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    window_buf298_buf298d_o->setData(*window_buf298_buf298d_o, (float*)buf298, (float*)buf298d, 1-index, 0);
    window_buf298_buf298d_o->acquire(*window_buf298_buf298d_o, LOCK_24_3_0_7136, LOCK_24_3_1_0, 1-index);
    window_buf299_buf299d_o->setData(*window_buf299_buf299d_o, (float*)buf299, (float*)buf299d, 1-index, 0);
    window_buf299_buf299d_o->acquire(*window_buf299_buf299d_o, LOCK_24_3_2_0, LOCK_24_3_3_0, 1-index);
    orthogonalize<256>(window_buf282_buf282d_i[0],window_buf283_buf283d_i[0],window_buf298_buf298d_o[0],window_buf299_buf299d_o[0]);
    window_buf282_buf282d_i->release(*window_buf282_buf282d_i, LOCK_23_2_0_0, LOCK_23_2_1_0, 1-index);
    window_buf283_buf283d_i->release(*window_buf283_buf283d_i, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    window_buf298_buf298d_o->release(*window_buf298_buf298d_o, LOCK_24_3_0_7136, LOCK_24_3_1_0, 1-index);
    window_buf299_buf299d_o->release(*window_buf299_buf299d_o, LOCK_24_3_2_0, LOCK_24_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_2_bounds > 0)
      --proc_24_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}