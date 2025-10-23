// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_1/src/32_1.cc
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
#define LOCK_32_2_0_8032 32
#define LOCK_32_2_1_0 33
#define LOCK_32_2_2_0 34
#define LOCK_32_2_3_0 35

// Declare shared memory buffers
v4float buf330[9];
v4float buf330d[9];
v4float buf340[9];
v4float buf340d[9];
v4float buf352[9];
v4float buf352d[9];
v4float buf362[9];
v4float buf362d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf330_buf330d_i[1] = {{(float*)buf330, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf340_buf340d_i[1] = {{(float*)buf340, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf352_buf352d_o[1] = {{(float*)buf352, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf362_buf362d_o[1] = {{(float*)buf362, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_1_bounds = sync_buffer[1];

  while (proc_32_1_bounds)
  {

    // Kernel call : i172:orthogonalize<32>
    window_buf330_buf330d_i->setData(*window_buf330_buf330d_i, (float*)buf330, (float*)buf330d, 1-index, 0);
    window_buf330_buf330d_i->acquire(*window_buf330_buf330d_i, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf340_buf340d_i->setData(*window_buf340_buf340d_i, (float*)buf340, (float*)buf340d, 1-index, 0);
    window_buf340_buf340d_i->acquire(*window_buf340_buf340d_i, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    window_buf352_buf352d_o->setData(*window_buf352_buf352d_o, (float*)buf352, (float*)buf352d, 1-index, 0);
    window_buf352_buf352d_o->acquire(*window_buf352_buf352d_o, LOCK_32_2_0_8032, LOCK_32_2_1_0, 1-index);
    window_buf362_buf362d_o->setData(*window_buf362_buf362d_o, (float*)buf362, (float*)buf362d, 1-index, 0);
    window_buf362_buf362d_o->acquire(*window_buf362_buf362d_o, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    orthogonalize<32>(window_buf330_buf330d_i[0],window_buf340_buf340d_i[0],window_buf352_buf352d_o[0],window_buf362_buf362d_o[0]);
    window_buf330_buf330d_i->release(*window_buf330_buf330d_i, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf340_buf340d_i->release(*window_buf340_buf340d_i, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    window_buf352_buf352d_o->release(*window_buf352_buf352d_o, LOCK_32_2_0_8032, LOCK_32_2_1_0, 1-index);
    window_buf362_buf362d_o->release(*window_buf362_buf362d_o, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
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