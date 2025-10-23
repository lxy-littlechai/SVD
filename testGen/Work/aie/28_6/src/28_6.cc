// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_6/src/28_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_6_0_0 16
#define LOCK_27_6_1_0 17
#define LOCK_28_6_2_2080 50
#define LOCK_28_6_3_0 51
#define LOCK_28_7_0_8032 32
#define LOCK_28_7_1_0 33
#define LOCK_28_7_2_0 34
#define LOCK_28_7_3_0 35

// Declare shared memory buffers
v4float buf453[9];
v4float buf453d[9];
v4float buf454[9];
v4float buf454d[9];
v4float buf475[9];
v4float buf475d[9];
v4float buf476[9];
v4float buf476d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf453_buf453d_i[1] = {{(float*)buf453, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf454_buf454d_i[1] = {{(float*)buf454, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf475_buf475d_o[1] = {{(float*)buf475, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf476_buf476d_o[1] = {{(float*)buf476, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_6_bounds = sync_buffer[1];

  while (proc_28_6_bounds)
  {

    // Kernel call : i223:orthogonalize<32>
    window_buf453_buf453d_i->setData(*window_buf453_buf453d_i, (float*)buf453, (float*)buf453d, 1-index, 0);
    window_buf453_buf453d_i->acquire(*window_buf453_buf453d_i, LOCK_27_6_0_0, LOCK_27_6_1_0, 1-index);
    window_buf454_buf454d_i->setData(*window_buf454_buf454d_i, (float*)buf454, (float*)buf454d, 1-index, 0);
    window_buf454_buf454d_i->acquire(*window_buf454_buf454d_i, LOCK_28_6_2_2080, LOCK_28_6_3_0, 1-index);
    window_buf475_buf475d_o->setData(*window_buf475_buf475d_o, (float*)buf475, (float*)buf475d, 1-index, 0);
    window_buf475_buf475d_o->acquire(*window_buf475_buf475d_o, LOCK_28_7_0_8032, LOCK_28_7_1_0, 1-index);
    window_buf476_buf476d_o->setData(*window_buf476_buf476d_o, (float*)buf476, (float*)buf476d, 1-index, 0);
    window_buf476_buf476d_o->acquire(*window_buf476_buf476d_o, LOCK_28_7_2_0, LOCK_28_7_3_0, 1-index);
    orthogonalize<32>(window_buf453_buf453d_i[0],window_buf454_buf454d_i[0],window_buf475_buf475d_o[0],window_buf476_buf476d_o[0]);
    window_buf453_buf453d_i->release(*window_buf453_buf453d_i, LOCK_27_6_0_0, LOCK_27_6_1_0, 1-index);
    window_buf454_buf454d_i->release(*window_buf454_buf454d_i, LOCK_28_6_2_2080, LOCK_28_6_3_0, 1-index);
    window_buf475_buf475d_o->release(*window_buf475_buf475d_o, LOCK_28_7_0_8032, LOCK_28_7_1_0, 1-index);
    window_buf476_buf476d_o->release(*window_buf476_buf476d_o, LOCK_28_7_2_0, LOCK_28_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_6_bounds > 0)
      --proc_28_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}