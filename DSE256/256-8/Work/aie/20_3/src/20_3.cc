// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/20_3/src/20_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_3_0_7136 16
#define LOCK_20_3_1_0 17
#define LOCK_21_3_2_0 50
#define LOCK_21_3_3_0 51
#define LOCK_20_4_0_0 32
#define LOCK_20_4_1_0 33
#define LOCK_20_4_2_0 34
#define LOCK_20_4_3_0 35

// Declare shared memory buffers
v4float buf290[65];
v4float buf290d[65];
v4float buf293[65];
v4float buf293d[65];
v4float buf306[65];
v4float buf306d[65];
v4float buf309[65];
v4float buf309d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf290_buf290d_i[1] = {{(float*)buf290, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf293_buf293d_i[1] = {{(float*)buf293, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf306_buf306d_o[1] = {{(float*)buf306, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf309_buf309d_o[1] = {{(float*)buf309, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_3_bounds = sync_buffer[1];

  while (proc_20_3_bounds)
  {

    // Kernel call : i149:orthogonalize<256>
    window_buf290_buf290d_i->setData(*window_buf290_buf290d_i, (float*)buf290, (float*)buf290d, 1-index, 0);
    window_buf290_buf290d_i->acquire(*window_buf290_buf290d_i, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf293_buf293d_i->setData(*window_buf293_buf293d_i, (float*)buf293, (float*)buf293d, 1-index, 0);
    window_buf293_buf293d_i->acquire(*window_buf293_buf293d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf306_buf306d_o->setData(*window_buf306_buf306d_o, (float*)buf306, (float*)buf306d, 1-index, 0);
    window_buf306_buf306d_o->acquire(*window_buf306_buf306d_o, LOCK_20_4_0_0, LOCK_20_4_1_0, 1-index);
    window_buf309_buf309d_o->setData(*window_buf309_buf309d_o, (float*)buf309, (float*)buf309d, 1-index, 0);
    window_buf309_buf309d_o->acquire(*window_buf309_buf309d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    orthogonalize<256>(window_buf290_buf290d_i[0],window_buf293_buf293d_i[0],window_buf306_buf306d_o[0],window_buf309_buf309d_o[0]);
    window_buf290_buf290d_i->release(*window_buf290_buf290d_i, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf293_buf293d_i->release(*window_buf293_buf293d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf306_buf306d_o->release(*window_buf306_buf306d_o, LOCK_20_4_0_0, LOCK_20_4_1_0, 1-index);
    window_buf309_buf309d_o->release(*window_buf309_buf309d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_3_bounds > 0)
      --proc_20_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}