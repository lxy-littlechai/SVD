// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_3/src/33_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_3_0_3936 16
#define LOCK_33_3_1_2080 17
#define LOCK_34_3_2_0 50
#define LOCK_34_3_3_0 51
#define LOCK_33_4_0_3936 32
#define LOCK_33_4_1_2080 33
#define LOCK_33_4_2_0 34
#define LOCK_33_4_3_0 35

// Declare shared memory buffers
v4float buf374[9];
v4float buf374d[9];
v4float buf380[9];
v4float buf380d[9];
v4float buf396[9];
v4float buf396d[9];
v4float buf402[9];
v4float buf402d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf374_buf374d_i[1] = {{(float*)buf374, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf380_buf380d_i[1] = {{(float*)buf380, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf396_buf396d_o[1] = {{(float*)buf396, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf402_buf402d_o[1] = {{(float*)buf402, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_3_bounds = sync_buffer[1];

  while (proc_33_3_bounds)
  {

    // Kernel call : i195:orthogonalize<32>
    window_buf374_buf374d_i->setData(*window_buf374_buf374d_i, (float*)buf374, (float*)buf374d, 1-index, 0);
    window_buf374_buf374d_i->acquire(*window_buf374_buf374d_i, LOCK_33_3_0_3936, LOCK_33_3_1_2080, 1-index);
    window_buf380_buf380d_i->setData(*window_buf380_buf380d_i, (float*)buf380, (float*)buf380d, 1-index, 0);
    window_buf380_buf380d_i->acquire(*window_buf380_buf380d_i, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    window_buf396_buf396d_o->setData(*window_buf396_buf396d_o, (float*)buf396, (float*)buf396d, 1-index, 0);
    window_buf396_buf396d_o->acquire(*window_buf396_buf396d_o, LOCK_33_4_0_3936, LOCK_33_4_1_2080, 1-index);
    window_buf402_buf402d_o->setData(*window_buf402_buf402d_o, (float*)buf402, (float*)buf402d, 1-index, 0);
    window_buf402_buf402d_o->acquire(*window_buf402_buf402d_o, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    orthogonalize<32>(window_buf374_buf374d_i[0],window_buf380_buf380d_i[0],window_buf396_buf396d_o[0],window_buf402_buf402d_o[0]);
    window_buf374_buf374d_i->release(*window_buf374_buf374d_i, LOCK_33_3_0_3936, LOCK_33_3_1_2080, 1-index);
    window_buf380_buf380d_i->release(*window_buf380_buf380d_i, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    window_buf396_buf396d_o->release(*window_buf396_buf396d_o, LOCK_33_4_0_3936, LOCK_33_4_1_2080, 1-index);
    window_buf402_buf402d_o->release(*window_buf402_buf402d_o, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_3_bounds > 0)
      --proc_33_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}