// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_5/src/27_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_5_0_8032 16
#define LOCK_27_5_1_0 17
#define LOCK_28_5_2_0 50
#define LOCK_28_5_3_0 51
#define LOCK_27_6_0_0 32
#define LOCK_27_6_1_0 33
#define LOCK_27_6_2_0 34
#define LOCK_27_6_3_0 35

// Declare shared memory buffers
v4float buf431[9];
v4float buf431d[9];
v4float buf434[9];
v4float buf434d[9];
v4float buf453[9];
v4float buf453d[9];
v4float buf456[9];
v4float buf456d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf431_buf431d_i[1] = {{(float*)buf431, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf434_buf434d_i[1] = {{(float*)buf434, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf453_buf453d_o[1] = {{(float*)buf453, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf456_buf456d_o[1] = {{(float*)buf456, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_5_bounds = sync_buffer[1];

  while (proc_27_5_bounds)
  {

    // Kernel call : i211:orthogonalize<32>
    window_buf431_buf431d_i->setData(*window_buf431_buf431d_i, (float*)buf431, (float*)buf431d, 1-index, 0);
    window_buf431_buf431d_i->acquire(*window_buf431_buf431d_i, LOCK_27_5_0_8032, LOCK_27_5_1_0, 1-index);
    window_buf434_buf434d_i->setData(*window_buf434_buf434d_i, (float*)buf434, (float*)buf434d, 1-index, 0);
    window_buf434_buf434d_i->acquire(*window_buf434_buf434d_i, LOCK_28_5_2_0, LOCK_28_5_3_0, 1-index);
    window_buf453_buf453d_o->setData(*window_buf453_buf453d_o, (float*)buf453, (float*)buf453d, 1-index, 0);
    window_buf453_buf453d_o->acquire(*window_buf453_buf453d_o, LOCK_27_6_0_0, LOCK_27_6_1_0, 1-index);
    window_buf456_buf456d_o->setData(*window_buf456_buf456d_o, (float*)buf456, (float*)buf456d, 1-index, 0);
    window_buf456_buf456d_o->acquire(*window_buf456_buf456d_o, LOCK_27_6_2_0, LOCK_27_6_3_0, 1-index);
    orthogonalize<32>(window_buf431_buf431d_i[0],window_buf434_buf434d_i[0],window_buf453_buf453d_o[0],window_buf456_buf456d_o[0]);
    window_buf431_buf431d_i->release(*window_buf431_buf431d_i, LOCK_27_5_0_8032, LOCK_27_5_1_0, 1-index);
    window_buf434_buf434d_i->release(*window_buf434_buf434d_i, LOCK_28_5_2_0, LOCK_28_5_3_0, 1-index);
    window_buf453_buf453d_o->release(*window_buf453_buf453d_o, LOCK_27_6_0_0, LOCK_27_6_1_0, 1-index);
    window_buf456_buf456d_o->release(*window_buf456_buf456d_o, LOCK_27_6_2_0, LOCK_27_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_5_bounds > 0)
      --proc_27_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}