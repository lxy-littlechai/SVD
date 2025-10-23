// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_6/src/18_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_6_0_0 16
#define LOCK_17_6_1_0 17
#define LOCK_18_6_2_0 50
#define LOCK_18_6_3_0 51
#define LOCK_18_5_2_8032 2
#define LOCK_18_5_3_0 3
#define LOCK_18_5_0_0 0
#define LOCK_18_5_1_0 1

// Declare shared memory buffers
v4float buf178[9];
v4float buf178d[9];
v4float buf195[9];
v4float buf195d[9];
v4float buf200[9];
v4float buf200d[9];
v4float buf217[9];
v4float buf217d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_i[1] = {{(float*)buf178, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf195_buf195d_i[1] = {{(float*)buf195, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_o[1] = {{(float*)buf200, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_o[1] = {{(float*)buf217, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_6_bounds = sync_buffer[1];

  while (proc_18_6_bounds)
  {

    // Kernel call : i93:orthogonalize<32>
    window_buf178_buf178d_i->setData(*window_buf178_buf178d_i, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_i->acquire(*window_buf178_buf178d_i, LOCK_17_6_0_0, LOCK_17_6_1_0, 1-index);
    window_buf195_buf195d_i->setData(*window_buf195_buf195d_i, (float*)buf195, (float*)buf195d, 1-index, 0);
    window_buf195_buf195d_i->acquire(*window_buf195_buf195d_i, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    window_buf200_buf200d_o->setData(*window_buf200_buf200d_o, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_o->acquire(*window_buf200_buf200d_o, LOCK_18_5_2_8032, LOCK_18_5_3_0, 1-index);
    window_buf217_buf217d_o->setData(*window_buf217_buf217d_o, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_o->acquire(*window_buf217_buf217d_o, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    orthogonalize<32>(window_buf178_buf178d_i[0],window_buf195_buf195d_i[0],window_buf200_buf200d_o[0],window_buf217_buf217d_o[0]);
    window_buf178_buf178d_i->release(*window_buf178_buf178d_i, LOCK_17_6_0_0, LOCK_17_6_1_0, 1-index);
    window_buf195_buf195d_i->release(*window_buf195_buf195d_i, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    window_buf200_buf200d_o->release(*window_buf200_buf200d_o, LOCK_18_5_2_8032, LOCK_18_5_3_0, 1-index);
    window_buf217_buf217d_o->release(*window_buf217_buf217d_o, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_6_bounds > 0)
      --proc_18_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}