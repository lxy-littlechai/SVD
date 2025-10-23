// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_3/src/1_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_3_0_8032 16
#define LOCK_1_3_1_0 17
#define LOCK_2_3_2_0 50
#define LOCK_2_3_3_0 51
#define LOCK_1_4_0_0 32
#define LOCK_1_4_1_0 33
#define LOCK_1_4_2_0 34
#define LOCK_1_4_3_0 35

// Declare shared memory buffers
v4float buf67[9];
v4float buf67d[9];
v4float buf71[9];
v4float buf71d[9];
v4float buf89[9];
v4float buf89d[9];
v4float buf93[9];
v4float buf93d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67_buf67d_i[1] = {{(float*)buf67, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf71_buf71d_i[1] = {{(float*)buf71, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf89_buf89d_o[1] = {{(float*)buf89, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf93_buf93d_o[1] = {{(float*)buf93, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_3_bounds = sync_buffer[1];

  while (proc_1_3_bounds)
  {

    // Kernel call : i33:orthogonalize<32>
    window_buf67_buf67d_i->setData(*window_buf67_buf67d_i, (float*)buf67, (float*)buf67d, 1-index, 0);
    window_buf67_buf67d_i->acquire(*window_buf67_buf67d_i, LOCK_1_3_0_8032, LOCK_1_3_1_0, 1-index);
    window_buf71_buf71d_i->setData(*window_buf71_buf71d_i, (float*)buf71, (float*)buf71d, 1-index, 0);
    window_buf71_buf71d_i->acquire(*window_buf71_buf71d_i, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    window_buf89_buf89d_o->setData(*window_buf89_buf89d_o, (float*)buf89, (float*)buf89d, 1-index, 0);
    window_buf89_buf89d_o->acquire(*window_buf89_buf89d_o, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf93_buf93d_o->setData(*window_buf93_buf93d_o, (float*)buf93, (float*)buf93d, 1-index, 0);
    window_buf93_buf93d_o->acquire(*window_buf93_buf93d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    orthogonalize<32>(window_buf67_buf67d_i[0],window_buf71_buf71d_i[0],window_buf89_buf89d_o[0],window_buf93_buf93d_o[0]);
    window_buf67_buf67d_i->release(*window_buf67_buf67d_i, LOCK_1_3_0_8032, LOCK_1_3_1_0, 1-index);
    window_buf71_buf71d_i->release(*window_buf71_buf71d_i, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    window_buf89_buf89d_o->release(*window_buf89_buf89d_o, LOCK_1_4_0_0, LOCK_1_4_1_0, 1-index);
    window_buf93_buf93d_o->release(*window_buf93_buf93d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_3_bounds > 0)
      --proc_1_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}