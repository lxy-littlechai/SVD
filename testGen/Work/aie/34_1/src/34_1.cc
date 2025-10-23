// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_1/src/34_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_1_4_7872 20
#define LOCK_34_1_5_320 21
#define LOCK_35_1_0_8032 48
#define LOCK_35_1_1_0 49
#define LOCK_34_2_0_0 32
#define LOCK_34_2_1_0 33
#define LOCK_34_2_2_0 34
#define LOCK_34_2_3_0 35

// Declare shared memory buffers
v4float buf334[9];
v4float buf334d[9];
v4float buf336[9];
v4float buf336d[9];
v4float buf356[9];
v4float buf356d[9];
v4float buf358[9];
v4float buf358d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf334_buf334d_i[1] = {{(float*)buf334, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf336_buf336d_i[1] = {{(float*)buf336, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf356_buf356d_o[1] = {{(float*)buf356, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf358_buf358d_o[1] = {{(float*)buf358, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_1_bounds = sync_buffer[1];

  while (proc_34_1_bounds)
  {

    // Kernel call : i174:orthogonalize<32>
    window_buf334_buf334d_i->setData(*window_buf334_buf334d_i, (float*)buf334, (float*)buf334d, 1-index, 0);
    window_buf334_buf334d_i->acquire(*window_buf334_buf334d_i, LOCK_34_1_4_7872, LOCK_34_1_5_320, 1-index);
    window_buf336_buf336d_i->setData(*window_buf336_buf336d_i, (float*)buf336, (float*)buf336d, 1-index, 0);
    window_buf336_buf336d_i->acquire(*window_buf336_buf336d_i, LOCK_35_1_0_8032, LOCK_35_1_1_0, 1-index);
    window_buf356_buf356d_o->setData(*window_buf356_buf356d_o, (float*)buf356, (float*)buf356d, 1-index, 0);
    window_buf356_buf356d_o->acquire(*window_buf356_buf356d_o, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf358_buf358d_o->setData(*window_buf358_buf358d_o, (float*)buf358, (float*)buf358d, 1-index, 0);
    window_buf358_buf358d_o->acquire(*window_buf358_buf358d_o, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    orthogonalize<32>(window_buf334_buf334d_i[0],window_buf336_buf336d_i[0],window_buf356_buf356d_o[0],window_buf358_buf358d_o[0]);
    window_buf334_buf334d_i->release(*window_buf334_buf334d_i, LOCK_34_1_4_7872, LOCK_34_1_5_320, 1-index);
    window_buf336_buf336d_i->release(*window_buf336_buf336d_i, LOCK_35_1_0_8032, LOCK_35_1_1_0, 1-index);
    window_buf356_buf356d_o->release(*window_buf356_buf356d_o, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf358_buf358d_o->release(*window_buf358_buf358d_o, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_1_bounds > 0)
      --proc_34_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}