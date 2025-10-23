// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_4/src/13_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_4_0_0 16
#define LOCK_12_4_1_0 17
#define LOCK_13_4_0_0 48
#define LOCK_13_4_1_0 49
#define LOCK_13_3_0_3936 0
#define LOCK_13_3_1_2080 1
#define LOCK_13_3_2_0 2
#define LOCK_13_3_3_0 3

// Declare shared memory buffers
v4float buf229dr[9];
v4float buf229r[9];
v4float buf231[9];
v4float buf231d[9];
v4float buf251[9];
v4float buf251d[9];
v4float buf253[9];
v4float buf253d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf229r_buf229dr_i[1] = {{(float*)buf229r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf231_buf231d_i[1] = {{(float*)buf231, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf251_buf251d_o[1] = {{(float*)buf251, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf253_buf253d_o[1] = {{(float*)buf253, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_4_bounds = sync_buffer[1];

  while (proc_13_4_bounds)
  {

    // Kernel call : i110:orthogonalize<32>
    window_buf229r_buf229dr_i->setData(*window_buf229r_buf229dr_i, (float*)buf229r, (float*)buf229dr, 1-index, 0);
    window_buf229r_buf229dr_i->acquire(*window_buf229r_buf229dr_i, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf231_buf231d_i->setData(*window_buf231_buf231d_i, (float*)buf231, (float*)buf231d, 1-index, 0);
    window_buf231_buf231d_i->acquire(*window_buf231_buf231d_i, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf251_buf251d_o->setData(*window_buf251_buf251d_o, (float*)buf251, (float*)buf251d, 1-index, 0);
    window_buf251_buf251d_o->acquire(*window_buf251_buf251d_o, LOCK_13_3_0_3936, LOCK_13_3_1_2080, 1-index);
    window_buf253_buf253d_o->setData(*window_buf253_buf253d_o, (float*)buf253, (float*)buf253d, 1-index, 0);
    window_buf253_buf253d_o->acquire(*window_buf253_buf253d_o, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    orthogonalize<32>(window_buf229r_buf229dr_i[0],window_buf231_buf231d_i[0],window_buf251_buf251d_o[0],window_buf253_buf253d_o[0]);
    window_buf229r_buf229dr_i->release(*window_buf229r_buf229dr_i, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf231_buf231d_i->release(*window_buf231_buf231d_i, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf251_buf251d_o->release(*window_buf251_buf251d_o, LOCK_13_3_0_3936, LOCK_13_3_1_2080, 1-index);
    window_buf253_buf253d_o->release(*window_buf253_buf253d_o, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_4_bounds > 0)
      --proc_13_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}