// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_1/src/25_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_1_0_0 16
#define LOCK_25_1_1_0 17
#define LOCK_26_1_2_0 50
#define LOCK_26_1_3_0 51
#define LOCK_25_2_0_0 32
#define LOCK_25_2_1_0 33
#define LOCK_25_2_2_0 34
#define LOCK_25_2_3_0 35

// Declare shared memory buffers
v4float buf343[9];
v4float buf343d[9];
v4float buf347[9];
v4float buf347d[9];
v4float buf365[9];
v4float buf365d[9];
v4float buf369[9];
v4float buf369d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf343_buf343d_i[1] = {{(float*)buf343, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf347_buf347d_i[1] = {{(float*)buf347, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf365_buf365d_o[1] = {{(float*)buf365, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf369_buf369d_o[1] = {{(float*)buf369, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_1_bounds = sync_buffer[1];

  while (proc_25_1_bounds)
  {

    // Kernel call : i165:orthogonalize<32>
    window_buf343_buf343d_i->setData(*window_buf343_buf343d_i, (float*)buf343, (float*)buf343d, 1-index, 0);
    window_buf343_buf343d_i->acquire(*window_buf343_buf343d_i, LOCK_25_1_0_0, LOCK_25_1_1_0, 1-index);
    window_buf347_buf347d_i->setData(*window_buf347_buf347d_i, (float*)buf347, (float*)buf347d, 1-index, 0);
    window_buf347_buf347d_i->acquire(*window_buf347_buf347d_i, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    window_buf365_buf365d_o->setData(*window_buf365_buf365d_o, (float*)buf365, (float*)buf365d, 1-index, 0);
    window_buf365_buf365d_o->acquire(*window_buf365_buf365d_o, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf369_buf369d_o->setData(*window_buf369_buf369d_o, (float*)buf369, (float*)buf369d, 1-index, 0);
    window_buf369_buf369d_o->acquire(*window_buf369_buf369d_o, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    orthogonalize<32>(window_buf343_buf343d_i[0],window_buf347_buf347d_i[0],window_buf365_buf365d_o[0],window_buf369_buf369d_o[0]);
    window_buf343_buf343d_i->release(*window_buf343_buf343d_i, LOCK_25_1_0_0, LOCK_25_1_1_0, 1-index);
    window_buf347_buf347d_i->release(*window_buf347_buf347d_i, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    window_buf365_buf365d_o->release(*window_buf365_buf365d_o, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf369_buf369d_o->release(*window_buf369_buf369d_o, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_1_bounds > 0)
      --proc_25_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}