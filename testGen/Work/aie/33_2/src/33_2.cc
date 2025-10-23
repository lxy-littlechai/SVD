// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_2/src/33_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_2_0_8032 16
#define LOCK_32_2_1_0 17
#define LOCK_33_2_2_0 50
#define LOCK_33_2_3_0 51
#define LOCK_33_3_0_3936 32
#define LOCK_33_3_1_2080 33
#define LOCK_33_3_2_0 34
#define LOCK_33_3_3_0 35

// Declare shared memory buffers
v4float buf352[9];
v4float buf352d[9];
v4float buf360[9];
v4float buf360d[9];
v4float buf374[9];
v4float buf374d[9];
v4float buf382[9];
v4float buf382d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf352_buf352d_i[1] = {{(float*)buf352, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf360_buf360d_i[1] = {{(float*)buf360, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf374_buf374d_o[1] = {{(float*)buf374, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf382_buf382d_o[1] = {{(float*)buf382, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_2_bounds = sync_buffer[1];

  while (proc_33_2_bounds)
  {

    // Kernel call : i184:orthogonalize<32>
    window_buf352_buf352d_i->setData(*window_buf352_buf352d_i, (float*)buf352, (float*)buf352d, 1-index, 0);
    window_buf352_buf352d_i->acquire(*window_buf352_buf352d_i, LOCK_32_2_0_8032, LOCK_32_2_1_0, 1-index);
    window_buf360_buf360d_i->setData(*window_buf360_buf360d_i, (float*)buf360, (float*)buf360d, 1-index, 0);
    window_buf360_buf360d_i->acquire(*window_buf360_buf360d_i, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    window_buf374_buf374d_o->setData(*window_buf374_buf374d_o, (float*)buf374, (float*)buf374d, 1-index, 0);
    window_buf374_buf374d_o->acquire(*window_buf374_buf374d_o, LOCK_33_3_0_3936, LOCK_33_3_1_2080, 1-index);
    window_buf382_buf382d_o->setData(*window_buf382_buf382d_o, (float*)buf382, (float*)buf382d, 1-index, 0);
    window_buf382_buf382d_o->acquire(*window_buf382_buf382d_o, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    orthogonalize<32>(window_buf352_buf352d_i[0],window_buf360_buf360d_i[0],window_buf374_buf374d_o[0],window_buf382_buf382d_o[0]);
    window_buf352_buf352d_i->release(*window_buf352_buf352d_i, LOCK_32_2_0_8032, LOCK_32_2_1_0, 1-index);
    window_buf360_buf360d_i->release(*window_buf360_buf360d_i, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    window_buf374_buf374d_o->release(*window_buf374_buf374d_o, LOCK_33_3_0_3936, LOCK_33_3_1_2080, 1-index);
    window_buf382_buf382d_o->release(*window_buf382_buf382d_o, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_2_bounds > 0)
      --proc_33_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}