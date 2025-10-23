// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_2/src/29_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_2_0_0 16
#define LOCK_28_2_1_0 17
#define LOCK_29_2_2_0 50
#define LOCK_29_2_3_0 51
#define LOCK_29_3_0_0 32
#define LOCK_29_3_1_0 33
#define LOCK_29_3_2_0 34
#define LOCK_29_3_3_0 35

// Declare shared memory buffers
v4float buf359[9];
v4float buf359d[9];
v4float buf368[9];
v4float buf368d[9];
v4float buf381[9];
v4float buf381d[9];
v4float buf390[9];
v4float buf390d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf359_buf359d_i[1] = {{(float*)buf359, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf368_buf368d_i[1] = {{(float*)buf368, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf381_buf381d_o[1] = {{(float*)buf381, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf390_buf390d_o[1] = {{(float*)buf390, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_2_bounds = sync_buffer[1];

  while (proc_29_2_bounds)
  {

    // Kernel call : i180:orthogonalize<32>
    window_buf359_buf359d_i->setData(*window_buf359_buf359d_i, (float*)buf359, (float*)buf359d, 1-index, 0);
    window_buf359_buf359d_i->acquire(*window_buf359_buf359d_i, LOCK_28_2_0_0, LOCK_28_2_1_0, 1-index);
    window_buf368_buf368d_i->setData(*window_buf368_buf368d_i, (float*)buf368, (float*)buf368d, 1-index, 0);
    window_buf368_buf368d_i->acquire(*window_buf368_buf368d_i, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    window_buf381_buf381d_o->setData(*window_buf381_buf381d_o, (float*)buf381, (float*)buf381d, 1-index, 0);
    window_buf381_buf381d_o->acquire(*window_buf381_buf381d_o, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf390_buf390d_o->setData(*window_buf390_buf390d_o, (float*)buf390, (float*)buf390d, 1-index, 0);
    window_buf390_buf390d_o->acquire(*window_buf390_buf390d_o, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    orthogonalize<32>(window_buf359_buf359d_i[0],window_buf368_buf368d_i[0],window_buf381_buf381d_o[0],window_buf390_buf390d_o[0]);
    window_buf359_buf359d_i->release(*window_buf359_buf359d_i, LOCK_28_2_0_0, LOCK_28_2_1_0, 1-index);
    window_buf368_buf368d_i->release(*window_buf368_buf368d_i, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    window_buf381_buf381d_o->release(*window_buf381_buf381d_o, LOCK_29_3_0_0, LOCK_29_3_1_0, 1-index);
    window_buf390_buf390d_o->release(*window_buf390_buf390d_o, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_2_bounds > 0)
      --proc_29_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}