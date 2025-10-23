// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_6/src/1_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_6_0_0 16
#define LOCK_0_6_1_0 17
#define LOCK_1_6_2_0 50
#define LOCK_1_6_3_0 51
#define LOCK_1_7_0_0 32
#define LOCK_1_7_1_0 33
#define LOCK_1_7_2_0 34
#define LOCK_1_7_3_0 35

// Declare shared memory buffers
v4float buf53dr[65];
v4float buf53r[65];
v4float buf54[65];
v4float buf54d[65];
v4float buf61[65];
v4float buf61d[65];
v4float buf62[65];
v4float buf62d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53r_buf53dr_i[1] = {{(float*)buf53r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_i[1] = {{(float*)buf54, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_o[1] = {{(float*)buf61, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf62_buf62d_o[1] = {{(float*)buf62, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_6_bounds = sync_buffer[1];

  while (proc_1_6_bounds)
  {

    // Kernel call : i24:orthogonalize<256>
    window_buf53r_buf53dr_i->setData(*window_buf53r_buf53dr_i, (float*)buf53r, (float*)buf53dr, 1-index, 0);
    window_buf53r_buf53dr_i->acquire(*window_buf53r_buf53dr_i, LOCK_0_6_0_0, LOCK_0_6_1_0, 1-index);
    window_buf54_buf54d_i->setData(*window_buf54_buf54d_i, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_i->acquire(*window_buf54_buf54d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf61_buf61d_o->setData(*window_buf61_buf61d_o, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_o->acquire(*window_buf61_buf61d_o, LOCK_1_7_0_0, LOCK_1_7_1_0, 1-index);
    window_buf62_buf62d_o->setData(*window_buf62_buf62d_o, (float*)buf62, (float*)buf62d, 1-index, 0);
    window_buf62_buf62d_o->acquire(*window_buf62_buf62d_o, LOCK_1_7_2_0, LOCK_1_7_3_0, 1-index);
    orthogonalize<256>(window_buf53r_buf53dr_i[0],window_buf54_buf54d_i[0],window_buf61_buf61d_o[0],window_buf62_buf62d_o[0]);
    window_buf53r_buf53dr_i->release(*window_buf53r_buf53dr_i, LOCK_0_6_0_0, LOCK_0_6_1_0, 1-index);
    window_buf54_buf54d_i->release(*window_buf54_buf54d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf61_buf61d_o->release(*window_buf61_buf61d_o, LOCK_1_7_0_0, LOCK_1_7_1_0, 1-index);
    window_buf62_buf62d_o->release(*window_buf62_buf62d_o, LOCK_1_7_2_0, LOCK_1_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_6_bounds > 0)
      --proc_1_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}