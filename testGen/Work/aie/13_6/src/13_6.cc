// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_6/src/13_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_6_2_0 18
#define LOCK_12_6_3_4032 19
#define LOCK_13_6_2_0 50
#define LOCK_13_6_3_0 51
#define LOCK_13_5_0_160 0
#define LOCK_13_5_1_160 1
#define LOCK_13_5_2_0 2
#define LOCK_13_5_3_0 3

// Declare shared memory buffers
v4float buf183dr[9];
v4float buf183r[9];
v4float buf185[9];
v4float buf185d[9];
v4float buf205[9];
v4float buf205d[9];
v4float buf207[9];
v4float buf207d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf183r_buf183dr_i[1] = {{(float*)buf183r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf185_buf185d_i[1] = {{(float*)buf185, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_o[1] = {{(float*)buf205, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207_buf207d_o[1] = {{(float*)buf207, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_6_bounds = sync_buffer[1];

  while (proc_13_6_bounds)
  {

    // Kernel call : i88:orthogonalize<32>
    window_buf183r_buf183dr_i->setData(*window_buf183r_buf183dr_i, (float*)buf183r, (float*)buf183dr, 1-index, 0);
    window_buf183r_buf183dr_i->acquire(*window_buf183r_buf183dr_i, LOCK_12_6_2_0, LOCK_12_6_3_4032, 1-index);
    window_buf185_buf185d_i->setData(*window_buf185_buf185d_i, (float*)buf185, (float*)buf185d, 1-index, 0);
    window_buf185_buf185d_i->acquire(*window_buf185_buf185d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf205_buf205d_o->setData(*window_buf205_buf205d_o, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_o->acquire(*window_buf205_buf205d_o, LOCK_13_5_0_160, LOCK_13_5_1_160, 1-index);
    window_buf207_buf207d_o->setData(*window_buf207_buf207d_o, (float*)buf207, (float*)buf207d, 1-index, 0);
    window_buf207_buf207d_o->acquire(*window_buf207_buf207d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    orthogonalize<32>(window_buf183r_buf183dr_i[0],window_buf185_buf185d_i[0],window_buf205_buf205d_o[0],window_buf207_buf207d_o[0]);
    window_buf183r_buf183dr_i->release(*window_buf183r_buf183dr_i, LOCK_12_6_2_0, LOCK_12_6_3_4032, 1-index);
    window_buf185_buf185d_i->release(*window_buf185_buf185d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf205_buf205d_o->release(*window_buf205_buf205d_o, LOCK_13_5_0_160, LOCK_13_5_1_160, 1-index);
    window_buf207_buf207d_o->release(*window_buf207_buf207d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_6_bounds > 0)
      --proc_13_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}