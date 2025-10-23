// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_3/src/20_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_3_0_8032 16
#define LOCK_20_3_1_0 17
#define LOCK_21_3_2_0 50
#define LOCK_21_3_3_0 51
#define LOCK_20_2_0_8032 0
#define LOCK_20_2_1_0 1
#define LOCK_20_2_2_0 2
#define LOCK_20_2_3_0 3

// Declare shared memory buffers
v4float buf246[9];
v4float buf246d[9];
v4float buf256[9];
v4float buf256d[9];
v4float buf268[9];
v4float buf268d[9];
v4float buf278[9];
v4float buf278d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf246_buf246d_i[1] = {{(float*)buf246, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf256_buf256d_i[1] = {{(float*)buf256, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf268_buf268d_o[1] = {{(float*)buf268, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf278_buf278d_o[1] = {{(float*)buf278, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_3_bounds = sync_buffer[1];

  while (proc_20_3_bounds)
  {

    // Kernel call : i128:orthogonalize<32>
    window_buf246_buf246d_i->setData(*window_buf246_buf246d_i, (float*)buf246, (float*)buf246d, 1-index, 0);
    window_buf246_buf246d_i->acquire(*window_buf246_buf246d_i, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf256_buf256d_i->setData(*window_buf256_buf256d_i, (float*)buf256, (float*)buf256d, 1-index, 0);
    window_buf256_buf256d_i->acquire(*window_buf256_buf256d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf268_buf268d_o->setData(*window_buf268_buf268d_o, (float*)buf268, (float*)buf268d, 1-index, 0);
    window_buf268_buf268d_o->acquire(*window_buf268_buf268d_o, LOCK_20_2_0_8032, LOCK_20_2_1_0, 1-index);
    window_buf278_buf278d_o->setData(*window_buf278_buf278d_o, (float*)buf278, (float*)buf278d, 1-index, 0);
    window_buf278_buf278d_o->acquire(*window_buf278_buf278d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    orthogonalize<32>(window_buf246_buf246d_i[0],window_buf256_buf256d_i[0],window_buf268_buf268d_o[0],window_buf278_buf278d_o[0]);
    window_buf246_buf246d_i->release(*window_buf246_buf246d_i, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf256_buf256d_i->release(*window_buf256_buf256d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf268_buf268d_o->release(*window_buf268_buf268d_o, LOCK_20_2_0_8032, LOCK_20_2_1_0, 1-index);
    window_buf278_buf278d_o->release(*window_buf278_buf278d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_3_bounds > 0)
      --proc_20_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}