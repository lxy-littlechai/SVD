// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_5/src/4_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_5_0_8032 16
#define LOCK_4_5_1_0 17
#define LOCK_5_5_2_0 50
#define LOCK_5_5_3_0 51
#define LOCK_4_6_0_0 32
#define LOCK_4_6_1_0 33
#define LOCK_4_6_2_0 34
#define LOCK_4_6_3_0 35

// Declare shared memory buffers
v4float buf112[9];
v4float buf112d[9];
v4float buf123[9];
v4float buf123d[9];
v4float buf134[9];
v4float buf134d[9];
v4float buf145[9];
v4float buf145d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112_buf112d_i[1] = {{(float*)buf112, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf123_buf123d_i[1] = {{(float*)buf123, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf134_buf134d_o[1] = {{(float*)buf134, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145_buf145d_o[1] = {{(float*)buf145, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_5_bounds = sync_buffer[1];

  while (proc_4_5_bounds)
  {

    // Kernel call : i58:orthogonalize<32>
    window_buf112_buf112d_i->setData(*window_buf112_buf112d_i, (float*)buf112, (float*)buf112d, 1-index, 0);
    window_buf112_buf112d_i->acquire(*window_buf112_buf112d_i, LOCK_4_5_0_8032, LOCK_4_5_1_0, 1-index);
    window_buf123_buf123d_i->setData(*window_buf123_buf123d_i, (float*)buf123, (float*)buf123d, 1-index, 0);
    window_buf123_buf123d_i->acquire(*window_buf123_buf123d_i, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    window_buf134_buf134d_o->setData(*window_buf134_buf134d_o, (float*)buf134, (float*)buf134d, 1-index, 0);
    window_buf134_buf134d_o->acquire(*window_buf134_buf134d_o, LOCK_4_6_0_0, LOCK_4_6_1_0, 1-index);
    window_buf145_buf145d_o->setData(*window_buf145_buf145d_o, (float*)buf145, (float*)buf145d, 1-index, 0);
    window_buf145_buf145d_o->acquire(*window_buf145_buf145d_o, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    orthogonalize<32>(window_buf112_buf112d_i[0],window_buf123_buf123d_i[0],window_buf134_buf134d_o[0],window_buf145_buf145d_o[0]);
    window_buf112_buf112d_i->release(*window_buf112_buf112d_i, LOCK_4_5_0_8032, LOCK_4_5_1_0, 1-index);
    window_buf123_buf123d_i->release(*window_buf123_buf123d_i, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    window_buf134_buf134d_o->release(*window_buf134_buf134d_o, LOCK_4_6_0_0, LOCK_4_6_1_0, 1-index);
    window_buf145_buf145d_o->release(*window_buf145_buf145d_o, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_5_bounds > 0)
      --proc_4_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}