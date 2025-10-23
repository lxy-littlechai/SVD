// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_4/src/22_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_4_0_3936 16
#define LOCK_21_4_1_5952 17
#define LOCK_22_4_2_0 50
#define LOCK_22_4_3_0 51
#define LOCK_22_3_0_8032 0
#define LOCK_22_3_1_0 1
#define LOCK_22_3_2_0 2
#define LOCK_22_3_3_0 3

// Declare shared memory buffers
v4float buf228[9];
v4float buf228d[9];
v4float buf232[9];
v4float buf232d[9];
v4float buf250[9];
v4float buf250d[9];
v4float buf254[9];
v4float buf254d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228_buf228d_i[1] = {{(float*)buf228, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232_buf232d_i[1] = {{(float*)buf232, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf250_buf250d_o[1] = {{(float*)buf250, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf254_buf254d_o[1] = {{(float*)buf254, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_4_bounds = sync_buffer[1];

  while (proc_22_4_bounds)
  {

    // Kernel call : i119:orthogonalize<32>
    window_buf228_buf228d_i->setData(*window_buf228_buf228d_i, (float*)buf228, (float*)buf228d, 1-index, 0);
    window_buf228_buf228d_i->acquire(*window_buf228_buf228d_i, LOCK_21_4_0_3936, LOCK_21_4_1_5952, 1-index);
    window_buf232_buf232d_i->setData(*window_buf232_buf232d_i, (float*)buf232, (float*)buf232d, 1-index, 0);
    window_buf232_buf232d_i->acquire(*window_buf232_buf232d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf250_buf250d_o->setData(*window_buf250_buf250d_o, (float*)buf250, (float*)buf250d, 1-index, 0);
    window_buf250_buf250d_o->acquire(*window_buf250_buf250d_o, LOCK_22_3_0_8032, LOCK_22_3_1_0, 1-index);
    window_buf254_buf254d_o->setData(*window_buf254_buf254d_o, (float*)buf254, (float*)buf254d, 1-index, 0);
    window_buf254_buf254d_o->acquire(*window_buf254_buf254d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    orthogonalize<32>(window_buf228_buf228d_i[0],window_buf232_buf232d_i[0],window_buf250_buf250d_o[0],window_buf254_buf254d_o[0]);
    window_buf228_buf228d_i->release(*window_buf228_buf228d_i, LOCK_21_4_0_3936, LOCK_21_4_1_5952, 1-index);
    window_buf232_buf232d_i->release(*window_buf232_buf232d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf250_buf250d_o->release(*window_buf250_buf250d_o, LOCK_22_3_0_8032, LOCK_22_3_1_0, 1-index);
    window_buf254_buf254d_o->release(*window_buf254_buf254d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_4_bounds > 0)
      --proc_22_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}