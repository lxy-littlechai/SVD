// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_6/src/22_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_6_0_0 16
#define LOCK_21_6_1_0 17
#define LOCK_22_6_2_0 50
#define LOCK_22_6_3_0 51
#define LOCK_22_7_0_0 32
#define LOCK_22_7_1_0 33
#define LOCK_22_7_2_0 34
#define LOCK_22_7_3_0 35

// Declare shared memory buffers
v4float buf241[65];
v4float buf241d[65];
v4float buf242[65];
v4float buf242d[65];
v4float buf249[65];
v4float buf249d[65];
v4float buf250[65];
v4float buf250d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf241_buf241d_i[1] = {{(float*)buf241, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf242_buf242d_i[1] = {{(float*)buf242, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf249_buf249d_o[1] = {{(float*)buf249, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf250_buf250d_o[1] = {{(float*)buf250, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_6_bounds = sync_buffer[1];

  while (proc_22_6_bounds)
  {

    // Kernel call : i134:orthogonalize<256>
    window_buf241_buf241d_i->setData(*window_buf241_buf241d_i, (float*)buf241, (float*)buf241d, 1-index, 0);
    window_buf241_buf241d_i->acquire(*window_buf241_buf241d_i, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf242_buf242d_i->setData(*window_buf242_buf242d_i, (float*)buf242, (float*)buf242d, 1-index, 0);
    window_buf242_buf242d_i->acquire(*window_buf242_buf242d_i, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    window_buf249_buf249d_o->setData(*window_buf249_buf249d_o, (float*)buf249, (float*)buf249d, 1-index, 0);
    window_buf249_buf249d_o->acquire(*window_buf249_buf249d_o, LOCK_22_7_0_0, LOCK_22_7_1_0, 1-index);
    window_buf250_buf250d_o->setData(*window_buf250_buf250d_o, (float*)buf250, (float*)buf250d, 1-index, 0);
    window_buf250_buf250d_o->acquire(*window_buf250_buf250d_o, LOCK_22_7_2_0, LOCK_22_7_3_0, 1-index);
    orthogonalize<256>(window_buf241_buf241d_i[0],window_buf242_buf242d_i[0],window_buf249_buf249d_o[0],window_buf250_buf250d_o[0]);
    window_buf241_buf241d_i->release(*window_buf241_buf241d_i, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf242_buf242d_i->release(*window_buf242_buf242d_i, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    window_buf249_buf249d_o->release(*window_buf249_buf249d_o, LOCK_22_7_0_0, LOCK_22_7_1_0, 1-index);
    window_buf250_buf250d_o->release(*window_buf250_buf250d_o, LOCK_22_7_2_0, LOCK_22_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_6_bounds > 0)
      --proc_22_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}