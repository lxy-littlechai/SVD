// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/31_7/src/31_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_7_0_0 48
#define LOCK_32_7_1_0 49
#define LOCK_31_6_0_2080 0
#define LOCK_31_6_1_0 1
#define LOCK_31_6_2_3040 2
#define LOCK_31_6_3_3136 3
#define LOCK_31_6_4_0 4
#define LOCK_31_6_5_0 5

// Declare shared memory buffers
v4float buf354dr[65];
v4float buf354r[65];
v4float buf365dr[65];
v4float buf365r[65];
v4float buf370[65];
v4float buf370d[65];
v4float buf381[65];
v4float buf381d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf354r_buf354dr_i[1] = {{(float*)buf354r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf365r_buf365dr_i[1] = {{(float*)buf365r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf370_buf370d_o[1] = {{(float*)buf370, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf381_buf381d_o[1] = {{(float*)buf381, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_7_bounds = sync_buffer[1];

  while (proc_31_7_bounds)
  {

    // Kernel call : i183:orthogonalize<256>
    window_buf354r_buf354dr_i->setData(*window_buf354r_buf354dr_i, (float*)buf354r, (float*)buf354dr, 1-index, 0);
    window_buf354r_buf354dr_i->acquire(*window_buf354r_buf354dr_i, LOCK_32_7_0_0, LOCK_32_7_1_0, 1-index);
    window_buf365r_buf365dr_i->setData(*window_buf365r_buf365dr_i, (float*)buf365r, (float*)buf365dr, 1-index, 0);
    window_buf365r_buf365dr_i->acquire(*window_buf365r_buf365dr_i, LOCK_31_6_0_2080, LOCK_31_6_1_0, 1-index);
    window_buf370_buf370d_o->setData(*window_buf370_buf370d_o, (float*)buf370, (float*)buf370d, 1-index, 0);
    window_buf370_buf370d_o->acquire(*window_buf370_buf370d_o, LOCK_31_6_2_3040, LOCK_31_6_3_3136, 1-index);
    window_buf381_buf381d_o->setData(*window_buf381_buf381d_o, (float*)buf381, (float*)buf381d, 1-index, 0);
    window_buf381_buf381d_o->acquire(*window_buf381_buf381d_o, LOCK_31_6_4_0, LOCK_31_6_5_0, 1-index);
    orthogonalize<256>(window_buf354r_buf354dr_i[0],window_buf365r_buf365dr_i[0],window_buf370_buf370d_o[0],window_buf381_buf381d_o[0]);
    window_buf354r_buf354dr_i->release(*window_buf354r_buf354dr_i, LOCK_32_7_0_0, LOCK_32_7_1_0, 1-index);
    window_buf365r_buf365dr_i->release(*window_buf365r_buf365dr_i, LOCK_31_6_0_2080, LOCK_31_6_1_0, 1-index);
    window_buf370_buf370d_o->release(*window_buf370_buf370d_o, LOCK_31_6_2_3040, LOCK_31_6_3_3136, 1-index);
    window_buf381_buf381d_o->release(*window_buf381_buf381d_o, LOCK_31_6_4_0, LOCK_31_6_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_7_bounds > 0)
      --proc_31_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}