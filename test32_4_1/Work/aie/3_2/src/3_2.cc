// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/3_2/src/3_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_2_0_8032 16
#define LOCK_2_2_1_0 17
#define LOCK_3_2_0_0 48
#define LOCK_3_2_1_0 49
#define LOCK_3_3_0_0 32
#define LOCK_3_3_1_0 33
#define LOCK_3_3_2_0 34
#define LOCK_3_3_3_0 35

// Declare shared memory buffers
v4float buf18[9];
v4float buf18d[9];
v4float buf22[9];
v4float buf22d[9];
v4float buf26[9];
v4float buf26d[9];
v4float buf30[9];
v4float buf30d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_i[1] = {{(float*)buf18, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_i[1] = {{(float*)buf22, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_o[1] = {{(float*)buf26, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_o[1] = {{(float*)buf30, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_2_bounds = sync_buffer[1];

  while (proc_3_2_bounds)
  {

    // Kernel call : i10:orthogonalize<32>
    window_buf18_buf18d_i->setData(*window_buf18_buf18d_i, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_i->acquire(*window_buf18_buf18d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf22_buf22d_i->setData(*window_buf22_buf22d_i, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_i->acquire(*window_buf22_buf22d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf26_buf26d_o->setData(*window_buf26_buf26d_o, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_o->acquire(*window_buf26_buf26d_o, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf30_buf30d_o->setData(*window_buf30_buf30d_o, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_o->acquire(*window_buf30_buf30d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    orthogonalize<32>(window_buf18_buf18d_i[0],window_buf22_buf22d_i[0],window_buf26_buf26d_o[0],window_buf30_buf30d_o[0]);
    window_buf18_buf18d_i->release(*window_buf18_buf18d_i, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf22_buf22d_i->release(*window_buf22_buf22d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf26_buf26d_o->release(*window_buf26_buf26d_o, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf30_buf30d_o->release(*window_buf30_buf30d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_2_bounds > 0)
      --proc_3_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}