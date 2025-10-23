// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_6/src/33_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_6_0_3936 16
#define LOCK_32_6_1_2080 17
#define LOCK_33_6_2_0 50
#define LOCK_33_6_3_0 51
#define LOCK_33_7_0_8032 32
#define LOCK_33_7_1_0 33
#define LOCK_33_7_2_0 34
#define LOCK_33_7_3_0 35

// Declare shared memory buffers
v4float buf443[9];
v4float buf443d[9];
v4float buf444[9];
v4float buf444d[9];
v4float buf465[9];
v4float buf465d[9];
v4float buf466[9];
v4float buf466d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf443_buf443d_i[1] = {{(float*)buf443, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf444_buf444d_i[1] = {{(float*)buf444, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf465_buf465d_o[1] = {{(float*)buf465, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf466_buf466d_o[1] = {{(float*)buf466, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_6_bounds = sync_buffer[1];

  while (proc_33_6_bounds)
  {

    // Kernel call : i228:orthogonalize<32>
    window_buf443_buf443d_i->setData(*window_buf443_buf443d_i, (float*)buf443, (float*)buf443d, 1-index, 0);
    window_buf443_buf443d_i->acquire(*window_buf443_buf443d_i, LOCK_32_6_0_3936, LOCK_32_6_1_2080, 1-index);
    window_buf444_buf444d_i->setData(*window_buf444_buf444d_i, (float*)buf444, (float*)buf444d, 1-index, 0);
    window_buf444_buf444d_i->acquire(*window_buf444_buf444d_i, LOCK_33_6_2_0, LOCK_33_6_3_0, 1-index);
    window_buf465_buf465d_o->setData(*window_buf465_buf465d_o, (float*)buf465, (float*)buf465d, 1-index, 0);
    window_buf465_buf465d_o->acquire(*window_buf465_buf465d_o, LOCK_33_7_0_8032, LOCK_33_7_1_0, 1-index);
    window_buf466_buf466d_o->setData(*window_buf466_buf466d_o, (float*)buf466, (float*)buf466d, 1-index, 0);
    window_buf466_buf466d_o->acquire(*window_buf466_buf466d_o, LOCK_33_7_2_0, LOCK_33_7_3_0, 1-index);
    orthogonalize<32>(window_buf443_buf443d_i[0],window_buf444_buf444d_i[0],window_buf465_buf465d_o[0],window_buf466_buf466d_o[0]);
    window_buf443_buf443d_i->release(*window_buf443_buf443d_i, LOCK_32_6_0_3936, LOCK_32_6_1_2080, 1-index);
    window_buf444_buf444d_i->release(*window_buf444_buf444d_i, LOCK_33_6_2_0, LOCK_33_6_3_0, 1-index);
    window_buf465_buf465d_o->release(*window_buf465_buf465d_o, LOCK_33_7_0_8032, LOCK_33_7_1_0, 1-index);
    window_buf466_buf466d_o->release(*window_buf466_buf466d_o, LOCK_33_7_2_0, LOCK_33_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_6_bounds > 0)
      --proc_33_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}