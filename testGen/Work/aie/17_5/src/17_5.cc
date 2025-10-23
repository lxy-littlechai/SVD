// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_5/src/17_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_5_2_8032 18
#define LOCK_17_5_3_0 19
#define LOCK_18_5_0_0 48
#define LOCK_18_5_1_0 49
#define LOCK_17_4_0_3936 0
#define LOCK_17_4_1_2080 1
#define LOCK_17_4_2_0 2
#define LOCK_17_4_3_0 3

// Declare shared memory buffers
v4float buf198[9];
v4float buf198d[9];
v4float buf217[9];
v4float buf217d[9];
v4float buf220[9];
v4float buf220d[9];
v4float buf239[9];
v4float buf239d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf198_buf198d_i[1] = {{(float*)buf198, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_i[1] = {{(float*)buf217, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_o[1] = {{(float*)buf220, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239_buf239d_o[1] = {{(float*)buf239, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_5_bounds = sync_buffer[1];

  while (proc_17_5_bounds)
  {

    // Kernel call : i103:orthogonalize<32>
    window_buf198_buf198d_i->setData(*window_buf198_buf198d_i, (float*)buf198, (float*)buf198d, 1-index, 0);
    window_buf198_buf198d_i->acquire(*window_buf198_buf198d_i, LOCK_17_5_2_8032, LOCK_17_5_3_0, 1-index);
    window_buf217_buf217d_i->setData(*window_buf217_buf217d_i, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_i->acquire(*window_buf217_buf217d_i, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    window_buf220_buf220d_o->setData(*window_buf220_buf220d_o, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_o->acquire(*window_buf220_buf220d_o, LOCK_17_4_0_3936, LOCK_17_4_1_2080, 1-index);
    window_buf239_buf239d_o->setData(*window_buf239_buf239d_o, (float*)buf239, (float*)buf239d, 1-index, 0);
    window_buf239_buf239d_o->acquire(*window_buf239_buf239d_o, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    orthogonalize<32>(window_buf198_buf198d_i[0],window_buf217_buf217d_i[0],window_buf220_buf220d_o[0],window_buf239_buf239d_o[0]);
    window_buf198_buf198d_i->release(*window_buf198_buf198d_i, LOCK_17_5_2_8032, LOCK_17_5_3_0, 1-index);
    window_buf217_buf217d_i->release(*window_buf217_buf217d_i, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    window_buf220_buf220d_o->release(*window_buf220_buf220d_o, LOCK_17_4_0_3936, LOCK_17_4_1_2080, 1-index);
    window_buf239_buf239d_o->release(*window_buf239_buf239d_o, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_5_bounds > 0)
      --proc_17_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}