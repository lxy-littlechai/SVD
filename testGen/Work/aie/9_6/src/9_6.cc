// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_6/src/9_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_6_0_3936 16
#define LOCK_8_6_1_2080 17
#define LOCK_9_6_2_0 50
#define LOCK_9_6_3_0 51
#define LOCK_9_7_0_0 32
#define LOCK_9_7_1_0 33
#define LOCK_9_7_2_0 34
#define LOCK_9_7_3_0 35

// Declare shared memory buffers
v4float buf142[9];
v4float buf142d[9];
v4float buf150[9];
v4float buf150d[9];
v4float buf164[9];
v4float buf164d[9];
v4float buf172[9];
v4float buf172d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf142_buf142d_i[1] = {{(float*)buf142, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf150_buf150d_i[1] = {{(float*)buf150, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf164_buf164d_o[1] = {{(float*)buf164, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172_buf172d_o[1] = {{(float*)buf172, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_6_bounds = sync_buffer[1];

  while (proc_9_6_bounds)
  {

    // Kernel call : i74:orthogonalize<32>
    window_buf142_buf142d_i->setData(*window_buf142_buf142d_i, (float*)buf142, (float*)buf142d, 1-index, 0);
    window_buf142_buf142d_i->acquire(*window_buf142_buf142d_i, LOCK_8_6_0_3936, LOCK_8_6_1_2080, 1-index);
    window_buf150_buf150d_i->setData(*window_buf150_buf150d_i, (float*)buf150, (float*)buf150d, 1-index, 0);
    window_buf150_buf150d_i->acquire(*window_buf150_buf150d_i, LOCK_9_6_2_0, LOCK_9_6_3_0, 1-index);
    window_buf164_buf164d_o->setData(*window_buf164_buf164d_o, (float*)buf164, (float*)buf164d, 1-index, 0);
    window_buf164_buf164d_o->acquire(*window_buf164_buf164d_o, LOCK_9_7_0_0, LOCK_9_7_1_0, 1-index);
    window_buf172_buf172d_o->setData(*window_buf172_buf172d_o, (float*)buf172, (float*)buf172d, 1-index, 0);
    window_buf172_buf172d_o->acquire(*window_buf172_buf172d_o, LOCK_9_7_2_0, LOCK_9_7_3_0, 1-index);
    orthogonalize<32>(window_buf142_buf142d_i[0],window_buf150_buf150d_i[0],window_buf164_buf164d_o[0],window_buf172_buf172d_o[0]);
    window_buf142_buf142d_i->release(*window_buf142_buf142d_i, LOCK_8_6_0_3936, LOCK_8_6_1_2080, 1-index);
    window_buf150_buf150d_i->release(*window_buf150_buf150d_i, LOCK_9_6_2_0, LOCK_9_6_3_0, 1-index);
    window_buf164_buf164d_o->release(*window_buf164_buf164d_o, LOCK_9_7_0_0, LOCK_9_7_1_0, 1-index);
    window_buf172_buf172d_o->release(*window_buf172_buf172d_o, LOCK_9_7_2_0, LOCK_9_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_6_bounds > 0)
      --proc_9_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}