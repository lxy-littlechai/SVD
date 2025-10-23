// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_5/src/9_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_5_0_0 16
#define LOCK_9_5_1_0 17
#define LOCK_10_5_2_0 50
#define LOCK_10_5_3_0 51
#define LOCK_9_6_0_3936 32
#define LOCK_9_6_1_2080 33
#define LOCK_9_6_2_0 34
#define LOCK_9_6_3_0 35

// Declare shared memory buffers
v4float buf122[9];
v4float buf122d[9];
v4float buf128[9];
v4float buf128d[9];
v4float buf144[9];
v4float buf144d[9];
v4float buf150[9];
v4float buf150d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf122_buf122d_i[1] = {{(float*)buf122, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_i[1] = {{(float*)buf128, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_o[1] = {{(float*)buf144, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf150_buf150d_o[1] = {{(float*)buf150, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_5_bounds = sync_buffer[1];

  while (proc_9_5_bounds)
  {

    // Kernel call : i63:orthogonalize<32>
    window_buf122_buf122d_i->setData(*window_buf122_buf122d_i, (float*)buf122, (float*)buf122d, 1-index, 0);
    window_buf122_buf122d_i->acquire(*window_buf122_buf122d_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf128_buf128d_i->setData(*window_buf128_buf128d_i, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_i->acquire(*window_buf128_buf128d_i, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    window_buf144_buf144d_o->setData(*window_buf144_buf144d_o, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_o->acquire(*window_buf144_buf144d_o, LOCK_9_6_0_3936, LOCK_9_6_1_2080, 1-index);
    window_buf150_buf150d_o->setData(*window_buf150_buf150d_o, (float*)buf150, (float*)buf150d, 1-index, 0);
    window_buf150_buf150d_o->acquire(*window_buf150_buf150d_o, LOCK_9_6_2_0, LOCK_9_6_3_0, 1-index);
    orthogonalize<32>(window_buf122_buf122d_i[0],window_buf128_buf128d_i[0],window_buf144_buf144d_o[0],window_buf150_buf150d_o[0]);
    window_buf122_buf122d_i->release(*window_buf122_buf122d_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf128_buf128d_i->release(*window_buf128_buf128d_i, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    window_buf144_buf144d_o->release(*window_buf144_buf144d_o, LOCK_9_6_0_3936, LOCK_9_6_1_2080, 1-index);
    window_buf150_buf150d_o->release(*window_buf150_buf150d_o, LOCK_9_6_2_0, LOCK_9_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_5_bounds > 0)
      --proc_9_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}