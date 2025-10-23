// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_3/src/17_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_3_0_8032 16
#define LOCK_17_3_1_0 17
#define LOCK_18_3_2_0 50
#define LOCK_18_3_3_0 51
#define LOCK_17_2_0_8032 0
#define LOCK_17_2_1_0 1
#define LOCK_17_2_2_0 2
#define LOCK_17_2_3_0 3

// Declare shared memory buffers
v4float buf243[9];
v4float buf243d[9];
v4float buf262[9];
v4float buf262d[9];
v4float buf265[9];
v4float buf265d[9];
v4float buf284[9];
v4float buf284d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf243_buf243d_i[1] = {{(float*)buf243, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf262_buf262d_i[1] = {{(float*)buf262, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf265_buf265d_o[1] = {{(float*)buf265, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf284_buf284d_o[1] = {{(float*)buf284, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_3_bounds = sync_buffer[1];

  while (proc_17_3_bounds)
  {

    // Kernel call : i125:orthogonalize<32>
    window_buf243_buf243d_i->setData(*window_buf243_buf243d_i, (float*)buf243, (float*)buf243d, 1-index, 0);
    window_buf243_buf243d_i->acquire(*window_buf243_buf243d_i, LOCK_17_3_0_8032, LOCK_17_3_1_0, 1-index);
    window_buf262_buf262d_i->setData(*window_buf262_buf262d_i, (float*)buf262, (float*)buf262d, 1-index, 0);
    window_buf262_buf262d_i->acquire(*window_buf262_buf262d_i, LOCK_18_3_2_0, LOCK_18_3_3_0, 1-index);
    window_buf265_buf265d_o->setData(*window_buf265_buf265d_o, (float*)buf265, (float*)buf265d, 1-index, 0);
    window_buf265_buf265d_o->acquire(*window_buf265_buf265d_o, LOCK_17_2_0_8032, LOCK_17_2_1_0, 1-index);
    window_buf284_buf284d_o->setData(*window_buf284_buf284d_o, (float*)buf284, (float*)buf284d, 1-index, 0);
    window_buf284_buf284d_o->acquire(*window_buf284_buf284d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    orthogonalize<32>(window_buf243_buf243d_i[0],window_buf262_buf262d_i[0],window_buf265_buf265d_o[0],window_buf284_buf284d_o[0]);
    window_buf243_buf243d_i->release(*window_buf243_buf243d_i, LOCK_17_3_0_8032, LOCK_17_3_1_0, 1-index);
    window_buf262_buf262d_i->release(*window_buf262_buf262d_i, LOCK_18_3_2_0, LOCK_18_3_3_0, 1-index);
    window_buf265_buf265d_o->release(*window_buf265_buf265d_o, LOCK_17_2_0_8032, LOCK_17_2_1_0, 1-index);
    window_buf284_buf284d_o->release(*window_buf284_buf284d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_3_bounds > 0)
      --proc_17_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}