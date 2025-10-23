// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/12_0/src/12_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_0_0_0 48
#define LOCK_12_0_1_7872 49
#define LOCK_11_0_0_0 16
#define LOCK_11_0_1_0 17
#define LOCK_12_1_0_8032 32
#define LOCK_12_1_1_0 33
#define LOCK_12_1_2_0 34
#define LOCK_12_1_3_0 35

// Declare shared memory buffers
v4float buf34[9];
v4float buf34d[9];
v4float buf35[9];
v4float buf35d[9];
v4float buf38[9];
v4float buf38d[9];
v4float buf39[9];
v4float buf39d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_i[1] = {{(float*)buf34, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35_buf35d_i[1] = {{(float*)buf35, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf38_buf38d_o[1] = {{(float*)buf38, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_o[1] = {{(float*)buf39, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_0_bounds = sync_buffer[1];

  while (proc_12_0_bounds)
  {

    // Kernel call : i29:orthogonalize<32>
    window_buf34_buf34d_i->setData(*window_buf34_buf34d_i, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_i->acquire(*window_buf34_buf34d_i, LOCK_12_0_0_0, LOCK_12_0_1_7872, 1-index);
    window_buf35_buf35d_i->setData(*window_buf35_buf35d_i, (float*)buf35, (float*)buf35d, 1-index, 0);
    window_buf35_buf35d_i->acquire(*window_buf35_buf35d_i, LOCK_11_0_0_0, LOCK_11_0_1_0, 1-index);
    window_buf38_buf38d_o->setData(*window_buf38_buf38d_o, (float*)buf38, (float*)buf38d, 1-index, 0);
    window_buf38_buf38d_o->acquire(*window_buf38_buf38d_o, LOCK_12_1_0_8032, LOCK_12_1_1_0, 1-index);
    window_buf39_buf39d_o->setData(*window_buf39_buf39d_o, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_o->acquire(*window_buf39_buf39d_o, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    orthogonalize<32>(window_buf34_buf34d_i[0],window_buf35_buf35d_i[0],window_buf38_buf38d_o[0],window_buf39_buf39d_o[0]);
    window_buf34_buf34d_i->release(*window_buf34_buf34d_i, LOCK_12_0_0_0, LOCK_12_0_1_7872, 1-index);
    window_buf35_buf35d_i->release(*window_buf35_buf35d_i, LOCK_11_0_0_0, LOCK_11_0_1_0, 1-index);
    window_buf38_buf38d_o->release(*window_buf38_buf38d_o, LOCK_12_1_0_8032, LOCK_12_1_1_0, 1-index);
    window_buf39_buf39d_o->release(*window_buf39_buf39d_o, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_0_bounds > 0)
      --proc_12_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}