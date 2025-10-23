// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_5/src/20_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_5_2_8032 18
#define LOCK_20_5_3_0 19
#define LOCK_21_5_0_0 48
#define LOCK_21_5_1_0 49
#define LOCK_20_4_0_3936 0
#define LOCK_20_4_1_2080 1
#define LOCK_20_4_2_0 2
#define LOCK_20_4_3_0 3

// Declare shared memory buffers
v4float buf204[9];
v4float buf204d[9];
v4float buf214[9];
v4float buf214d[9];
v4float buf226[9];
v4float buf226d[9];
v4float buf236[9];
v4float buf236d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_i[1] = {{(float*)buf204, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_i[1] = {{(float*)buf214, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf226_buf226d_o[1] = {{(float*)buf226, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236_buf236d_o[1] = {{(float*)buf236, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_5_bounds = sync_buffer[1];

  while (proc_20_5_bounds)
  {

    // Kernel call : i106:orthogonalize<32>
    window_buf204_buf204d_i->setData(*window_buf204_buf204d_i, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_i->acquire(*window_buf204_buf204d_i, LOCK_20_5_2_8032, LOCK_20_5_3_0, 1-index);
    window_buf214_buf214d_i->setData(*window_buf214_buf214d_i, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_i->acquire(*window_buf214_buf214d_i, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf226_buf226d_o->setData(*window_buf226_buf226d_o, (float*)buf226, (float*)buf226d, 1-index, 0);
    window_buf226_buf226d_o->acquire(*window_buf226_buf226d_o, LOCK_20_4_0_3936, LOCK_20_4_1_2080, 1-index);
    window_buf236_buf236d_o->setData(*window_buf236_buf236d_o, (float*)buf236, (float*)buf236d, 1-index, 0);
    window_buf236_buf236d_o->acquire(*window_buf236_buf236d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    orthogonalize<32>(window_buf204_buf204d_i[0],window_buf214_buf214d_i[0],window_buf226_buf226d_o[0],window_buf236_buf236d_o[0]);
    window_buf204_buf204d_i->release(*window_buf204_buf204d_i, LOCK_20_5_2_8032, LOCK_20_5_3_0, 1-index);
    window_buf214_buf214d_i->release(*window_buf214_buf214d_i, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf226_buf226d_o->release(*window_buf226_buf226d_o, LOCK_20_4_0_3936, LOCK_20_4_1_2080, 1-index);
    window_buf236_buf236d_o->release(*window_buf236_buf236d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_5_bounds > 0)
      --proc_20_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}