// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_0/src/7_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_1_4_0 36
#define LOCK_7_1_5_0 37
#define LOCK_7_1_6_0 38
#define LOCK_7_1_7_4416 39
#define LOCK_7_1_2_4256 34
#define LOCK_7_1_3_8032 35
#define LOCK_7_1_0_8032 32
#define LOCK_7_1_1_160 33

// Declare shared memory buffers
v4float buf12[9];
v4float buf12d[9];
v4float buf13[9];
v4float buf13d[9];
v4float buf34[9];
v4float buf34d[9];
v4float buf35[9];
v4float buf35d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf12_buf12d_i[1] = {{(float*)buf12, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf13_buf13d_i[1] = {{(float*)buf13, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_o[1] = {{(float*)buf34, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35_buf35d_o[1] = {{(float*)buf35, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_0_bounds = sync_buffer[1];

  while (proc_7_0_bounds)
  {

    // Kernel call : i6:orthogonalize<32>
    window_buf12_buf12d_i->setData(*window_buf12_buf12d_i, (float*)buf12, (float*)buf12d, 1-index, 0);
    window_buf12_buf12d_i->acquire(*window_buf12_buf12d_i, LOCK_7_1_4_0, LOCK_7_1_5_0, 1-index);
    window_buf13_buf13d_i->setData(*window_buf13_buf13d_i, (float*)buf13, (float*)buf13d, 1-index, 0);
    window_buf13_buf13d_i->acquire(*window_buf13_buf13d_i, LOCK_7_1_6_0, LOCK_7_1_7_4416, 1-index);
    window_buf34_buf34d_o->setData(*window_buf34_buf34d_o, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_o->acquire(*window_buf34_buf34d_o, LOCK_7_1_2_4256, LOCK_7_1_3_8032, 1-index);
    window_buf35_buf35d_o->setData(*window_buf35_buf35d_o, (float*)buf35, (float*)buf35d, 1-index, 0);
    window_buf35_buf35d_o->acquire(*window_buf35_buf35d_o, LOCK_7_1_0_8032, LOCK_7_1_1_160, 1-index);
    orthogonalize<32>(window_buf12_buf12d_i[0],window_buf13_buf13d_i[0],window_buf34_buf34d_o[0],window_buf35_buf35d_o[0]);
    window_buf12_buf12d_i->release(*window_buf12_buf12d_i, LOCK_7_1_4_0, LOCK_7_1_5_0, 1-index);
    window_buf13_buf13d_i->release(*window_buf13_buf13d_i, LOCK_7_1_6_0, LOCK_7_1_7_4416, 1-index);
    window_buf34_buf34d_o->release(*window_buf34_buf34d_o, LOCK_7_1_2_4256, LOCK_7_1_3_8032, 1-index);
    window_buf35_buf35d_o->release(*window_buf35_buf35d_o, LOCK_7_1_0_8032, LOCK_7_1_1_160, 1-index);
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