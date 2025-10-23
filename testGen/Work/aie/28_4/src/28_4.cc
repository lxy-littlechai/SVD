// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_4/src/28_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_4_0_0 16
#define LOCK_27_4_1_0 17
#define LOCK_28_4_2_0 50
#define LOCK_28_4_3_0 51
#define LOCK_28_5_0_8032 32
#define LOCK_28_5_1_0 33
#define LOCK_28_5_2_0 34
#define LOCK_28_5_3_0 35

// Declare shared memory buffers
v4float buf407[9];
v4float buf407d[9];
v4float buf412[9];
v4float buf412d[9];
v4float buf429[9];
v4float buf429d[9];
v4float buf434[9];
v4float buf434d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf407_buf407d_i[1] = {{(float*)buf407, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf412_buf412d_i[1] = {{(float*)buf412, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf429_buf429d_o[1] = {{(float*)buf429, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf434_buf434d_o[1] = {{(float*)buf434, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_4_bounds = sync_buffer[1];

  while (proc_28_4_bounds)
  {

    // Kernel call : i201:orthogonalize<32>
    window_buf407_buf407d_i->setData(*window_buf407_buf407d_i, (float*)buf407, (float*)buf407d, 1-index, 0);
    window_buf407_buf407d_i->acquire(*window_buf407_buf407d_i, LOCK_27_4_0_0, LOCK_27_4_1_0, 1-index);
    window_buf412_buf412d_i->setData(*window_buf412_buf412d_i, (float*)buf412, (float*)buf412d, 1-index, 0);
    window_buf412_buf412d_i->acquire(*window_buf412_buf412d_i, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    window_buf429_buf429d_o->setData(*window_buf429_buf429d_o, (float*)buf429, (float*)buf429d, 1-index, 0);
    window_buf429_buf429d_o->acquire(*window_buf429_buf429d_o, LOCK_28_5_0_8032, LOCK_28_5_1_0, 1-index);
    window_buf434_buf434d_o->setData(*window_buf434_buf434d_o, (float*)buf434, (float*)buf434d, 1-index, 0);
    window_buf434_buf434d_o->acquire(*window_buf434_buf434d_o, LOCK_28_5_2_0, LOCK_28_5_3_0, 1-index);
    orthogonalize<32>(window_buf407_buf407d_i[0],window_buf412_buf412d_i[0],window_buf429_buf429d_o[0],window_buf434_buf434d_o[0]);
    window_buf407_buf407d_i->release(*window_buf407_buf407d_i, LOCK_27_4_0_0, LOCK_27_4_1_0, 1-index);
    window_buf412_buf412d_i->release(*window_buf412_buf412d_i, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    window_buf429_buf429d_o->release(*window_buf429_buf429d_o, LOCK_28_5_0_8032, LOCK_28_5_1_0, 1-index);
    window_buf434_buf434d_o->release(*window_buf434_buf434d_o, LOCK_28_5_2_0, LOCK_28_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_4_bounds > 0)
      --proc_28_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}