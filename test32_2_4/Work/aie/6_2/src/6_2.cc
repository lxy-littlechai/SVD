// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/6_2/src/6_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_2_0_0 16
#define LOCK_5_2_1_0 17
#define LOCK_6_2_2_0 50
#define LOCK_6_2_3_0 51
#define LOCK_6_3_0_2080 32
#define LOCK_6_3_1_0 33
#define LOCK_6_3_2_0 34
#define LOCK_6_3_3_0 35

// Declare shared memory buffers
v4float buf25dr[9];
v4float buf25r[9];
v4float buf26[9];
v4float buf26d[9];
v4float buf29[9];
v4float buf29d[9];
v4float buf30[9];
v4float buf30d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25r_buf25dr_i[1] = {{(float*)buf25r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_i[1] = {{(float*)buf26, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_o[1] = {{(float*)buf29, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_o[1] = {{(float*)buf30, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_2_bounds = sync_buffer[1];

  while (proc_6_2_bounds)
  {

    // Kernel call : i18:orthogonalize<32>
    window_buf25r_buf25dr_i->setData(*window_buf25r_buf25dr_i, (float*)buf25r, (float*)buf25dr, 1-index, 0);
    window_buf25r_buf25dr_i->acquire(*window_buf25r_buf25dr_i, LOCK_5_2_0_0, LOCK_5_2_1_0, 1-index);
    window_buf26_buf26d_i->setData(*window_buf26_buf26d_i, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_i->acquire(*window_buf26_buf26d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf29_buf29d_o->setData(*window_buf29_buf29d_o, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_o->acquire(*window_buf29_buf29d_o, LOCK_6_3_0_2080, LOCK_6_3_1_0, 1-index);
    window_buf30_buf30d_o->setData(*window_buf30_buf30d_o, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_o->acquire(*window_buf30_buf30d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    orthogonalize<32>(window_buf25r_buf25dr_i[0],window_buf26_buf26d_i[0],window_buf29_buf29d_o[0],window_buf30_buf30d_o[0]);
    window_buf25r_buf25dr_i->release(*window_buf25r_buf25dr_i, LOCK_5_2_0_0, LOCK_5_2_1_0, 1-index);
    window_buf26_buf26d_i->release(*window_buf26_buf26d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf29_buf29d_o->release(*window_buf29_buf29d_o, LOCK_6_3_0_2080, LOCK_6_3_1_0, 1-index);
    window_buf30_buf30d_o->release(*window_buf30_buf30d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_2_bounds > 0)
      --proc_6_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}