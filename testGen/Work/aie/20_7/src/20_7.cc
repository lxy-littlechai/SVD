// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_7/src/20_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_7_0_0 48
#define LOCK_21_7_1_0 49
#define LOCK_20_7_2_160 18
#define LOCK_20_7_3_704 19
#define LOCK_20_6_0_0 0
#define LOCK_20_6_1_0 1
#define LOCK_20_6_2_0 2
#define LOCK_20_6_3_0 3

// Declare shared memory buffers
v4float buf162dr[9];
v4float buf162r[9];
v4float buf172dr[9];
v4float buf172r[9];
v4float buf184[9];
v4float buf184d[9];
v4float buf194[9];
v4float buf194d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf162r_buf162dr_i[1] = {{(float*)buf162r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172r_buf172dr_i[1] = {{(float*)buf172r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf184_buf184d_o[1] = {{(float*)buf184, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf194_buf194d_o[1] = {{(float*)buf194, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_7_bounds = sync_buffer[1];

  while (proc_20_7_bounds)
  {

    // Kernel call : i84:orthogonalize<32>
    window_buf162r_buf162dr_i->setData(*window_buf162r_buf162dr_i, (float*)buf162r, (float*)buf162dr, 1-index, 0);
    window_buf162r_buf162dr_i->acquire(*window_buf162r_buf162dr_i, LOCK_21_7_0_0, LOCK_21_7_1_0, 1-index);
    window_buf172r_buf172dr_i->setData(*window_buf172r_buf172dr_i, (float*)buf172r, (float*)buf172dr, 1-index, 0);
    window_buf172r_buf172dr_i->acquire(*window_buf172r_buf172dr_i, LOCK_20_7_2_160, LOCK_20_7_3_704, 1-index);
    window_buf184_buf184d_o->setData(*window_buf184_buf184d_o, (float*)buf184, (float*)buf184d, 1-index, 0);
    window_buf184_buf184d_o->acquire(*window_buf184_buf184d_o, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf194_buf194d_o->setData(*window_buf194_buf194d_o, (float*)buf194, (float*)buf194d, 1-index, 0);
    window_buf194_buf194d_o->acquire(*window_buf194_buf194d_o, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    orthogonalize<32>(window_buf162r_buf162dr_i[0],window_buf172r_buf172dr_i[0],window_buf184_buf184d_o[0],window_buf194_buf194d_o[0]);
    window_buf162r_buf162dr_i->release(*window_buf162r_buf162dr_i, LOCK_21_7_0_0, LOCK_21_7_1_0, 1-index);
    window_buf172r_buf172dr_i->release(*window_buf172r_buf172dr_i, LOCK_20_7_2_160, LOCK_20_7_3_704, 1-index);
    window_buf184_buf184d_o->release(*window_buf184_buf184d_o, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf194_buf194d_o->release(*window_buf194_buf194d_o, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_7_bounds > 0)
      --proc_20_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}