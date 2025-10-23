// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_4/src/16_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_4_0_0 16
#define LOCK_15_4_1_0 17
#define LOCK_16_4_2_0 50
#define LOCK_16_4_3_0 51
#define LOCK_16_3_0_8032 0
#define LOCK_16_3_1_0 1
#define LOCK_16_3_2_0 2
#define LOCK_16_3_3_0 3

// Declare shared memory buffers
v4float buf223[9];
v4float buf223d[9];
v4float buf237[9];
v4float buf237d[9];
v4float buf245[9];
v4float buf245d[9];
v4float buf259[9];
v4float buf259d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf223_buf223d_i[1] = {{(float*)buf223, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf237_buf237d_i[1] = {{(float*)buf237, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf245_buf245d_o[1] = {{(float*)buf245, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf259_buf259d_o[1] = {{(float*)buf259, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_4_bounds = sync_buffer[1];

  while (proc_16_4_bounds)
  {

    // Kernel call : i113:orthogonalize<32>
    window_buf223_buf223d_i->setData(*window_buf223_buf223d_i, (float*)buf223, (float*)buf223d, 1-index, 0);
    window_buf223_buf223d_i->acquire(*window_buf223_buf223d_i, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf237_buf237d_i->setData(*window_buf237_buf237d_i, (float*)buf237, (float*)buf237d, 1-index, 0);
    window_buf237_buf237d_i->acquire(*window_buf237_buf237d_i, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    window_buf245_buf245d_o->setData(*window_buf245_buf245d_o, (float*)buf245, (float*)buf245d, 1-index, 0);
    window_buf245_buf245d_o->acquire(*window_buf245_buf245d_o, LOCK_16_3_0_8032, LOCK_16_3_1_0, 1-index);
    window_buf259_buf259d_o->setData(*window_buf259_buf259d_o, (float*)buf259, (float*)buf259d, 1-index, 0);
    window_buf259_buf259d_o->acquire(*window_buf259_buf259d_o, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    orthogonalize<32>(window_buf223_buf223d_i[0],window_buf237_buf237d_i[0],window_buf245_buf245d_o[0],window_buf259_buf259d_o[0]);
    window_buf223_buf223d_i->release(*window_buf223_buf223d_i, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf237_buf237d_i->release(*window_buf237_buf237d_i, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    window_buf245_buf245d_o->release(*window_buf245_buf245d_o, LOCK_16_3_0_8032, LOCK_16_3_1_0, 1-index);
    window_buf259_buf259d_o->release(*window_buf259_buf259d_o, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_4_bounds > 0)
      --proc_16_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}