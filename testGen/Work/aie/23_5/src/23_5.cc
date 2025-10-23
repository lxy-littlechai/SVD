// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_5/src/23_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_5_2_0 18
#define LOCK_23_5_3_0 19
#define LOCK_24_5_0_0 48
#define LOCK_24_5_1_0 49
#define LOCK_23_4_0_0 0
#define LOCK_23_4_1_0 1
#define LOCK_23_4_2_0 2
#define LOCK_23_4_3_0 3

// Declare shared memory buffers
v4float buf207dr[9];
v4float buf207r[9];
v4float buf219[9];
v4float buf219d[9];
v4float buf229[9];
v4float buf229d[9];
v4float buf241[9];
v4float buf241d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf219_buf219d_i[1] = {{(float*)buf219, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207r_buf207dr_i[1] = {{(float*)buf207r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf241_buf241d_o[1] = {{(float*)buf241, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf229_buf229d_o[1] = {{(float*)buf229, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_5_bounds = sync_buffer[1];

  while (proc_23_5_bounds)
  {

    // Kernel call : i109:orthogonalize<32>
    window_buf219_buf219d_i->setData(*window_buf219_buf219d_i, (float*)buf219, (float*)buf219d, 1-index, 0);
    window_buf219_buf219d_i->acquire(*window_buf219_buf219d_i, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    window_buf207r_buf207dr_i->setData(*window_buf207r_buf207dr_i, (float*)buf207r, (float*)buf207dr, 1-index, 0);
    window_buf207r_buf207dr_i->acquire(*window_buf207r_buf207dr_i, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf241_buf241d_o->setData(*window_buf241_buf241d_o, (float*)buf241, (float*)buf241d, 1-index, 0);
    window_buf241_buf241d_o->acquire(*window_buf241_buf241d_o, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf229_buf229d_o->setData(*window_buf229_buf229d_o, (float*)buf229, (float*)buf229d, 1-index, 0);
    window_buf229_buf229d_o->acquire(*window_buf229_buf229d_o, LOCK_23_4_2_0, LOCK_23_4_3_0, 1-index);
    orthogonalize<32>(window_buf219_buf219d_i[0],window_buf207r_buf207dr_i[0],window_buf241_buf241d_o[0],window_buf229_buf229d_o[0]);
    window_buf219_buf219d_i->release(*window_buf219_buf219d_i, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    window_buf207r_buf207dr_i->release(*window_buf207r_buf207dr_i, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf241_buf241d_o->release(*window_buf241_buf241d_o, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf229_buf229d_o->release(*window_buf229_buf229d_o, LOCK_23_4_2_0, LOCK_23_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_5_bounds > 0)
      --proc_23_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}