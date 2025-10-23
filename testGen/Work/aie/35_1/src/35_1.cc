// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_1/src/35_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_35_1_2_0 18
#define LOCK_35_1_3_0 19
#define LOCK_36_1_0_0 48
#define LOCK_36_1_1_0 49
#define LOCK_35_2_0_0 32
#define LOCK_35_2_1_0 33
#define LOCK_35_2_2_0 34
#define LOCK_35_2_3_0 35

// Declare shared memory buffers
v4float buf345dr[9];
v4float buf345r[9];
v4float buf351[9];
v4float buf351d[9];
v4float buf367[9];
v4float buf367d[9];
v4float buf373[9];
v4float buf373d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf351_buf351d_i[1] = {{(float*)buf351, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf345r_buf345dr_i[1] = {{(float*)buf345r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf373_buf373d_o[1] = {{(float*)buf373, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf367_buf367d_o[1] = {{(float*)buf367, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_1_bounds = sync_buffer[1];

  while (proc_35_1_bounds)
  {

    // Kernel call : i175:orthogonalize<32>
    window_buf351_buf351d_i->setData(*window_buf351_buf351d_i, (float*)buf351, (float*)buf351d, 1-index, 0);
    window_buf351_buf351d_i->acquire(*window_buf351_buf351d_i, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    window_buf345r_buf345dr_i->setData(*window_buf345r_buf345dr_i, (float*)buf345r, (float*)buf345dr, 1-index, 0);
    window_buf345r_buf345dr_i->acquire(*window_buf345r_buf345dr_i, LOCK_36_1_0_0, LOCK_36_1_1_0, 1-index);
    window_buf373_buf373d_o->setData(*window_buf373_buf373d_o, (float*)buf373, (float*)buf373d, 1-index, 0);
    window_buf373_buf373d_o->acquire(*window_buf373_buf373d_o, LOCK_35_2_0_0, LOCK_35_2_1_0, 1-index);
    window_buf367_buf367d_o->setData(*window_buf367_buf367d_o, (float*)buf367, (float*)buf367d, 1-index, 0);
    window_buf367_buf367d_o->acquire(*window_buf367_buf367d_o, LOCK_35_2_2_0, LOCK_35_2_3_0, 1-index);
    orthogonalize<32>(window_buf351_buf351d_i[0],window_buf345r_buf345dr_i[0],window_buf373_buf373d_o[0],window_buf367_buf367d_o[0]);
    window_buf351_buf351d_i->release(*window_buf351_buf351d_i, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    window_buf345r_buf345dr_i->release(*window_buf345r_buf345dr_i, LOCK_36_1_0_0, LOCK_36_1_1_0, 1-index);
    window_buf373_buf373d_o->release(*window_buf373_buf373d_o, LOCK_35_2_0_0, LOCK_35_2_1_0, 1-index);
    window_buf367_buf367d_o->release(*window_buf367_buf367d_o, LOCK_35_2_2_0, LOCK_35_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_1_bounds > 0)
      --proc_35_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}