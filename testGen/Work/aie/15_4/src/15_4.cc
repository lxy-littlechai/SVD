// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_4/src/15_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_4_0_8032 16
#define LOCK_14_4_1_0 17
#define LOCK_15_4_2_0 50
#define LOCK_15_4_3_0 51
#define LOCK_15_3_0_8032 0
#define LOCK_15_3_1_0 1
#define LOCK_15_3_2_0 2
#define LOCK_15_3_3_0 3

// Declare shared memory buffers
v4float buf225[9];
v4float buf225d[9];
v4float buf235[9];
v4float buf235d[9];
v4float buf247[9];
v4float buf247d[9];
v4float buf257[9];
v4float buf257d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf225_buf225d_i[1] = {{(float*)buf225, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf235_buf235d_i[1] = {{(float*)buf235, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_o[1] = {{(float*)buf247, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf257_buf257d_o[1] = {{(float*)buf257, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_4_bounds = sync_buffer[1];

  while (proc_15_4_bounds)
  {

    // Kernel call : i112:orthogonalize<32>
    window_buf225_buf225d_i->setData(*window_buf225_buf225d_i, (float*)buf225, (float*)buf225d, 1-index, 0);
    window_buf225_buf225d_i->acquire(*window_buf225_buf225d_i, LOCK_14_4_0_8032, LOCK_14_4_1_0, 1-index);
    window_buf235_buf235d_i->setData(*window_buf235_buf235d_i, (float*)buf235, (float*)buf235d, 1-index, 0);
    window_buf235_buf235d_i->acquire(*window_buf235_buf235d_i, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    window_buf247_buf247d_o->setData(*window_buf247_buf247d_o, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_o->acquire(*window_buf247_buf247d_o, LOCK_15_3_0_8032, LOCK_15_3_1_0, 1-index);
    window_buf257_buf257d_o->setData(*window_buf257_buf257d_o, (float*)buf257, (float*)buf257d, 1-index, 0);
    window_buf257_buf257d_o->acquire(*window_buf257_buf257d_o, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    orthogonalize<32>(window_buf225_buf225d_i[0],window_buf235_buf235d_i[0],window_buf247_buf247d_o[0],window_buf257_buf257d_o[0]);
    window_buf225_buf225d_i->release(*window_buf225_buf225d_i, LOCK_14_4_0_8032, LOCK_14_4_1_0, 1-index);
    window_buf235_buf235d_i->release(*window_buf235_buf235d_i, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    window_buf247_buf247d_o->release(*window_buf247_buf247d_o, LOCK_15_3_0_8032, LOCK_15_3_1_0, 1-index);
    window_buf257_buf257d_o->release(*window_buf257_buf257d_o, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_4_bounds > 0)
      --proc_15_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}