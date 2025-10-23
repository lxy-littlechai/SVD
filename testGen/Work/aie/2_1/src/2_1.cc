// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_1/src/2_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_1_2_4256 18
#define LOCK_2_1_3_8032 19
#define LOCK_3_1_0_8032 48
#define LOCK_3_1_1_160 49
#define LOCK_2_2_0_8032 32
#define LOCK_2_2_1_0 33
#define LOCK_2_2_2_0 34
#define LOCK_2_2_3_0 35

// Declare shared memory buffers
v4float buf24[9];
v4float buf24d[9];
v4float buf27[9];
v4float buf27d[9];
v4float buf46[9];
v4float buf46d[9];
v4float buf49[9];
v4float buf49d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf24_buf24d_i[1] = {{(float*)buf24, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_i[1] = {{(float*)buf27, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf46_buf46d_o[1] = {{(float*)buf46, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_o[1] = {{(float*)buf49, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_1_bounds = sync_buffer[1];

  while (proc_2_1_bounds)
  {

    // Kernel call : i12:orthogonalize<32>
    window_buf24_buf24d_i->setData(*window_buf24_buf24d_i, (float*)buf24, (float*)buf24d, 1-index, 0);
    window_buf24_buf24d_i->acquire(*window_buf24_buf24d_i, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf27_buf27d_i->setData(*window_buf27_buf27d_i, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_i->acquire(*window_buf27_buf27d_i, LOCK_3_1_0_8032, LOCK_3_1_1_160, 1-index);
    window_buf46_buf46d_o->setData(*window_buf46_buf46d_o, (float*)buf46, (float*)buf46d, 1-index, 0);
    window_buf46_buf46d_o->acquire(*window_buf46_buf46d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf49_buf49d_o->setData(*window_buf49_buf49d_o, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_o->acquire(*window_buf49_buf49d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    orthogonalize<32>(window_buf24_buf24d_i[0],window_buf27_buf27d_i[0],window_buf46_buf46d_o[0],window_buf49_buf49d_o[0]);
    window_buf24_buf24d_i->release(*window_buf24_buf24d_i, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf27_buf27d_i->release(*window_buf27_buf27d_i, LOCK_3_1_0_8032, LOCK_3_1_1_160, 1-index);
    window_buf46_buf46d_o->release(*window_buf46_buf46d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf49_buf49d_o->release(*window_buf49_buf49d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_1_bounds > 0)
      --proc_2_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}