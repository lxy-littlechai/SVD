// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/10_4/src/10_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_4_0_8032 16
#define LOCK_9_4_1_0 17
#define LOCK_10_4_2_0 50
#define LOCK_10_4_3_0 51
#define LOCK_10_5_0_8032 32
#define LOCK_10_5_1_0 33
#define LOCK_10_5_2_0 34
#define LOCK_10_5_3_0 35

// Declare shared memory buffers
v4float buf102[9];
v4float buf102d[9];
v4float buf106[9];
v4float buf106d[9];
v4float buf124[9];
v4float buf124d[9];
v4float buf128[9];
v4float buf128d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf102_buf102d_i[1] = {{(float*)buf102, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_i[1] = {{(float*)buf106, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf124_buf124d_o[1] = {{(float*)buf124, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_o[1] = {{(float*)buf128, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_4_bounds = sync_buffer[1];

  while (proc_10_4_bounds)
  {

    // Kernel call : i53:orthogonalize<32>
    window_buf102_buf102d_i->setData(*window_buf102_buf102d_i, (float*)buf102, (float*)buf102d, 1-index, 0);
    window_buf102_buf102d_i->acquire(*window_buf102_buf102d_i, LOCK_9_4_0_8032, LOCK_9_4_1_0, 1-index);
    window_buf106_buf106d_i->setData(*window_buf106_buf106d_i, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_i->acquire(*window_buf106_buf106d_i, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    window_buf124_buf124d_o->setData(*window_buf124_buf124d_o, (float*)buf124, (float*)buf124d, 1-index, 0);
    window_buf124_buf124d_o->acquire(*window_buf124_buf124d_o, LOCK_10_5_0_8032, LOCK_10_5_1_0, 1-index);
    window_buf128_buf128d_o->setData(*window_buf128_buf128d_o, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_o->acquire(*window_buf128_buf128d_o, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    orthogonalize<32>(window_buf102_buf102d_i[0],window_buf106_buf106d_i[0],window_buf124_buf124d_o[0],window_buf128_buf128d_o[0]);
    window_buf102_buf102d_i->release(*window_buf102_buf102d_i, LOCK_9_4_0_8032, LOCK_9_4_1_0, 1-index);
    window_buf106_buf106d_i->release(*window_buf106_buf106d_i, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    window_buf124_buf124d_o->release(*window_buf124_buf124d_o, LOCK_10_5_0_8032, LOCK_10_5_1_0, 1-index);
    window_buf128_buf128d_o->release(*window_buf128_buf128d_o, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_4_bounds > 0)
      --proc_10_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}