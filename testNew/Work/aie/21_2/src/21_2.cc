// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_2/src/21_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_2_0_0 16
#define LOCK_20_2_1_0 17
#define LOCK_21_2_2_0 50
#define LOCK_21_2_3_0 51
#define LOCK_21_3_0_0 32
#define LOCK_21_3_1_0 33
#define LOCK_21_3_2_0 34
#define LOCK_21_3_3_0 35

// Declare shared memory buffers
v4float buf208[65];
v4float buf208d[65];
v4float buf213[65];
v4float buf213d[65];
v4float buf216[65];
v4float buf216d[65];
v4float buf221[65];
v4float buf221d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_i[1] = {{(float*)buf208, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_i[1] = {{(float*)buf213, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf216_buf216d_o[1] = {{(float*)buf216, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221_buf221d_o[1] = {{(float*)buf221, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_2_bounds = sync_buffer[1];

  while (proc_21_2_bounds)
  {

    // Kernel call : i117:orthogonalize<256>
    window_buf208_buf208d_i->setData(*window_buf208_buf208d_i, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_i->acquire(*window_buf208_buf208d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf213_buf213d_i->setData(*window_buf213_buf213d_i, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_i->acquire(*window_buf213_buf213d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf216_buf216d_o->setData(*window_buf216_buf216d_o, (float*)buf216, (float*)buf216d, 1-index, 0);
    window_buf216_buf216d_o->acquire(*window_buf216_buf216d_o, LOCK_21_3_0_0, LOCK_21_3_1_0, 1-index);
    window_buf221_buf221d_o->setData(*window_buf221_buf221d_o, (float*)buf221, (float*)buf221d, 1-index, 0);
    window_buf221_buf221d_o->acquire(*window_buf221_buf221d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    orthogonalize<256>(window_buf208_buf208d_i[0],window_buf213_buf213d_i[0],window_buf216_buf216d_o[0],window_buf221_buf221d_o[0]);
    window_buf208_buf208d_i->release(*window_buf208_buf208d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf213_buf213d_i->release(*window_buf213_buf213d_i, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    window_buf216_buf216d_o->release(*window_buf216_buf216d_o, LOCK_21_3_0_0, LOCK_21_3_1_0, 1-index);
    window_buf221_buf221d_o->release(*window_buf221_buf221d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_2_bounds > 0)
      --proc_21_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}