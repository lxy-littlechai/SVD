// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/23_6/src/23_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_6_0_0 16
#define LOCK_22_6_1_0 17
#define LOCK_23_6_2_0 50
#define LOCK_23_6_3_0 51
#define LOCK_23_7_0_0 32
#define LOCK_23_7_1_0 33
#define LOCK_23_7_2_0 34
#define LOCK_23_7_3_0 35

// Declare shared memory buffers
v4float buf340[65];
v4float buf340d[65];
v4float buf349[65];
v4float buf349d[65];
v4float buf356[65];
v4float buf356d[65];
v4float buf365[65];
v4float buf365d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf340_buf340d_i[1] = {{(float*)buf340, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf349_buf349d_i[1] = {{(float*)buf349, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf356_buf356d_o[1] = {{(float*)buf356, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf365_buf365d_o[1] = {{(float*)buf365, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_6_bounds = sync_buffer[1];

  while (proc_23_6_bounds)
  {

    // Kernel call : i176:orthogonalize<256>
    window_buf340_buf340d_i->setData(*window_buf340_buf340d_i, (float*)buf340, (float*)buf340d, 1-index, 0);
    window_buf340_buf340d_i->acquire(*window_buf340_buf340d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf349_buf349d_i->setData(*window_buf349_buf349d_i, (float*)buf349, (float*)buf349d, 1-index, 0);
    window_buf349_buf349d_i->acquire(*window_buf349_buf349d_i, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    window_buf356_buf356d_o->setData(*window_buf356_buf356d_o, (float*)buf356, (float*)buf356d, 1-index, 0);
    window_buf356_buf356d_o->acquire(*window_buf356_buf356d_o, LOCK_23_7_0_0, LOCK_23_7_1_0, 1-index);
    window_buf365_buf365d_o->setData(*window_buf365_buf365d_o, (float*)buf365, (float*)buf365d, 1-index, 0);
    window_buf365_buf365d_o->acquire(*window_buf365_buf365d_o, LOCK_23_7_2_0, LOCK_23_7_3_0, 1-index);
    orthogonalize<256>(window_buf340_buf340d_i[0],window_buf349_buf349d_i[0],window_buf356_buf356d_o[0],window_buf365_buf365d_o[0]);
    window_buf340_buf340d_i->release(*window_buf340_buf340d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf349_buf349d_i->release(*window_buf349_buf349d_i, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    window_buf356_buf356d_o->release(*window_buf356_buf356d_o, LOCK_23_7_0_0, LOCK_23_7_1_0, 1-index);
    window_buf365_buf365d_o->release(*window_buf365_buf365d_o, LOCK_23_7_2_0, LOCK_23_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_6_bounds > 0)
      --proc_23_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}