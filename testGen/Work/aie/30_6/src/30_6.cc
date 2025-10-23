// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_6/src/30_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_6_0_0 16
#define LOCK_29_6_1_0 17
#define LOCK_30_6_2_2080 50
#define LOCK_30_6_3_0 51
#define LOCK_30_7_0_8032 32
#define LOCK_30_7_1_0 33
#define LOCK_30_7_2_0 34
#define LOCK_30_7_3_0 35

// Declare shared memory buffers
v4float buf449[9];
v4float buf449d[9];
v4float buf450[9];
v4float buf450d[9];
v4float buf471[9];
v4float buf471d[9];
v4float buf472[9];
v4float buf472d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf449_buf449d_i[1] = {{(float*)buf449, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf450_buf450d_i[1] = {{(float*)buf450, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf471_buf471d_o[1] = {{(float*)buf471, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf472_buf472d_o[1] = {{(float*)buf472, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_6_bounds = sync_buffer[1];

  while (proc_30_6_bounds)
  {

    // Kernel call : i225:orthogonalize<32>
    window_buf449_buf449d_i->setData(*window_buf449_buf449d_i, (float*)buf449, (float*)buf449d, 1-index, 0);
    window_buf449_buf449d_i->acquire(*window_buf449_buf449d_i, LOCK_29_6_0_0, LOCK_29_6_1_0, 1-index);
    window_buf450_buf450d_i->setData(*window_buf450_buf450d_i, (float*)buf450, (float*)buf450d, 1-index, 0);
    window_buf450_buf450d_i->acquire(*window_buf450_buf450d_i, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    window_buf471_buf471d_o->setData(*window_buf471_buf471d_o, (float*)buf471, (float*)buf471d, 1-index, 0);
    window_buf471_buf471d_o->acquire(*window_buf471_buf471d_o, LOCK_30_7_0_8032, LOCK_30_7_1_0, 1-index);
    window_buf472_buf472d_o->setData(*window_buf472_buf472d_o, (float*)buf472, (float*)buf472d, 1-index, 0);
    window_buf472_buf472d_o->acquire(*window_buf472_buf472d_o, LOCK_30_7_2_0, LOCK_30_7_3_0, 1-index);
    orthogonalize<32>(window_buf449_buf449d_i[0],window_buf450_buf450d_i[0],window_buf471_buf471d_o[0],window_buf472_buf472d_o[0]);
    window_buf449_buf449d_i->release(*window_buf449_buf449d_i, LOCK_29_6_0_0, LOCK_29_6_1_0, 1-index);
    window_buf450_buf450d_i->release(*window_buf450_buf450d_i, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    window_buf471_buf471d_o->release(*window_buf471_buf471d_o, LOCK_30_7_0_8032, LOCK_30_7_1_0, 1-index);
    window_buf472_buf472d_o->release(*window_buf472_buf472d_o, LOCK_30_7_2_0, LOCK_30_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_6_bounds > 0)
      --proc_30_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}