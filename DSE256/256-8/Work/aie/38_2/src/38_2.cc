// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/38_2/src/38_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_37_2_0_0 16
#define LOCK_37_2_1_0 17
#define LOCK_38_2_2_0 50
#define LOCK_38_2_3_0 51
#define LOCK_38_3_0_0 32
#define LOCK_38_3_1_0 33
#define LOCK_38_3_2_0 34
#define LOCK_38_3_3_0 35

// Declare shared memory buffers
v4float buf507[65];
v4float buf507d[65];
v4float buf508[65];
v4float buf508d[65];
v4float buf523[65];
v4float buf523d[65];
v4float buf524[65];
v4float buf524d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf507_buf507d_i[1] = {{(float*)buf507, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf508_buf508d_i[1] = {{(float*)buf508, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf523_buf523d_o[1] = {{(float*)buf523, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf524_buf524d_o[1] = {{(float*)buf524, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_38_2_bounds = sync_buffer[1];

  while (proc_38_2_bounds)
  {

    // Kernel call : i253:orthogonalize<256>
    window_buf507_buf507d_i->setData(*window_buf507_buf507d_i, (float*)buf507, (float*)buf507d, 1-index, 0);
    window_buf507_buf507d_i->acquire(*window_buf507_buf507d_i, LOCK_37_2_0_0, LOCK_37_2_1_0, 1-index);
    window_buf508_buf508d_i->setData(*window_buf508_buf508d_i, (float*)buf508, (float*)buf508d, 1-index, 0);
    window_buf508_buf508d_i->acquire(*window_buf508_buf508d_i, LOCK_38_2_2_0, LOCK_38_2_3_0, 1-index);
    window_buf523_buf523d_o->setData(*window_buf523_buf523d_o, (float*)buf523, (float*)buf523d, 1-index, 0);
    window_buf523_buf523d_o->acquire(*window_buf523_buf523d_o, LOCK_38_3_0_0, LOCK_38_3_1_0, 1-index);
    window_buf524_buf524d_o->setData(*window_buf524_buf524d_o, (float*)buf524, (float*)buf524d, 1-index, 0);
    window_buf524_buf524d_o->acquire(*window_buf524_buf524d_o, LOCK_38_3_2_0, LOCK_38_3_3_0, 1-index);
    orthogonalize<256>(window_buf507_buf507d_i[0],window_buf508_buf508d_i[0],window_buf523_buf523d_o[0],window_buf524_buf524d_o[0]);
    window_buf507_buf507d_i->release(*window_buf507_buf507d_i, LOCK_37_2_0_0, LOCK_37_2_1_0, 1-index);
    window_buf508_buf508d_i->release(*window_buf508_buf508d_i, LOCK_38_2_2_0, LOCK_38_2_3_0, 1-index);
    window_buf523_buf523d_o->release(*window_buf523_buf523d_o, LOCK_38_3_0_0, LOCK_38_3_1_0, 1-index);
    window_buf524_buf524d_o->release(*window_buf524_buf524d_o, LOCK_38_3_2_0, LOCK_38_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_38_2_bounds > 0)
      --proc_38_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}