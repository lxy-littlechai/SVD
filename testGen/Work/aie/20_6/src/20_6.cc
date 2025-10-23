// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_6/src/20_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_6_0_3936 16
#define LOCK_19_6_1_2080 17
#define LOCK_20_6_2_0 50
#define LOCK_20_6_3_0 51
#define LOCK_20_5_2_8032 2
#define LOCK_20_5_3_0 3
#define LOCK_20_5_0_0 0
#define LOCK_20_5_1_0 1

// Declare shared memory buffers
v4float buf182[9];
v4float buf182d[9];
v4float buf194[9];
v4float buf194d[9];
v4float buf204[9];
v4float buf204d[9];
v4float buf216[9];
v4float buf216d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_i[1] = {{(float*)buf182, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf194_buf194d_i[1] = {{(float*)buf194, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_o[1] = {{(float*)buf204, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf216_buf216d_o[1] = {{(float*)buf216, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_6_bounds = sync_buffer[1];

  while (proc_20_6_bounds)
  {

    // Kernel call : i95:orthogonalize<32>
    window_buf182_buf182d_i->setData(*window_buf182_buf182d_i, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_i->acquire(*window_buf182_buf182d_i, LOCK_19_6_0_3936, LOCK_19_6_1_2080, 1-index);
    window_buf194_buf194d_i->setData(*window_buf194_buf194d_i, (float*)buf194, (float*)buf194d, 1-index, 0);
    window_buf194_buf194d_i->acquire(*window_buf194_buf194d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf204_buf204d_o->setData(*window_buf204_buf204d_o, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_o->acquire(*window_buf204_buf204d_o, LOCK_20_5_2_8032, LOCK_20_5_3_0, 1-index);
    window_buf216_buf216d_o->setData(*window_buf216_buf216d_o, (float*)buf216, (float*)buf216d, 1-index, 0);
    window_buf216_buf216d_o->acquire(*window_buf216_buf216d_o, LOCK_20_5_0_0, LOCK_20_5_1_0, 1-index);
    orthogonalize<32>(window_buf182_buf182d_i[0],window_buf194_buf194d_i[0],window_buf204_buf204d_o[0],window_buf216_buf216d_o[0]);
    window_buf182_buf182d_i->release(*window_buf182_buf182d_i, LOCK_19_6_0_3936, LOCK_19_6_1_2080, 1-index);
    window_buf194_buf194d_i->release(*window_buf194_buf194d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf204_buf204d_o->release(*window_buf204_buf204d_o, LOCK_20_5_2_8032, LOCK_20_5_3_0, 1-index);
    window_buf216_buf216d_o->release(*window_buf216_buf216d_o, LOCK_20_5_0_0, LOCK_20_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_6_bounds > 0)
      --proc_20_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}