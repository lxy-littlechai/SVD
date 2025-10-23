// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/18_1/src/18_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_1_0_3936 16
#define LOCK_18_1_1_2080 17
#define LOCK_19_1_2_2080 50
#define LOCK_19_1_3_0 51
#define LOCK_18_0_0_8032 0
#define LOCK_18_0_1_0 1
#define LOCK_18_0_2_0 2
#define LOCK_18_0_3_0 3

// Declare shared memory buffers
v4float buf287[9];
v4float buf287d[9];
v4float buf302[9];
v4float buf302d[9];
v4float buf309[9];
v4float buf309d[9];
v4float buf324[9];
v4float buf324d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf287_buf287d_i[1] = {{(float*)buf287, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf302_buf302d_i[1] = {{(float*)buf302, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf309_buf309d_o[1] = {{(float*)buf309, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf324_buf324d_o[1] = {{(float*)buf324, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_1_bounds = sync_buffer[1];

  while (proc_18_1_bounds)
  {

    // Kernel call : i148:orthogonalize<32>
    window_buf287_buf287d_i->setData(*window_buf287_buf287d_i, (float*)buf287, (float*)buf287d, 1-index, 0);
    window_buf287_buf287d_i->acquire(*window_buf287_buf287d_i, LOCK_18_1_0_3936, LOCK_18_1_1_2080, 1-index);
    window_buf302_buf302d_i->setData(*window_buf302_buf302d_i, (float*)buf302, (float*)buf302d, 1-index, 0);
    window_buf302_buf302d_i->acquire(*window_buf302_buf302d_i, LOCK_19_1_2_2080, LOCK_19_1_3_0, 1-index);
    window_buf309_buf309d_o->setData(*window_buf309_buf309d_o, (float*)buf309, (float*)buf309d, 1-index, 0);
    window_buf309_buf309d_o->acquire(*window_buf309_buf309d_o, LOCK_18_0_0_8032, LOCK_18_0_1_0, 1-index);
    window_buf324_buf324d_o->setData(*window_buf324_buf324d_o, (float*)buf324, (float*)buf324d, 1-index, 0);
    window_buf324_buf324d_o->acquire(*window_buf324_buf324d_o, LOCK_18_0_2_0, LOCK_18_0_3_0, 1-index);
    orthogonalize<32>(window_buf287_buf287d_i[0],window_buf302_buf302d_i[0],window_buf309_buf309d_o[0],window_buf324_buf324d_o[0]);
    window_buf287_buf287d_i->release(*window_buf287_buf287d_i, LOCK_18_1_0_3936, LOCK_18_1_1_2080, 1-index);
    window_buf302_buf302d_i->release(*window_buf302_buf302d_i, LOCK_19_1_2_2080, LOCK_19_1_3_0, 1-index);
    window_buf309_buf309d_o->release(*window_buf309_buf309d_o, LOCK_18_0_0_8032, LOCK_18_0_1_0, 1-index);
    window_buf324_buf324d_o->release(*window_buf324_buf324d_o, LOCK_18_0_2_0, LOCK_18_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_1_bounds > 0)
      --proc_18_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}