// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_1/src/16_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_1_0_3936 16
#define LOCK_16_1_1_2080 17
#define LOCK_17_1_2_0 50
#define LOCK_17_1_3_0 51
#define LOCK_16_0_0_8032 0
#define LOCK_16_0_1_0 1
#define LOCK_16_0_2_0 2
#define LOCK_16_0_3_0 3

// Declare shared memory buffers
v4float buf291[9];
v4float buf291d[9];
v4float buf306[9];
v4float buf306d[9];
v4float buf313[9];
v4float buf313d[9];
v4float buf328[9];
v4float buf328d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf291_buf291d_i[1] = {{(float*)buf291, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf306_buf306d_i[1] = {{(float*)buf306, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf313_buf313d_o[1] = {{(float*)buf313, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf328_buf328d_o[1] = {{(float*)buf328, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_1_bounds = sync_buffer[1];

  while (proc_16_1_bounds)
  {

    // Kernel call : i146:orthogonalize<32>
    window_buf291_buf291d_i->setData(*window_buf291_buf291d_i, (float*)buf291, (float*)buf291d, 1-index, 0);
    window_buf291_buf291d_i->acquire(*window_buf291_buf291d_i, LOCK_16_1_0_3936, LOCK_16_1_1_2080, 1-index);
    window_buf306_buf306d_i->setData(*window_buf306_buf306d_i, (float*)buf306, (float*)buf306d, 1-index, 0);
    window_buf306_buf306d_i->acquire(*window_buf306_buf306d_i, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    window_buf313_buf313d_o->setData(*window_buf313_buf313d_o, (float*)buf313, (float*)buf313d, 1-index, 0);
    window_buf313_buf313d_o->acquire(*window_buf313_buf313d_o, LOCK_16_0_0_8032, LOCK_16_0_1_0, 1-index);
    window_buf328_buf328d_o->setData(*window_buf328_buf328d_o, (float*)buf328, (float*)buf328d, 1-index, 0);
    window_buf328_buf328d_o->acquire(*window_buf328_buf328d_o, LOCK_16_0_2_0, LOCK_16_0_3_0, 1-index);
    orthogonalize<32>(window_buf291_buf291d_i[0],window_buf306_buf306d_i[0],window_buf313_buf313d_o[0],window_buf328_buf328d_o[0]);
    window_buf291_buf291d_i->release(*window_buf291_buf291d_i, LOCK_16_1_0_3936, LOCK_16_1_1_2080, 1-index);
    window_buf306_buf306d_i->release(*window_buf306_buf306d_i, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    window_buf313_buf313d_o->release(*window_buf313_buf313d_o, LOCK_16_0_0_8032, LOCK_16_0_1_0, 1-index);
    window_buf328_buf328d_o->release(*window_buf328_buf328d_o, LOCK_16_0_2_0, LOCK_16_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_1_bounds > 0)
      --proc_16_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}