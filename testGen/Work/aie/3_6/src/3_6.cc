// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/3_6/src/3_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_6_0_0 16
#define LOCK_2_6_1_0 17
#define LOCK_3_6_2_0 50
#define LOCK_3_6_3_0 51
#define LOCK_3_7_0_0 32
#define LOCK_3_7_1_0 33
#define LOCK_3_7_2_0 34
#define LOCK_3_7_3_0 35

// Declare shared memory buffers
v4float buf133[9];
v4float buf133d[9];
v4float buf143[9];
v4float buf143d[9];
v4float buf155[9];
v4float buf155d[9];
v4float buf165[9];
v4float buf165d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf133_buf133d_i[1] = {{(float*)buf133, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf143_buf143d_i[1] = {{(float*)buf143, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155_buf155d_o[1] = {{(float*)buf155, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165_buf165d_o[1] = {{(float*)buf165, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_6_bounds = sync_buffer[1];

  while (proc_3_6_bounds)
  {

    // Kernel call : i68:orthogonalize<32>
    window_buf133_buf133d_i->setData(*window_buf133_buf133d_i, (float*)buf133, (float*)buf133d, 1-index, 0);
    window_buf133_buf133d_i->acquire(*window_buf133_buf133d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf143_buf143d_i->setData(*window_buf143_buf143d_i, (float*)buf143, (float*)buf143d, 1-index, 0);
    window_buf143_buf143d_i->acquire(*window_buf143_buf143d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf155_buf155d_o->setData(*window_buf155_buf155d_o, (float*)buf155, (float*)buf155d, 1-index, 0);
    window_buf155_buf155d_o->acquire(*window_buf155_buf155d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf165_buf165d_o->setData(*window_buf165_buf165d_o, (float*)buf165, (float*)buf165d, 1-index, 0);
    window_buf165_buf165d_o->acquire(*window_buf165_buf165d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    orthogonalize<32>(window_buf133_buf133d_i[0],window_buf143_buf143d_i[0],window_buf155_buf155d_o[0],window_buf165_buf165d_o[0]);
    window_buf133_buf133d_i->release(*window_buf133_buf133d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf143_buf143d_i->release(*window_buf143_buf143d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf155_buf155d_o->release(*window_buf155_buf155d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf165_buf165d_o->release(*window_buf165_buf165d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_6_bounds > 0)
      --proc_3_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}