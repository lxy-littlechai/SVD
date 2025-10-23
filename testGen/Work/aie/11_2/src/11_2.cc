// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_2/src/11_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_2_0_8032 16
#define LOCK_10_2_1_0 17
#define LOCK_11_2_0_0 48
#define LOCK_11_2_1_0 49
#define LOCK_11_3_0_8032 32
#define LOCK_11_3_1_0 33
#define LOCK_11_3_2_0 34
#define LOCK_11_3_3_0 35

// Declare shared memory buffers
v4float buf62[9];
v4float buf62d[9];
v4float buf65[9];
v4float buf65d[9];
v4float buf84[9];
v4float buf84d[9];
v4float buf87[9];
v4float buf87d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf62_buf62d_i[1] = {{(float*)buf62, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_i[1] = {{(float*)buf65, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf84_buf84d_o[1] = {{(float*)buf84, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_o[1] = {{(float*)buf87, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_2_bounds = sync_buffer[1];

  while (proc_11_2_bounds)
  {

    // Kernel call : i32:orthogonalize<32>
    window_buf62_buf62d_i->setData(*window_buf62_buf62d_i, (float*)buf62, (float*)buf62d, 1-index, 0);
    window_buf62_buf62d_i->acquire(*window_buf62_buf62d_i, LOCK_10_2_0_8032, LOCK_10_2_1_0, 1-index);
    window_buf65_buf65d_i->setData(*window_buf65_buf65d_i, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_i->acquire(*window_buf65_buf65d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf84_buf84d_o->setData(*window_buf84_buf84d_o, (float*)buf84, (float*)buf84d, 1-index, 0);
    window_buf84_buf84d_o->acquire(*window_buf84_buf84d_o, LOCK_11_3_0_8032, LOCK_11_3_1_0, 1-index);
    window_buf87_buf87d_o->setData(*window_buf87_buf87d_o, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_o->acquire(*window_buf87_buf87d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    orthogonalize<32>(window_buf62_buf62d_i[0],window_buf65_buf65d_i[0],window_buf84_buf84d_o[0],window_buf87_buf87d_o[0]);
    window_buf62_buf62d_i->release(*window_buf62_buf62d_i, LOCK_10_2_0_8032, LOCK_10_2_1_0, 1-index);
    window_buf65_buf65d_i->release(*window_buf65_buf65d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf84_buf84d_o->release(*window_buf84_buf84d_o, LOCK_11_3_0_8032, LOCK_11_3_1_0, 1-index);
    window_buf87_buf87d_o->release(*window_buf87_buf87d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_2_bounds > 0)
      --proc_11_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}