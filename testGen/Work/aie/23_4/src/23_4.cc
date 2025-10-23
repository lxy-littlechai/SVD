// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/23_4/src/23_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_4_0_8032 16
#define LOCK_22_4_1_0 17
#define LOCK_23_4_0_0 48
#define LOCK_23_4_1_0 49
#define LOCK_23_3_0_8032 0
#define LOCK_23_3_1_0 1
#define LOCK_23_3_2_0 2
#define LOCK_23_3_3_0 3

// Declare shared memory buffers
v4float buf230[9];
v4float buf230d[9];
v4float buf241[9];
v4float buf241d[9];
v4float buf252[9];
v4float buf252d[9];
v4float buf263[9];
v4float buf263d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230_buf230d_i[1] = {{(float*)buf230, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf241_buf241d_i[1] = {{(float*)buf241, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf252_buf252d_o[1] = {{(float*)buf252, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf263_buf263d_o[1] = {{(float*)buf263, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_4_bounds = sync_buffer[1];

  while (proc_23_4_bounds)
  {

    // Kernel call : i120:orthogonalize<32>
    window_buf230_buf230d_i->setData(*window_buf230_buf230d_i, (float*)buf230, (float*)buf230d, 1-index, 0);
    window_buf230_buf230d_i->acquire(*window_buf230_buf230d_i, LOCK_22_4_0_8032, LOCK_22_4_1_0, 1-index);
    window_buf241_buf241d_i->setData(*window_buf241_buf241d_i, (float*)buf241, (float*)buf241d, 1-index, 0);
    window_buf241_buf241d_i->acquire(*window_buf241_buf241d_i, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf252_buf252d_o->setData(*window_buf252_buf252d_o, (float*)buf252, (float*)buf252d, 1-index, 0);
    window_buf252_buf252d_o->acquire(*window_buf252_buf252d_o, LOCK_23_3_0_8032, LOCK_23_3_1_0, 1-index);
    window_buf263_buf263d_o->setData(*window_buf263_buf263d_o, (float*)buf263, (float*)buf263d, 1-index, 0);
    window_buf263_buf263d_o->acquire(*window_buf263_buf263d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    orthogonalize<32>(window_buf230_buf230d_i[0],window_buf241_buf241d_i[0],window_buf252_buf252d_o[0],window_buf263_buf263d_o[0]);
    window_buf230_buf230d_i->release(*window_buf230_buf230d_i, LOCK_22_4_0_8032, LOCK_22_4_1_0, 1-index);
    window_buf241_buf241d_i->release(*window_buf241_buf241d_i, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf252_buf252d_o->release(*window_buf252_buf252d_o, LOCK_23_3_0_8032, LOCK_23_3_1_0, 1-index);
    window_buf263_buf263d_o->release(*window_buf263_buf263d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_4_bounds > 0)
      --proc_23_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}