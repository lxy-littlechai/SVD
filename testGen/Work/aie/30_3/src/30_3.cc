// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_3/src/30_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_3_0_8032 16
#define LOCK_30_3_1_0 17
#define LOCK_31_3_2_0 50
#define LOCK_31_3_3_0 51
#define LOCK_30_4_0_0 32
#define LOCK_30_4_1_0 33
#define LOCK_30_4_2_0 34
#define LOCK_30_4_3_0 35

// Declare shared memory buffers
v4float buf379[9];
v4float buf379d[9];
v4float buf386[9];
v4float buf386d[9];
v4float buf401[9];
v4float buf401d[9];
v4float buf408[9];
v4float buf408d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf379_buf379d_i[1] = {{(float*)buf379, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf386_buf386d_i[1] = {{(float*)buf386, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf401_buf401d_o[1] = {{(float*)buf401, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf408_buf408d_o[1] = {{(float*)buf408, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_3_bounds = sync_buffer[1];

  while (proc_30_3_bounds)
  {

    // Kernel call : i192:orthogonalize<32>
    window_buf379_buf379d_i->setData(*window_buf379_buf379d_i, (float*)buf379, (float*)buf379d, 1-index, 0);
    window_buf379_buf379d_i->acquire(*window_buf379_buf379d_i, LOCK_30_3_0_8032, LOCK_30_3_1_0, 1-index);
    window_buf386_buf386d_i->setData(*window_buf386_buf386d_i, (float*)buf386, (float*)buf386d, 1-index, 0);
    window_buf386_buf386d_i->acquire(*window_buf386_buf386d_i, LOCK_31_3_2_0, LOCK_31_3_3_0, 1-index);
    window_buf401_buf401d_o->setData(*window_buf401_buf401d_o, (float*)buf401, (float*)buf401d, 1-index, 0);
    window_buf401_buf401d_o->acquire(*window_buf401_buf401d_o, LOCK_30_4_0_0, LOCK_30_4_1_0, 1-index);
    window_buf408_buf408d_o->setData(*window_buf408_buf408d_o, (float*)buf408, (float*)buf408d, 1-index, 0);
    window_buf408_buf408d_o->acquire(*window_buf408_buf408d_o, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    orthogonalize<32>(window_buf379_buf379d_i[0],window_buf386_buf386d_i[0],window_buf401_buf401d_o[0],window_buf408_buf408d_o[0]);
    window_buf379_buf379d_i->release(*window_buf379_buf379d_i, LOCK_30_3_0_8032, LOCK_30_3_1_0, 1-index);
    window_buf386_buf386d_i->release(*window_buf386_buf386d_i, LOCK_31_3_2_0, LOCK_31_3_3_0, 1-index);
    window_buf401_buf401d_o->release(*window_buf401_buf401d_o, LOCK_30_4_0_0, LOCK_30_4_1_0, 1-index);
    window_buf408_buf408d_o->release(*window_buf408_buf408d_o, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_3_bounds > 0)
      --proc_30_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}