// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_4/src/11_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_4_0_0 16
#define LOCK_10_4_1_1056 17
#define LOCK_11_4_2_0 50
#define LOCK_11_4_3_0 51
#define LOCK_11_5_0_7136 32
#define LOCK_11_5_1_0 33
#define LOCK_11_5_2_0 34
#define LOCK_11_5_3_0 35

// Declare shared memory buffers
v4float buf163dr[65];
v4float buf163r[65];
v4float buf165[65];
v4float buf165d[65];
v4float buf171[65];
v4float buf171d[65];
v4float buf173[65];
v4float buf173d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163r_buf163dr_i[1] = {{(float*)buf163r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165_buf165d_i[1] = {{(float*)buf165, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171_buf171d_o[1] = {{(float*)buf171, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf173_buf173d_o[1] = {{(float*)buf173, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_4_bounds = sync_buffer[1];

  while (proc_11_4_bounds)
  {

    // Kernel call : i88:orthogonalize<256>
    window_buf163r_buf163dr_i->setData(*window_buf163r_buf163dr_i, (float*)buf163r, (float*)buf163dr, 1-index, 0);
    window_buf163r_buf163dr_i->acquire(*window_buf163r_buf163dr_i, LOCK_10_4_0_0, LOCK_10_4_1_1056, 1-index);
    window_buf165_buf165d_i->setData(*window_buf165_buf165d_i, (float*)buf165, (float*)buf165d, 1-index, 0);
    window_buf165_buf165d_i->acquire(*window_buf165_buf165d_i, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    window_buf171_buf171d_o->setData(*window_buf171_buf171d_o, (float*)buf171, (float*)buf171d, 1-index, 0);
    window_buf171_buf171d_o->acquire(*window_buf171_buf171d_o, LOCK_11_5_0_7136, LOCK_11_5_1_0, 1-index);
    window_buf173_buf173d_o->setData(*window_buf173_buf173d_o, (float*)buf173, (float*)buf173d, 1-index, 0);
    window_buf173_buf173d_o->acquire(*window_buf173_buf173d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    orthogonalize<256>(window_buf163r_buf163dr_i[0],window_buf165_buf165d_i[0],window_buf171_buf171d_o[0],window_buf173_buf173d_o[0]);
    window_buf163r_buf163dr_i->release(*window_buf163r_buf163dr_i, LOCK_10_4_0_0, LOCK_10_4_1_1056, 1-index);
    window_buf165_buf165d_i->release(*window_buf165_buf165d_i, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    window_buf171_buf171d_o->release(*window_buf171_buf171d_o, LOCK_11_5_0_7136, LOCK_11_5_1_0, 1-index);
    window_buf173_buf173d_o->release(*window_buf173_buf173d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_4_bounds > 0)
      --proc_11_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}