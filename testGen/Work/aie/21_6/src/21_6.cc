// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_6/src/21_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_6_0_0 16
#define LOCK_20_6_1_0 17
#define LOCK_21_6_2_0 50
#define LOCK_21_6_3_0 51
#define LOCK_21_5_2_8032 2
#define LOCK_21_5_3_0 3
#define LOCK_21_5_0_0 0
#define LOCK_21_5_1_0 1

// Declare shared memory buffers
v4float buf184[9];
v4float buf184d[9];
v4float buf192[9];
v4float buf192d[9];
v4float buf206[9];
v4float buf206d[9];
v4float buf214[9];
v4float buf214d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf184_buf184d_i[1] = {{(float*)buf184, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf192_buf192d_i[1] = {{(float*)buf192, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_o[1] = {{(float*)buf206, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_o[1] = {{(float*)buf214, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_6_bounds = sync_buffer[1];

  while (proc_21_6_bounds)
  {

    // Kernel call : i96:orthogonalize<32>
    window_buf184_buf184d_i->setData(*window_buf184_buf184d_i, (float*)buf184, (float*)buf184d, 1-index, 0);
    window_buf184_buf184d_i->acquire(*window_buf184_buf184d_i, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf192_buf192d_i->setData(*window_buf192_buf192d_i, (float*)buf192, (float*)buf192d, 1-index, 0);
    window_buf192_buf192d_i->acquire(*window_buf192_buf192d_i, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    window_buf206_buf206d_o->setData(*window_buf206_buf206d_o, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_o->acquire(*window_buf206_buf206d_o, LOCK_21_5_2_8032, LOCK_21_5_3_0, 1-index);
    window_buf214_buf214d_o->setData(*window_buf214_buf214d_o, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_o->acquire(*window_buf214_buf214d_o, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    orthogonalize<32>(window_buf184_buf184d_i[0],window_buf192_buf192d_i[0],window_buf206_buf206d_o[0],window_buf214_buf214d_o[0]);
    window_buf184_buf184d_i->release(*window_buf184_buf184d_i, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf192_buf192d_i->release(*window_buf192_buf192d_i, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    window_buf206_buf206d_o->release(*window_buf206_buf206d_o, LOCK_21_5_2_8032, LOCK_21_5_3_0, 1-index);
    window_buf214_buf214d_o->release(*window_buf214_buf214d_o, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_6_bounds > 0)
      --proc_21_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}