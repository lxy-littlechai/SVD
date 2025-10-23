// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_6/src/26_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_6_0_0 16
#define LOCK_25_6_1_0 17
#define LOCK_26_6_2_2080 50
#define LOCK_26_6_3_0 51
#define LOCK_26_7_0_8032 32
#define LOCK_26_7_1_0 33
#define LOCK_26_7_2_0 34
#define LOCK_26_7_3_0 35

// Declare shared memory buffers
v4float buf457[9];
v4float buf457d[9];
v4float buf458[9];
v4float buf458d[9];
v4float buf479[9];
v4float buf479d[9];
v4float buf480[9];
v4float buf480d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf457_buf457d_i[1] = {{(float*)buf457, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf458_buf458d_i[1] = {{(float*)buf458, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf479_buf479d_o[1] = {{(float*)buf479, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf480_buf480d_o[1] = {{(float*)buf480, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_6_bounds = sync_buffer[1];

  while (proc_26_6_bounds)
  {

    // Kernel call : i221:orthogonalize<32>
    window_buf457_buf457d_i->setData(*window_buf457_buf457d_i, (float*)buf457, (float*)buf457d, 1-index, 0);
    window_buf457_buf457d_i->acquire(*window_buf457_buf457d_i, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf458_buf458d_i->setData(*window_buf458_buf458d_i, (float*)buf458, (float*)buf458d, 1-index, 0);
    window_buf458_buf458d_i->acquire(*window_buf458_buf458d_i, LOCK_26_6_2_2080, LOCK_26_6_3_0, 1-index);
    window_buf479_buf479d_o->setData(*window_buf479_buf479d_o, (float*)buf479, (float*)buf479d, 1-index, 0);
    window_buf479_buf479d_o->acquire(*window_buf479_buf479d_o, LOCK_26_7_0_8032, LOCK_26_7_1_0, 1-index);
    window_buf480_buf480d_o->setData(*window_buf480_buf480d_o, (float*)buf480, (float*)buf480d, 1-index, 0);
    window_buf480_buf480d_o->acquire(*window_buf480_buf480d_o, LOCK_26_7_2_0, LOCK_26_7_3_0, 1-index);
    orthogonalize<32>(window_buf457_buf457d_i[0],window_buf458_buf458d_i[0],window_buf479_buf479d_o[0],window_buf480_buf480d_o[0]);
    window_buf457_buf457d_i->release(*window_buf457_buf457d_i, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf458_buf458d_i->release(*window_buf458_buf458d_i, LOCK_26_6_2_2080, LOCK_26_6_3_0, 1-index);
    window_buf479_buf479d_o->release(*window_buf479_buf479d_o, LOCK_26_7_0_8032, LOCK_26_7_1_0, 1-index);
    window_buf480_buf480d_o->release(*window_buf480_buf480d_o, LOCK_26_7_2_0, LOCK_26_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_6_bounds > 0)
      --proc_26_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}