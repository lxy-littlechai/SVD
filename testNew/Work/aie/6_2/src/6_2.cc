// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/6_2/src/6_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_2_0_0 16
#define LOCK_5_2_1_1056 17
#define LOCK_6_2_2_0 50
#define LOCK_6_2_3_0 51
#define LOCK_6_3_0_7136 32
#define LOCK_6_3_1_0 33
#define LOCK_6_3_2_0 34
#define LOCK_6_3_3_0 35

// Declare shared memory buffers
v4float buf81dr[65];
v4float buf81r[65];
v4float buf83[65];
v4float buf83d[65];
v4float buf89[65];
v4float buf89d[65];
v4float buf91[65];
v4float buf91d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81r_buf81dr_i[1] = {{(float*)buf81r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_i[1] = {{(float*)buf83, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf89_buf89d_o[1] = {{(float*)buf89, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf91_buf91d_o[1] = {{(float*)buf91, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_2_bounds = sync_buffer[1];

  while (proc_6_2_bounds)
  {

    // Kernel call : i44:orthogonalize<256>
    window_buf81r_buf81dr_i->setData(*window_buf81r_buf81dr_i, (float*)buf81r, (float*)buf81dr, 1-index, 0);
    window_buf81r_buf81dr_i->acquire(*window_buf81r_buf81dr_i, LOCK_5_2_0_0, LOCK_5_2_1_1056, 1-index);
    window_buf83_buf83d_i->setData(*window_buf83_buf83d_i, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_i->acquire(*window_buf83_buf83d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf89_buf89d_o->setData(*window_buf89_buf89d_o, (float*)buf89, (float*)buf89d, 1-index, 0);
    window_buf89_buf89d_o->acquire(*window_buf89_buf89d_o, LOCK_6_3_0_7136, LOCK_6_3_1_0, 1-index);
    window_buf91_buf91d_o->setData(*window_buf91_buf91d_o, (float*)buf91, (float*)buf91d, 1-index, 0);
    window_buf91_buf91d_o->acquire(*window_buf91_buf91d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    orthogonalize<256>(window_buf81r_buf81dr_i[0],window_buf83_buf83d_i[0],window_buf89_buf89d_o[0],window_buf91_buf91d_o[0]);
    window_buf81r_buf81dr_i->release(*window_buf81r_buf81dr_i, LOCK_5_2_0_0, LOCK_5_2_1_1056, 1-index);
    window_buf83_buf83d_i->release(*window_buf83_buf83d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf89_buf89d_o->release(*window_buf89_buf89d_o, LOCK_6_3_0_7136, LOCK_6_3_1_0, 1-index);
    window_buf91_buf91d_o->release(*window_buf91_buf91d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
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