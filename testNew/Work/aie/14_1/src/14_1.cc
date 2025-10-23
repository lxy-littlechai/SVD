// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_1/src/14_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_1_2_0 18
#define LOCK_14_1_3_0 19
#define LOCK_15_1_0_0 48
#define LOCK_15_1_1_1056 49
#define LOCK_14_2_0_7136 32
#define LOCK_14_2_1_0 33
#define LOCK_14_2_2_0 34
#define LOCK_14_2_3_0 35

// Declare shared memory buffers
v4float buf137dr[65];
v4float buf137r[65];
v4float buf143[65];
v4float buf143d[65];
v4float buf145[65];
v4float buf145d[65];
v4float buf151[65];
v4float buf151d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf143_buf143d_i[1] = {{(float*)buf143, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137r_buf137dr_i[1] = {{(float*)buf137r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_o[1] = {{(float*)buf151, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145_buf145d_o[1] = {{(float*)buf145, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_1_bounds = sync_buffer[1];

  while (proc_14_1_bounds)
  {

    // Kernel call : i79:orthogonalize<256>
    window_buf143_buf143d_i->setData(*window_buf143_buf143d_i, (float*)buf143, (float*)buf143d, 1-index, 0);
    window_buf143_buf143d_i->acquire(*window_buf143_buf143d_i, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    window_buf137r_buf137dr_i->setData(*window_buf137r_buf137dr_i, (float*)buf137r, (float*)buf137dr, 1-index, 0);
    window_buf137r_buf137dr_i->acquire(*window_buf137r_buf137dr_i, LOCK_15_1_0_0, LOCK_15_1_1_1056, 1-index);
    window_buf151_buf151d_o->setData(*window_buf151_buf151d_o, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_o->acquire(*window_buf151_buf151d_o, LOCK_14_2_0_7136, LOCK_14_2_1_0, 1-index);
    window_buf145_buf145d_o->setData(*window_buf145_buf145d_o, (float*)buf145, (float*)buf145d, 1-index, 0);
    window_buf145_buf145d_o->acquire(*window_buf145_buf145d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    orthogonalize<256>(window_buf143_buf143d_i[0],window_buf137r_buf137dr_i[0],window_buf151_buf151d_o[0],window_buf145_buf145d_o[0]);
    window_buf143_buf143d_i->release(*window_buf143_buf143d_i, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    window_buf137r_buf137dr_i->release(*window_buf137r_buf137dr_i, LOCK_15_1_0_0, LOCK_15_1_1_1056, 1-index);
    window_buf151_buf151d_o->release(*window_buf151_buf151d_o, LOCK_14_2_0_7136, LOCK_14_2_1_0, 1-index);
    window_buf145_buf145d_o->release(*window_buf145_buf145d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_1_bounds > 0)
      --proc_14_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}