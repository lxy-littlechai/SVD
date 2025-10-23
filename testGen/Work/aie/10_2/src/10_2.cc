// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/10_2/src/10_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_2_0_0 16
#define LOCK_9_2_1_0 17
#define LOCK_10_2_2_0 50
#define LOCK_10_2_3_0 51
#define LOCK_10_3_0_0 32
#define LOCK_10_3_1_0 33
#define LOCK_10_3_2_0 34
#define LOCK_10_3_3_0 35

// Declare shared memory buffers
v4float buf60[9];
v4float buf60d[9];
v4float buf64[9];
v4float buf64d[9];
v4float buf82[9];
v4float buf82d[9];
v4float buf86[9];
v4float buf86d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf60_buf60d_i[1] = {{(float*)buf60, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf64_buf64d_i[1] = {{(float*)buf64, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_o[1] = {{(float*)buf82, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf86_buf86d_o[1] = {{(float*)buf86, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_2_bounds = sync_buffer[1];

  while (proc_10_2_bounds)
  {

    // Kernel call : i31:orthogonalize<32>
    window_buf60_buf60d_i->setData(*window_buf60_buf60d_i, (float*)buf60, (float*)buf60d, 1-index, 0);
    window_buf60_buf60d_i->acquire(*window_buf60_buf60d_i, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf64_buf64d_i->setData(*window_buf64_buf64d_i, (float*)buf64, (float*)buf64d, 1-index, 0);
    window_buf64_buf64d_i->acquire(*window_buf64_buf64d_i, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    window_buf82_buf82d_o->setData(*window_buf82_buf82d_o, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_o->acquire(*window_buf82_buf82d_o, LOCK_10_3_0_0, LOCK_10_3_1_0, 1-index);
    window_buf86_buf86d_o->setData(*window_buf86_buf86d_o, (float*)buf86, (float*)buf86d, 1-index, 0);
    window_buf86_buf86d_o->acquire(*window_buf86_buf86d_o, LOCK_10_3_2_0, LOCK_10_3_3_0, 1-index);
    orthogonalize<32>(window_buf60_buf60d_i[0],window_buf64_buf64d_i[0],window_buf82_buf82d_o[0],window_buf86_buf86d_o[0]);
    window_buf60_buf60d_i->release(*window_buf60_buf60d_i, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf64_buf64d_i->release(*window_buf64_buf64d_i, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    window_buf82_buf82d_o->release(*window_buf82_buf82d_o, LOCK_10_3_0_0, LOCK_10_3_1_0, 1-index);
    window_buf86_buf86d_o->release(*window_buf86_buf86d_o, LOCK_10_3_2_0, LOCK_10_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_2_bounds > 0)
      --proc_10_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}