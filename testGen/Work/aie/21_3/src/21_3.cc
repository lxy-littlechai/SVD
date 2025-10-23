// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_3/src/21_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_3_0_8032 16
#define LOCK_21_3_1_0 17
#define LOCK_22_3_2_0 50
#define LOCK_22_3_3_0 51
#define LOCK_21_2_0_8032 0
#define LOCK_21_2_1_0 1
#define LOCK_21_2_2_0 2
#define LOCK_21_2_3_0 3

// Declare shared memory buffers
v4float buf248[9];
v4float buf248d[9];
v4float buf254[9];
v4float buf254d[9];
v4float buf270[9];
v4float buf270d[9];
v4float buf276[9];
v4float buf276d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf248_buf248d_i[1] = {{(float*)buf248, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf254_buf254d_i[1] = {{(float*)buf254, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf270_buf270d_o[1] = {{(float*)buf270, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf276_buf276d_o[1] = {{(float*)buf276, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_3_bounds = sync_buffer[1];

  while (proc_21_3_bounds)
  {

    // Kernel call : i129:orthogonalize<32>
    window_buf248_buf248d_i->setData(*window_buf248_buf248d_i, (float*)buf248, (float*)buf248d, 1-index, 0);
    window_buf248_buf248d_i->acquire(*window_buf248_buf248d_i, LOCK_21_3_0_8032, LOCK_21_3_1_0, 1-index);
    window_buf254_buf254d_i->setData(*window_buf254_buf254d_i, (float*)buf254, (float*)buf254d, 1-index, 0);
    window_buf254_buf254d_i->acquire(*window_buf254_buf254d_i, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    window_buf270_buf270d_o->setData(*window_buf270_buf270d_o, (float*)buf270, (float*)buf270d, 1-index, 0);
    window_buf270_buf270d_o->acquire(*window_buf270_buf270d_o, LOCK_21_2_0_8032, LOCK_21_2_1_0, 1-index);
    window_buf276_buf276d_o->setData(*window_buf276_buf276d_o, (float*)buf276, (float*)buf276d, 1-index, 0);
    window_buf276_buf276d_o->acquire(*window_buf276_buf276d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    orthogonalize<32>(window_buf248_buf248d_i[0],window_buf254_buf254d_i[0],window_buf270_buf270d_o[0],window_buf276_buf276d_o[0]);
    window_buf248_buf248d_i->release(*window_buf248_buf248d_i, LOCK_21_3_0_8032, LOCK_21_3_1_0, 1-index);
    window_buf254_buf254d_i->release(*window_buf254_buf254d_i, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    window_buf270_buf270d_o->release(*window_buf270_buf270d_o, LOCK_21_2_0_8032, LOCK_21_2_1_0, 1-index);
    window_buf276_buf276d_o->release(*window_buf276_buf276d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_3_bounds > 0)
      --proc_21_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}