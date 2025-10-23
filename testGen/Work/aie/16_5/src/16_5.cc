// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_5/src/16_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_5_2_8032 18
#define LOCK_16_5_3_0 19
#define LOCK_17_5_0_0 48
#define LOCK_17_5_1_0 49
#define LOCK_16_4_0_0 0
#define LOCK_16_4_1_0 1
#define LOCK_16_4_2_0 2
#define LOCK_16_4_3_0 3

// Declare shared memory buffers
v4float buf199[9];
v4float buf199d[9];
v4float buf215[9];
v4float buf215d[9];
v4float buf221[9];
v4float buf221d[9];
v4float buf237[9];
v4float buf237d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf199_buf199d_i[1] = {{(float*)buf199, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_i[1] = {{(float*)buf215, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221_buf221d_o[1] = {{(float*)buf221, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf237_buf237d_o[1] = {{(float*)buf237, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_5_bounds = sync_buffer[1];

  while (proc_16_5_bounds)
  {

    // Kernel call : i102:orthogonalize<32>
    window_buf199_buf199d_i->setData(*window_buf199_buf199d_i, (float*)buf199, (float*)buf199d, 1-index, 0);
    window_buf199_buf199d_i->acquire(*window_buf199_buf199d_i, LOCK_16_5_2_8032, LOCK_16_5_3_0, 1-index);
    window_buf215_buf215d_i->setData(*window_buf215_buf215d_i, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_i->acquire(*window_buf215_buf215d_i, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf221_buf221d_o->setData(*window_buf221_buf221d_o, (float*)buf221, (float*)buf221d, 1-index, 0);
    window_buf221_buf221d_o->acquire(*window_buf221_buf221d_o, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf237_buf237d_o->setData(*window_buf237_buf237d_o, (float*)buf237, (float*)buf237d, 1-index, 0);
    window_buf237_buf237d_o->acquire(*window_buf237_buf237d_o, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    orthogonalize<32>(window_buf199_buf199d_i[0],window_buf215_buf215d_i[0],window_buf221_buf221d_o[0],window_buf237_buf237d_o[0]);
    window_buf199_buf199d_i->release(*window_buf199_buf199d_i, LOCK_16_5_2_8032, LOCK_16_5_3_0, 1-index);
    window_buf215_buf215d_i->release(*window_buf215_buf215d_i, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf221_buf221d_o->release(*window_buf221_buf221d_o, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf237_buf237d_o->release(*window_buf237_buf237d_o, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_5_bounds > 0)
      --proc_16_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}