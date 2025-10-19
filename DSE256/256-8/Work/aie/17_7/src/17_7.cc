// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/17_7/src/17_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_7_0_5056 48
#define LOCK_18_7_1_0 49
#define LOCK_18_7_2_4000 50
#define LOCK_18_7_3_0 51
#define LOCK_17_6_0_0 0
#define LOCK_17_6_1_1056 1
#define LOCK_17_6_2_0 2
#define LOCK_17_6_3_0 3

// Declare shared memory buffers
v4float buf119dr[65];
v4float buf119r[65];
v4float buf127dr[65];
v4float buf127r[65];
v4float buf135[65];
v4float buf135d[65];
v4float buf143[65];
v4float buf143d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf127r_buf127dr_i[1] = {{(float*)buf127r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf119r_buf119dr_i[1] = {{(float*)buf119r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf143_buf143d_o[1] = {{(float*)buf143, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf135_buf135d_o[1] = {{(float*)buf135, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_7_bounds = sync_buffer[1];

  while (proc_17_7_bounds)
  {

    // Kernel call : i63:orthogonalize<256>
    window_buf127r_buf127dr_i->setData(*window_buf127r_buf127dr_i, (float*)buf127r, (float*)buf127dr, 1-index, 0);
    window_buf127r_buf127dr_i->acquire(*window_buf127r_buf127dr_i, LOCK_18_7_0_5056, LOCK_18_7_1_0, 1-index);
    window_buf119r_buf119dr_i->setData(*window_buf119r_buf119dr_i, (float*)buf119r, (float*)buf119dr, 1-index, 0);
    window_buf119r_buf119dr_i->acquire(*window_buf119r_buf119dr_i, LOCK_18_7_2_4000, LOCK_18_7_3_0, 1-index);
    window_buf143_buf143d_o->setData(*window_buf143_buf143d_o, (float*)buf143, (float*)buf143d, 1-index, 0);
    window_buf143_buf143d_o->acquire(*window_buf143_buf143d_o, LOCK_17_6_0_0, LOCK_17_6_1_1056, 1-index);
    window_buf135_buf135d_o->setData(*window_buf135_buf135d_o, (float*)buf135, (float*)buf135d, 1-index, 0);
    window_buf135_buf135d_o->acquire(*window_buf135_buf135d_o, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    orthogonalize<256>(window_buf127r_buf127dr_i[0],window_buf119r_buf119dr_i[0],window_buf143_buf143d_o[0],window_buf135_buf135d_o[0]);
    window_buf127r_buf127dr_i->release(*window_buf127r_buf127dr_i, LOCK_18_7_0_5056, LOCK_18_7_1_0, 1-index);
    window_buf119r_buf119dr_i->release(*window_buf119r_buf119dr_i, LOCK_18_7_2_4000, LOCK_18_7_3_0, 1-index);
    window_buf143_buf143d_o->release(*window_buf143_buf143d_o, LOCK_17_6_0_0, LOCK_17_6_1_1056, 1-index);
    window_buf135_buf135d_o->release(*window_buf135_buf135d_o, LOCK_17_6_2_0, LOCK_17_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_7_bounds > 0)
      --proc_17_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}