// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/7_0/src/7_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_0_0_0 48
#define LOCK_7_0_1_7872 49
#define LOCK_6_0_0_0 16
#define LOCK_6_0_1_0 17
#define LOCK_7_1_0_8032 32
#define LOCK_7_1_1_0 33
#define LOCK_7_1_2_0 34
#define LOCK_7_1_3_0 35

// Declare shared memory buffers
v4float buf18[9];
v4float buf18d[9];
v4float buf19[9];
v4float buf19d[9];
v4float buf22[9];
v4float buf22d[9];
v4float buf23[9];
v4float buf23d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_i[1] = {{(float*)buf18, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_i[1] = {{(float*)buf19, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_o[1] = {{(float*)buf22, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23_buf23d_o[1] = {{(float*)buf23, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_0_bounds = sync_buffer[1];

  while (proc_7_0_bounds)
  {

    // Kernel call : i15:orthogonalize<32>
    window_buf18_buf18d_i->setData(*window_buf18_buf18d_i, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_i->acquire(*window_buf18_buf18d_i, LOCK_7_0_0_0, LOCK_7_0_1_7872, 1-index);
    window_buf19_buf19d_i->setData(*window_buf19_buf19d_i, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_i->acquire(*window_buf19_buf19d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf22_buf22d_o->setData(*window_buf22_buf22d_o, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_o->acquire(*window_buf22_buf22d_o, LOCK_7_1_0_8032, LOCK_7_1_1_0, 1-index);
    window_buf23_buf23d_o->setData(*window_buf23_buf23d_o, (float*)buf23, (float*)buf23d, 1-index, 0);
    window_buf23_buf23d_o->acquire(*window_buf23_buf23d_o, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    orthogonalize<32>(window_buf18_buf18d_i[0],window_buf19_buf19d_i[0],window_buf22_buf22d_o[0],window_buf23_buf23d_o[0]);
    window_buf18_buf18d_i->release(*window_buf18_buf18d_i, LOCK_7_0_0_0, LOCK_7_0_1_7872, 1-index);
    window_buf19_buf19d_i->release(*window_buf19_buf19d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf22_buf22d_o->release(*window_buf22_buf22d_o, LOCK_7_1_0_8032, LOCK_7_1_1_0, 1-index);
    window_buf23_buf23d_o->release(*window_buf23_buf23d_o, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_0_bounds > 0)
      --proc_7_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}