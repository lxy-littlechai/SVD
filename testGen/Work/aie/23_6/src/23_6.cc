// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_6/src/23_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_6_0_0 16
#define LOCK_22_6_1_0 17
#define LOCK_23_6_0_0 48
#define LOCK_23_6_1_0 49
#define LOCK_23_5_0_8032 0
#define LOCK_23_5_1_0 1
#define LOCK_23_5_2_0 2
#define LOCK_23_5_3_0 3

// Declare shared memory buffers
v4float buf188[9];
v4float buf188d[9];
v4float buf197[9];
v4float buf197d[9];
v4float buf210[9];
v4float buf210d[9];
v4float buf219[9];
v4float buf219d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf188_buf188d_i[1] = {{(float*)buf188, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf197_buf197d_i[1] = {{(float*)buf197, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_o[1] = {{(float*)buf210, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf219_buf219d_o[1] = {{(float*)buf219, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_6_bounds = sync_buffer[1];

  while (proc_23_6_bounds)
  {

    // Kernel call : i98:orthogonalize<32>
    window_buf188_buf188d_i->setData(*window_buf188_buf188d_i, (float*)buf188, (float*)buf188d, 1-index, 0);
    window_buf188_buf188d_i->acquire(*window_buf188_buf188d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf197_buf197d_i->setData(*window_buf197_buf197d_i, (float*)buf197, (float*)buf197d, 1-index, 0);
    window_buf197_buf197d_i->acquire(*window_buf197_buf197d_i, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf210_buf210d_o->setData(*window_buf210_buf210d_o, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_o->acquire(*window_buf210_buf210d_o, LOCK_23_5_0_8032, LOCK_23_5_1_0, 1-index);
    window_buf219_buf219d_o->setData(*window_buf219_buf219d_o, (float*)buf219, (float*)buf219d, 1-index, 0);
    window_buf219_buf219d_o->acquire(*window_buf219_buf219d_o, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    orthogonalize<32>(window_buf188_buf188d_i[0],window_buf197_buf197d_i[0],window_buf210_buf210d_o[0],window_buf219_buf219d_o[0]);
    window_buf188_buf188d_i->release(*window_buf188_buf188d_i, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf197_buf197d_i->release(*window_buf197_buf197d_i, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf210_buf210d_o->release(*window_buf210_buf210d_o, LOCK_23_5_0_8032, LOCK_23_5_1_0, 1-index);
    window_buf219_buf219d_o->release(*window_buf219_buf219d_o, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_6_bounds > 0)
      --proc_23_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}