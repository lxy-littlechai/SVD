// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_6/src/8_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_6_0_0 16
#define LOCK_7_6_1_0 17
#define LOCK_8_6_2_0 50
#define LOCK_8_6_3_0 51
#define LOCK_8_7_0_8032 32
#define LOCK_8_7_1_0 33
#define LOCK_8_7_2_0 34
#define LOCK_8_7_3_0 35

// Declare shared memory buffers
v4float buf140[9];
v4float buf140d[9];
v4float buf152[9];
v4float buf152d[9];
v4float buf162[9];
v4float buf162d[9];
v4float buf174[9];
v4float buf174d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_i[1] = {{(float*)buf140, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf152_buf152d_i[1] = {{(float*)buf152, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf162_buf162d_o[1] = {{(float*)buf162, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174_buf174d_o[1] = {{(float*)buf174, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_6_bounds = sync_buffer[1];

  while (proc_8_6_bounds)
  {

    // Kernel call : i73:orthogonalize<32>
    window_buf140_buf140d_i->setData(*window_buf140_buf140d_i, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_i->acquire(*window_buf140_buf140d_i, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf152_buf152d_i->setData(*window_buf152_buf152d_i, (float*)buf152, (float*)buf152d, 1-index, 0);
    window_buf152_buf152d_i->acquire(*window_buf152_buf152d_i, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    window_buf162_buf162d_o->setData(*window_buf162_buf162d_o, (float*)buf162, (float*)buf162d, 1-index, 0);
    window_buf162_buf162d_o->acquire(*window_buf162_buf162d_o, LOCK_8_7_0_8032, LOCK_8_7_1_0, 1-index);
    window_buf174_buf174d_o->setData(*window_buf174_buf174d_o, (float*)buf174, (float*)buf174d, 1-index, 0);
    window_buf174_buf174d_o->acquire(*window_buf174_buf174d_o, LOCK_8_7_2_0, LOCK_8_7_3_0, 1-index);
    orthogonalize<32>(window_buf140_buf140d_i[0],window_buf152_buf152d_i[0],window_buf162_buf162d_o[0],window_buf174_buf174d_o[0]);
    window_buf140_buf140d_i->release(*window_buf140_buf140d_i, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf152_buf152d_i->release(*window_buf152_buf152d_i, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    window_buf162_buf162d_o->release(*window_buf162_buf162d_o, LOCK_8_7_0_8032, LOCK_8_7_1_0, 1-index);
    window_buf174_buf174d_o->release(*window_buf174_buf174d_o, LOCK_8_7_2_0, LOCK_8_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_6_bounds > 0)
      --proc_8_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}