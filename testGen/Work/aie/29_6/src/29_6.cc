// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_6/src/29_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_6_0_3936 16
#define LOCK_28_6_1_5952 17
#define LOCK_29_6_2_0 50
#define LOCK_29_6_3_0 51
#define LOCK_29_7_0_8032 32
#define LOCK_29_7_1_0 33
#define LOCK_29_7_2_0 34
#define LOCK_29_7_3_0 35

// Declare shared memory buffers
v4float buf451[9];
v4float buf451d[9];
v4float buf452[9];
v4float buf452d[9];
v4float buf473[9];
v4float buf473d[9];
v4float buf474[9];
v4float buf474d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf451_buf451d_i[1] = {{(float*)buf451, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf452_buf452d_i[1] = {{(float*)buf452, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf473_buf473d_o[1] = {{(float*)buf473, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf474_buf474d_o[1] = {{(float*)buf474, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_6_bounds = sync_buffer[1];

  while (proc_29_6_bounds)
  {

    // Kernel call : i224:orthogonalize<32>
    window_buf451_buf451d_i->setData(*window_buf451_buf451d_i, (float*)buf451, (float*)buf451d, 1-index, 0);
    window_buf451_buf451d_i->acquire(*window_buf451_buf451d_i, LOCK_28_6_0_3936, LOCK_28_6_1_5952, 1-index);
    window_buf452_buf452d_i->setData(*window_buf452_buf452d_i, (float*)buf452, (float*)buf452d, 1-index, 0);
    window_buf452_buf452d_i->acquire(*window_buf452_buf452d_i, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    window_buf473_buf473d_o->setData(*window_buf473_buf473d_o, (float*)buf473, (float*)buf473d, 1-index, 0);
    window_buf473_buf473d_o->acquire(*window_buf473_buf473d_o, LOCK_29_7_0_8032, LOCK_29_7_1_0, 1-index);
    window_buf474_buf474d_o->setData(*window_buf474_buf474d_o, (float*)buf474, (float*)buf474d, 1-index, 0);
    window_buf474_buf474d_o->acquire(*window_buf474_buf474d_o, LOCK_29_7_2_0, LOCK_29_7_3_0, 1-index);
    orthogonalize<32>(window_buf451_buf451d_i[0],window_buf452_buf452d_i[0],window_buf473_buf473d_o[0],window_buf474_buf474d_o[0]);
    window_buf451_buf451d_i->release(*window_buf451_buf451d_i, LOCK_28_6_0_3936, LOCK_28_6_1_5952, 1-index);
    window_buf452_buf452d_i->release(*window_buf452_buf452d_i, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    window_buf473_buf473d_o->release(*window_buf473_buf473d_o, LOCK_29_7_0_8032, LOCK_29_7_1_0, 1-index);
    window_buf474_buf474d_o->release(*window_buf474_buf474d_o, LOCK_29_7_2_0, LOCK_29_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_6_bounds > 0)
      --proc_29_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}