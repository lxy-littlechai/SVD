// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_1/src/30_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_1_0_8032 16
#define LOCK_30_1_1_0 17
#define LOCK_31_1_2_0 50
#define LOCK_31_1_3_0 51
#define LOCK_30_2_0_8032 32
#define LOCK_30_2_1_0 33
#define LOCK_30_2_2_0 34
#define LOCK_30_2_3_0 35

// Declare shared memory buffers
v4float buf333[9];
v4float buf333d[9];
v4float buf344[9];
v4float buf344d[9];
v4float buf355[9];
v4float buf355d[9];
v4float buf366[9];
v4float buf366d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf333_buf333d_i[1] = {{(float*)buf333, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf344_buf344d_i[1] = {{(float*)buf344, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf355_buf355d_o[1] = {{(float*)buf355, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf366_buf366d_o[1] = {{(float*)buf366, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_1_bounds = sync_buffer[1];

  while (proc_30_1_bounds)
  {

    // Kernel call : i170:orthogonalize<32>
    window_buf333_buf333d_i->setData(*window_buf333_buf333d_i, (float*)buf333, (float*)buf333d, 1-index, 0);
    window_buf333_buf333d_i->acquire(*window_buf333_buf333d_i, LOCK_30_1_0_8032, LOCK_30_1_1_0, 1-index);
    window_buf344_buf344d_i->setData(*window_buf344_buf344d_i, (float*)buf344, (float*)buf344d, 1-index, 0);
    window_buf344_buf344d_i->acquire(*window_buf344_buf344d_i, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    window_buf355_buf355d_o->setData(*window_buf355_buf355d_o, (float*)buf355, (float*)buf355d, 1-index, 0);
    window_buf355_buf355d_o->acquire(*window_buf355_buf355d_o, LOCK_30_2_0_8032, LOCK_30_2_1_0, 1-index);
    window_buf366_buf366d_o->setData(*window_buf366_buf366d_o, (float*)buf366, (float*)buf366d, 1-index, 0);
    window_buf366_buf366d_o->acquire(*window_buf366_buf366d_o, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    orthogonalize<32>(window_buf333_buf333d_i[0],window_buf344_buf344d_i[0],window_buf355_buf355d_o[0],window_buf366_buf366d_o[0]);
    window_buf333_buf333d_i->release(*window_buf333_buf333d_i, LOCK_30_1_0_8032, LOCK_30_1_1_0, 1-index);
    window_buf344_buf344d_i->release(*window_buf344_buf344d_i, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    window_buf355_buf355d_o->release(*window_buf355_buf355d_o, LOCK_30_2_0_8032, LOCK_30_2_1_0, 1-index);
    window_buf366_buf366d_o->release(*window_buf366_buf366d_o, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_1_bounds > 0)
      --proc_30_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}