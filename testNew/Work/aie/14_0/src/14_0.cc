// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_0/src/14_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_0_0_0 48
#define LOCK_14_0_1_0 49
#define LOCK_14_0_2_0 50
#define LOCK_14_0_3_0 51
#define LOCK_14_1_0_7136 32
#define LOCK_14_1_1_0 33
#define LOCK_14_1_2_0 34
#define LOCK_14_1_3_0 35

// Declare shared memory buffers
v4float buf134[65];
v4float buf134d[65];
v4float buf135[65];
v4float buf135d[65];
v4float buf142[65];
v4float buf142d[65];
v4float buf143[65];
v4float buf143d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf134_buf134d_i[1] = {{(float*)buf134, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf135_buf135d_i[1] = {{(float*)buf135, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf142_buf142d_o[1] = {{(float*)buf142, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf143_buf143d_o[1] = {{(float*)buf143, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_0_bounds = sync_buffer[1];

  while (proc_14_0_bounds)
  {

    // Kernel call : i75:orthogonalize<256>
    window_buf134_buf134d_i->setData(*window_buf134_buf134d_i, (float*)buf134, (float*)buf134d, 1-index, 0);
    window_buf134_buf134d_i->acquire(*window_buf134_buf134d_i, LOCK_14_0_0_0, LOCK_14_0_1_0, 1-index);
    window_buf135_buf135d_i->setData(*window_buf135_buf135d_i, (float*)buf135, (float*)buf135d, 1-index, 0);
    window_buf135_buf135d_i->acquire(*window_buf135_buf135d_i, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    window_buf142_buf142d_o->setData(*window_buf142_buf142d_o, (float*)buf142, (float*)buf142d, 1-index, 0);
    window_buf142_buf142d_o->acquire(*window_buf142_buf142d_o, LOCK_14_1_0_7136, LOCK_14_1_1_0, 1-index);
    window_buf143_buf143d_o->setData(*window_buf143_buf143d_o, (float*)buf143, (float*)buf143d, 1-index, 0);
    window_buf143_buf143d_o->acquire(*window_buf143_buf143d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    orthogonalize<256>(window_buf134_buf134d_i[0],window_buf135_buf135d_i[0],window_buf142_buf142d_o[0],window_buf143_buf143d_o[0]);
    window_buf134_buf134d_i->release(*window_buf134_buf134d_i, LOCK_14_0_0_0, LOCK_14_0_1_0, 1-index);
    window_buf135_buf135d_i->release(*window_buf135_buf135d_i, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    window_buf142_buf142d_o->release(*window_buf142_buf142d_o, LOCK_14_1_0_7136, LOCK_14_1_1_0, 1-index);
    window_buf143_buf143d_o->release(*window_buf143_buf143d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_0_bounds > 0)
      --proc_14_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}