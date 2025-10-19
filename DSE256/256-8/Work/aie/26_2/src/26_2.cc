// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_2/src/26_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_2_0_0 16
#define LOCK_25_2_1_0 17
#define LOCK_25_2_2_0 18
#define LOCK_25_2_3_0 19
#define LOCK_26_3_0_7136 32
#define LOCK_26_3_1_0 33
#define LOCK_26_3_2_0 34
#define LOCK_26_3_3_0 35

// Declare shared memory buffers
v4float buf286[65];
v4float buf286d[65];
v4float buf287[65];
v4float buf287d[65];
v4float buf302[65];
v4float buf302d[65];
v4float buf303[65];
v4float buf303d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf286_buf286d_i[1] = {{(float*)buf286, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf287_buf287d_i[1] = {{(float*)buf287, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf302_buf302d_o[1] = {{(float*)buf302, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf303_buf303d_o[1] = {{(float*)buf303, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_2_bounds = sync_buffer[1];

  while (proc_26_2_bounds)
  {

    // Kernel call : i147:orthogonalize<256>
    window_buf286_buf286d_i->setData(*window_buf286_buf286d_i, (float*)buf286, (float*)buf286d, 1-index, 0);
    window_buf286_buf286d_i->acquire(*window_buf286_buf286d_i, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf287_buf287d_i->setData(*window_buf287_buf287d_i, (float*)buf287, (float*)buf287d, 1-index, 0);
    window_buf287_buf287d_i->acquire(*window_buf287_buf287d_i, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    window_buf302_buf302d_o->setData(*window_buf302_buf302d_o, (float*)buf302, (float*)buf302d, 1-index, 0);
    window_buf302_buf302d_o->acquire(*window_buf302_buf302d_o, LOCK_26_3_0_7136, LOCK_26_3_1_0, 1-index);
    window_buf303_buf303d_o->setData(*window_buf303_buf303d_o, (float*)buf303, (float*)buf303d, 1-index, 0);
    window_buf303_buf303d_o->acquire(*window_buf303_buf303d_o, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    orthogonalize<256>(window_buf286_buf286d_i[0],window_buf287_buf287d_i[0],window_buf302_buf302d_o[0],window_buf303_buf303d_o[0]);
    window_buf286_buf286d_i->release(*window_buf286_buf286d_i, LOCK_25_2_0_0, LOCK_25_2_1_0, 1-index);
    window_buf287_buf287d_i->release(*window_buf287_buf287d_i, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    window_buf302_buf302d_o->release(*window_buf302_buf302d_o, LOCK_26_3_0_7136, LOCK_26_3_1_0, 1-index);
    window_buf303_buf303d_o->release(*window_buf303_buf303d_o, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_2_bounds > 0)
      --proc_26_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}