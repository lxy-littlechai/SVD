// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_2/src/32_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_2_0_0 16
#define LOCK_31_2_1_0 17
#define LOCK_32_2_2_0 50
#define LOCK_32_2_3_0 51
#define LOCK_32_3_0_0 32
#define LOCK_32_3_1_0 33
#define LOCK_32_3_2_0 34
#define LOCK_32_3_3_0 35

// Declare shared memory buffers
v4float buf353[9];
v4float buf353d[9];
v4float buf362[9];
v4float buf362d[9];
v4float buf375[9];
v4float buf375d[9];
v4float buf384[9];
v4float buf384d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf353_buf353d_i[1] = {{(float*)buf353, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf362_buf362d_i[1] = {{(float*)buf362, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf375_buf375d_o[1] = {{(float*)buf375, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf384_buf384d_o[1] = {{(float*)buf384, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_2_bounds = sync_buffer[1];

  while (proc_32_2_bounds)
  {

    // Kernel call : i183:orthogonalize<32>
    window_buf353_buf353d_i->setData(*window_buf353_buf353d_i, (float*)buf353, (float*)buf353d, 1-index, 0);
    window_buf353_buf353d_i->acquire(*window_buf353_buf353d_i, LOCK_31_2_0_0, LOCK_31_2_1_0, 1-index);
    window_buf362_buf362d_i->setData(*window_buf362_buf362d_i, (float*)buf362, (float*)buf362d, 1-index, 0);
    window_buf362_buf362d_i->acquire(*window_buf362_buf362d_i, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    window_buf375_buf375d_o->setData(*window_buf375_buf375d_o, (float*)buf375, (float*)buf375d, 1-index, 0);
    window_buf375_buf375d_o->acquire(*window_buf375_buf375d_o, LOCK_32_3_0_0, LOCK_32_3_1_0, 1-index);
    window_buf384_buf384d_o->setData(*window_buf384_buf384d_o, (float*)buf384, (float*)buf384d, 1-index, 0);
    window_buf384_buf384d_o->acquire(*window_buf384_buf384d_o, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    orthogonalize<32>(window_buf353_buf353d_i[0],window_buf362_buf362d_i[0],window_buf375_buf375d_o[0],window_buf384_buf384d_o[0]);
    window_buf353_buf353d_i->release(*window_buf353_buf353d_i, LOCK_31_2_0_0, LOCK_31_2_1_0, 1-index);
    window_buf362_buf362d_i->release(*window_buf362_buf362d_i, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    window_buf375_buf375d_o->release(*window_buf375_buf375d_o, LOCK_32_3_0_0, LOCK_32_3_1_0, 1-index);
    window_buf384_buf384d_o->release(*window_buf384_buf384d_o, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_2_bounds > 0)
      --proc_32_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}