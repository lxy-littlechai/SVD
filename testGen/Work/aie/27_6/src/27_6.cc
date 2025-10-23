// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_6/src/27_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_6_0_3936 16
#define LOCK_26_6_1_5952 17
#define LOCK_27_6_2_0 50
#define LOCK_27_6_3_0 51
#define LOCK_27_7_0_8032 32
#define LOCK_27_7_1_0 33
#define LOCK_27_7_2_0 34
#define LOCK_27_7_3_0 35

// Declare shared memory buffers
v4float buf455[9];
v4float buf455d[9];
v4float buf456[9];
v4float buf456d[9];
v4float buf477[9];
v4float buf477d[9];
v4float buf478[9];
v4float buf478d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf455_buf455d_i[1] = {{(float*)buf455, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf456_buf456d_i[1] = {{(float*)buf456, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf477_buf477d_o[1] = {{(float*)buf477, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf478_buf478d_o[1] = {{(float*)buf478, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_6_bounds = sync_buffer[1];

  while (proc_27_6_bounds)
  {

    // Kernel call : i222:orthogonalize<32>
    window_buf455_buf455d_i->setData(*window_buf455_buf455d_i, (float*)buf455, (float*)buf455d, 1-index, 0);
    window_buf455_buf455d_i->acquire(*window_buf455_buf455d_i, LOCK_26_6_0_3936, LOCK_26_6_1_5952, 1-index);
    window_buf456_buf456d_i->setData(*window_buf456_buf456d_i, (float*)buf456, (float*)buf456d, 1-index, 0);
    window_buf456_buf456d_i->acquire(*window_buf456_buf456d_i, LOCK_27_6_2_0, LOCK_27_6_3_0, 1-index);
    window_buf477_buf477d_o->setData(*window_buf477_buf477d_o, (float*)buf477, (float*)buf477d, 1-index, 0);
    window_buf477_buf477d_o->acquire(*window_buf477_buf477d_o, LOCK_27_7_0_8032, LOCK_27_7_1_0, 1-index);
    window_buf478_buf478d_o->setData(*window_buf478_buf478d_o, (float*)buf478, (float*)buf478d, 1-index, 0);
    window_buf478_buf478d_o->acquire(*window_buf478_buf478d_o, LOCK_27_7_2_0, LOCK_27_7_3_0, 1-index);
    orthogonalize<32>(window_buf455_buf455d_i[0],window_buf456_buf456d_i[0],window_buf477_buf477d_o[0],window_buf478_buf478d_o[0]);
    window_buf455_buf455d_i->release(*window_buf455_buf455d_i, LOCK_26_6_0_3936, LOCK_26_6_1_5952, 1-index);
    window_buf456_buf456d_i->release(*window_buf456_buf456d_i, LOCK_27_6_2_0, LOCK_27_6_3_0, 1-index);
    window_buf477_buf477d_o->release(*window_buf477_buf477d_o, LOCK_27_7_0_8032, LOCK_27_7_1_0, 1-index);
    window_buf478_buf478d_o->release(*window_buf478_buf478d_o, LOCK_27_7_2_0, LOCK_27_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_6_bounds > 0)
      --proc_27_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}