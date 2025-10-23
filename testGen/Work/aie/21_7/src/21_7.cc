// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/21_7/src/21_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_7_0_5984 48
#define LOCK_22_7_1_0 49
#define LOCK_21_7_2_160 18
#define LOCK_21_7_3_704 19
#define LOCK_21_6_0_3936 0
#define LOCK_21_6_1_2080 1
#define LOCK_21_6_2_0 2
#define LOCK_21_6_3_0 3

// Declare shared memory buffers
v4float buf164dr[9];
v4float buf164r[9];
v4float buf170dr[9];
v4float buf170r[9];
v4float buf186[9];
v4float buf186d[9];
v4float buf192[9];
v4float buf192d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf164r_buf164dr_i[1] = {{(float*)buf164r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170r_buf170dr_i[1] = {{(float*)buf170r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf186_buf186d_o[1] = {{(float*)buf186, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf192_buf192d_o[1] = {{(float*)buf192, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_7_bounds = sync_buffer[1];

  while (proc_21_7_bounds)
  {

    // Kernel call : i85:orthogonalize<32>
    window_buf164r_buf164dr_i->setData(*window_buf164r_buf164dr_i, (float*)buf164r, (float*)buf164dr, 1-index, 0);
    window_buf164r_buf164dr_i->acquire(*window_buf164r_buf164dr_i, LOCK_22_7_0_5984, LOCK_22_7_1_0, 1-index);
    window_buf170r_buf170dr_i->setData(*window_buf170r_buf170dr_i, (float*)buf170r, (float*)buf170dr, 1-index, 0);
    window_buf170r_buf170dr_i->acquire(*window_buf170r_buf170dr_i, LOCK_21_7_2_160, LOCK_21_7_3_704, 1-index);
    window_buf186_buf186d_o->setData(*window_buf186_buf186d_o, (float*)buf186, (float*)buf186d, 1-index, 0);
    window_buf186_buf186d_o->acquire(*window_buf186_buf186d_o, LOCK_21_6_0_3936, LOCK_21_6_1_2080, 1-index);
    window_buf192_buf192d_o->setData(*window_buf192_buf192d_o, (float*)buf192, (float*)buf192d, 1-index, 0);
    window_buf192_buf192d_o->acquire(*window_buf192_buf192d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    orthogonalize<32>(window_buf164r_buf164dr_i[0],window_buf170r_buf170dr_i[0],window_buf186_buf186d_o[0],window_buf192_buf192d_o[0]);
    window_buf164r_buf164dr_i->release(*window_buf164r_buf164dr_i, LOCK_22_7_0_5984, LOCK_22_7_1_0, 1-index);
    window_buf170r_buf170dr_i->release(*window_buf170r_buf170dr_i, LOCK_21_7_2_160, LOCK_21_7_3_704, 1-index);
    window_buf186_buf186d_o->release(*window_buf186_buf186d_o, LOCK_21_6_0_3936, LOCK_21_6_1_2080, 1-index);
    window_buf192_buf192d_o->release(*window_buf192_buf192d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_7_bounds > 0)
      --proc_21_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}