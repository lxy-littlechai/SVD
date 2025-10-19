// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/33_3/src/33_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_3_0_7136 16
#define LOCK_33_3_1_0 17
#define LOCK_34_3_2_0 50
#define LOCK_34_3_3_0 51
#define LOCK_33_2_0_0 0
#define LOCK_33_2_1_0 1
#define LOCK_33_2_2_0 2
#define LOCK_33_2_3_0 3

// Declare shared memory buffers
v4float buf418[65];
v4float buf418d[65];
v4float buf424[65];
v4float buf424d[65];
v4float buf434[65];
v4float buf434d[65];
v4float buf440[65];
v4float buf440d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf418_buf418d_i[1] = {{(float*)buf418, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf424_buf424d_i[1] = {{(float*)buf424, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf434_buf434d_o[1] = {{(float*)buf434, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf440_buf440d_o[1] = {{(float*)buf440, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_3_bounds = sync_buffer[1];

  while (proc_33_3_bounds)
  {

    // Kernel call : i217:orthogonalize<256>
    window_buf418_buf418d_i->setData(*window_buf418_buf418d_i, (float*)buf418, (float*)buf418d, 1-index, 0);
    window_buf418_buf418d_i->acquire(*window_buf418_buf418d_i, LOCK_33_3_0_7136, LOCK_33_3_1_0, 1-index);
    window_buf424_buf424d_i->setData(*window_buf424_buf424d_i, (float*)buf424, (float*)buf424d, 1-index, 0);
    window_buf424_buf424d_i->acquire(*window_buf424_buf424d_i, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    window_buf434_buf434d_o->setData(*window_buf434_buf434d_o, (float*)buf434, (float*)buf434d, 1-index, 0);
    window_buf434_buf434d_o->acquire(*window_buf434_buf434d_o, LOCK_33_2_0_0, LOCK_33_2_1_0, 1-index);
    window_buf440_buf440d_o->setData(*window_buf440_buf440d_o, (float*)buf440, (float*)buf440d, 1-index, 0);
    window_buf440_buf440d_o->acquire(*window_buf440_buf440d_o, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    orthogonalize<256>(window_buf418_buf418d_i[0],window_buf424_buf424d_i[0],window_buf434_buf434d_o[0],window_buf440_buf440d_o[0]);
    window_buf418_buf418d_i->release(*window_buf418_buf418d_i, LOCK_33_3_0_7136, LOCK_33_3_1_0, 1-index);
    window_buf424_buf424d_i->release(*window_buf424_buf424d_i, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    window_buf434_buf434d_o->release(*window_buf434_buf434d_o, LOCK_33_2_0_0, LOCK_33_2_1_0, 1-index);
    window_buf440_buf440d_o->release(*window_buf440_buf440d_o, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_3_bounds > 0)
      --proc_33_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}