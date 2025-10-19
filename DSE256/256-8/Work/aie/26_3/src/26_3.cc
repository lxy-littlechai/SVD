// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_3/src/26_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_3_2_0 18
#define LOCK_26_3_3_0 19
#define LOCK_27_3_0_0 48
#define LOCK_27_3_1_1056 49
#define LOCK_26_4_0_7136 32
#define LOCK_26_4_1_0 33
#define LOCK_26_4_2_0 34
#define LOCK_26_4_3_0 35

// Declare shared memory buffers
v4float buf289dr[65];
v4float buf289r[65];
v4float buf303[65];
v4float buf303d[65];
v4float buf305[65];
v4float buf305d[65];
v4float buf319[65];
v4float buf319d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf303_buf303d_i[1] = {{(float*)buf303, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf289r_buf289dr_i[1] = {{(float*)buf289r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf319_buf319d_o[1] = {{(float*)buf319, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf305_buf305d_o[1] = {{(float*)buf305, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_3_bounds = sync_buffer[1];

  while (proc_26_3_bounds)
  {

    // Kernel call : i155:orthogonalize<256>
    window_buf303_buf303d_i->setData(*window_buf303_buf303d_i, (float*)buf303, (float*)buf303d, 1-index, 0);
    window_buf303_buf303d_i->acquire(*window_buf303_buf303d_i, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    window_buf289r_buf289dr_i->setData(*window_buf289r_buf289dr_i, (float*)buf289r, (float*)buf289dr, 1-index, 0);
    window_buf289r_buf289dr_i->acquire(*window_buf289r_buf289dr_i, LOCK_27_3_0_0, LOCK_27_3_1_1056, 1-index);
    window_buf319_buf319d_o->setData(*window_buf319_buf319d_o, (float*)buf319, (float*)buf319d, 1-index, 0);
    window_buf319_buf319d_o->acquire(*window_buf319_buf319d_o, LOCK_26_4_0_7136, LOCK_26_4_1_0, 1-index);
    window_buf305_buf305d_o->setData(*window_buf305_buf305d_o, (float*)buf305, (float*)buf305d, 1-index, 0);
    window_buf305_buf305d_o->acquire(*window_buf305_buf305d_o, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    orthogonalize<256>(window_buf303_buf303d_i[0],window_buf289r_buf289dr_i[0],window_buf319_buf319d_o[0],window_buf305_buf305d_o[0]);
    window_buf303_buf303d_i->release(*window_buf303_buf303d_i, LOCK_26_3_2_0, LOCK_26_3_3_0, 1-index);
    window_buf289r_buf289dr_i->release(*window_buf289r_buf289dr_i, LOCK_27_3_0_0, LOCK_27_3_1_1056, 1-index);
    window_buf319_buf319d_o->release(*window_buf319_buf319d_o, LOCK_26_4_0_7136, LOCK_26_4_1_0, 1-index);
    window_buf305_buf305d_o->release(*window_buf305_buf305d_o, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_3_bounds > 0)
      --proc_26_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}