// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/20_2/src/20_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_2_0_0 16
#define LOCK_19_2_1_0 17
#define LOCK_19_2_2_0 18
#define LOCK_19_2_3_0 19
#define LOCK_20_3_0_7136 32
#define LOCK_20_3_1_0 33
#define LOCK_20_3_2_0 34
#define LOCK_20_3_3_0 35

// Declare shared memory buffers
v4float buf274[65];
v4float buf274d[65];
v4float buf275[65];
v4float buf275d[65];
v4float buf290[65];
v4float buf290d[65];
v4float buf291[65];
v4float buf291d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf274_buf274d_i[1] = {{(float*)buf274, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf275_buf275d_i[1] = {{(float*)buf275, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf290_buf290d_o[1] = {{(float*)buf290, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf291_buf291d_o[1] = {{(float*)buf291, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_2_bounds = sync_buffer[1];

  while (proc_20_2_bounds)
  {

    // Kernel call : i141:orthogonalize<256>
    window_buf274_buf274d_i->setData(*window_buf274_buf274d_i, (float*)buf274, (float*)buf274d, 1-index, 0);
    window_buf274_buf274d_i->acquire(*window_buf274_buf274d_i, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf275_buf275d_i->setData(*window_buf275_buf275d_i, (float*)buf275, (float*)buf275d, 1-index, 0);
    window_buf275_buf275d_i->acquire(*window_buf275_buf275d_i, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    window_buf290_buf290d_o->setData(*window_buf290_buf290d_o, (float*)buf290, (float*)buf290d, 1-index, 0);
    window_buf290_buf290d_o->acquire(*window_buf290_buf290d_o, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf291_buf291d_o->setData(*window_buf291_buf291d_o, (float*)buf291, (float*)buf291d, 1-index, 0);
    window_buf291_buf291d_o->acquire(*window_buf291_buf291d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    orthogonalize<256>(window_buf274_buf274d_i[0],window_buf275_buf275d_i[0],window_buf290_buf290d_o[0],window_buf291_buf291d_o[0]);
    window_buf274_buf274d_i->release(*window_buf274_buf274d_i, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf275_buf275d_i->release(*window_buf275_buf275d_i, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    window_buf290_buf290d_o->release(*window_buf290_buf290d_o, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf291_buf291d_o->release(*window_buf291_buf291d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_2_bounds > 0)
      --proc_20_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}