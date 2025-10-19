// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/7_2/src/7_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_2_0_8032 16
#define LOCK_6_2_1_0 17
#define LOCK_7_2_0_0 48
#define LOCK_7_2_1_0 49
#define LOCK_7_3_0_0 32
#define LOCK_7_3_1_0 33
#define LOCK_7_3_2_0 34
#define LOCK_7_3_3_0 35

// Declare shared memory buffers
v4float buf24[9];
v4float buf24d[9];
v4float buf27[9];
v4float buf27d[9];
v4float buf28[9];
v4float buf28d[9];
v4float buf31[9];
v4float buf31d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_i[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_i[1] = {{(float*)buf27, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_o[1] = {{(float*)buf28, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_o[1] = {{(float*)buf31, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_2_bounds = sync_buffer[1];

  while (proc_7_2_bounds)
  {

    // Kernel call : i19:orthogonalize<32>
    window_buf24_buf24d_i->setData(*window_buf24_buf24d_i, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_i->acquire(*window_buf24_buf24d_i, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf27_buf27d_i->setData(*window_buf27_buf27d_i, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_i->acquire(*window_buf27_buf27d_i, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf28_buf28d_o->setData(*window_buf28_buf28d_o, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_o->acquire(*window_buf28_buf28d_o, LOCK_7_3_0_0, LOCK_7_3_1_0, 1-index);
    window_buf31_buf31d_o->setData(*window_buf31_buf31d_o, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_o->acquire(*window_buf31_buf31d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    orthogonalize<32>(window_buf24_buf24d_i[0],window_buf27_buf27d_i[0],window_buf28_buf28d_o[0],window_buf31_buf31d_o[0]);
    window_buf24_buf24d_i->release(*window_buf24_buf24d_i, LOCK_6_2_0_8032, LOCK_6_2_1_0, 1-index);
    window_buf27_buf27d_i->release(*window_buf27_buf27d_i, LOCK_7_2_0_0, LOCK_7_2_1_0, 1-index);
    window_buf28_buf28d_o->release(*window_buf28_buf28d_o, LOCK_7_3_0_0, LOCK_7_3_1_0, 1-index);
    window_buf31_buf31d_o->release(*window_buf31_buf31d_o, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_2_bounds > 0)
      --proc_7_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}