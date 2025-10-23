// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_5/src/18_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_5_2_8032 18
#define LOCK_18_5_3_0 19
#define LOCK_19_5_0_0 48
#define LOCK_19_5_1_0 49
#define LOCK_18_4_0_0 0
#define LOCK_18_4_1_0 1
#define LOCK_18_4_2_0 2
#define LOCK_18_4_3_0 3

// Declare shared memory buffers
v4float buf200[9];
v4float buf200d[9];
v4float buf218[9];
v4float buf218d[9];
v4float buf222[9];
v4float buf222d[9];
v4float buf240[9];
v4float buf240d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_i[1] = {{(float*)buf200, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_i[1] = {{(float*)buf218, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf222_buf222d_o[1] = {{(float*)buf222, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_o[1] = {{(float*)buf240, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_5_bounds = sync_buffer[1];

  while (proc_18_5_bounds)
  {

    // Kernel call : i104:orthogonalize<32>
    window_buf200_buf200d_i->setData(*window_buf200_buf200d_i, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_i->acquire(*window_buf200_buf200d_i, LOCK_18_5_2_8032, LOCK_18_5_3_0, 1-index);
    window_buf218_buf218d_i->setData(*window_buf218_buf218d_i, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_i->acquire(*window_buf218_buf218d_i, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    window_buf222_buf222d_o->setData(*window_buf222_buf222d_o, (float*)buf222, (float*)buf222d, 1-index, 0);
    window_buf222_buf222d_o->acquire(*window_buf222_buf222d_o, LOCK_18_4_0_0, LOCK_18_4_1_0, 1-index);
    window_buf240_buf240d_o->setData(*window_buf240_buf240d_o, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_o->acquire(*window_buf240_buf240d_o, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    orthogonalize<32>(window_buf200_buf200d_i[0],window_buf218_buf218d_i[0],window_buf222_buf222d_o[0],window_buf240_buf240d_o[0]);
    window_buf200_buf200d_i->release(*window_buf200_buf200d_i, LOCK_18_5_2_8032, LOCK_18_5_3_0, 1-index);
    window_buf218_buf218d_i->release(*window_buf218_buf218d_i, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    window_buf222_buf222d_o->release(*window_buf222_buf222d_o, LOCK_18_4_0_0, LOCK_18_4_1_0, 1-index);
    window_buf240_buf240d_o->release(*window_buf240_buf240d_o, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_5_bounds > 0)
      --proc_18_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}