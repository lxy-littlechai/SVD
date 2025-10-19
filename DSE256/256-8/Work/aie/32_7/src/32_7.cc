// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_7/src/32_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_6_0_0 0
#define LOCK_32_6_1_0 1
#define LOCK_32_7_2_7136 18
#define LOCK_32_7_3_3776 19
#define LOCK_32_6_2_3136 2
#define LOCK_32_6_3_3136 3
#define LOCK_32_6_4_2080 4
#define LOCK_32_6_5_0 5

// Declare shared memory buffers
v4float buf356dr[65];
v4float buf356r[65];
v4float buf366dr[65];
v4float buf366r[65];
v4float buf372[65];
v4float buf372d[65];
v4float buf382[65];
v4float buf382d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf356r_buf356dr_i[1] = {{(float*)buf356r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf366r_buf366dr_i[1] = {{(float*)buf366r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf372_buf372d_o[1] = {{(float*)buf372, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf382_buf382d_o[1] = {{(float*)buf382, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_7_bounds = sync_buffer[1];

  while (proc_32_7_bounds)
  {

    // Kernel call : i184:orthogonalize<256>
    window_buf356r_buf356dr_i->setData(*window_buf356r_buf356dr_i, (float*)buf356r, (float*)buf356dr, 1-index, 0);
    window_buf356r_buf356dr_i->acquire(*window_buf356r_buf356dr_i, LOCK_32_6_0_0, LOCK_32_6_1_0, 1-index);
    window_buf366r_buf366dr_i->setData(*window_buf366r_buf366dr_i, (float*)buf366r, (float*)buf366dr, 1-index, 0);
    window_buf366r_buf366dr_i->acquire(*window_buf366r_buf366dr_i, LOCK_32_7_2_7136, LOCK_32_7_3_3776, 1-index);
    window_buf372_buf372d_o->setData(*window_buf372_buf372d_o, (float*)buf372, (float*)buf372d, 1-index, 0);
    window_buf372_buf372d_o->acquire(*window_buf372_buf372d_o, LOCK_32_6_2_3136, LOCK_32_6_3_3136, 1-index);
    window_buf382_buf382d_o->setData(*window_buf382_buf382d_o, (float*)buf382, (float*)buf382d, 1-index, 0);
    window_buf382_buf382d_o->acquire(*window_buf382_buf382d_o, LOCK_32_6_4_2080, LOCK_32_6_5_0, 1-index);
    orthogonalize<256>(window_buf356r_buf356dr_i[0],window_buf366r_buf366dr_i[0],window_buf372_buf372d_o[0],window_buf382_buf382d_o[0]);
    window_buf356r_buf356dr_i->release(*window_buf356r_buf356dr_i, LOCK_32_6_0_0, LOCK_32_6_1_0, 1-index);
    window_buf366r_buf366dr_i->release(*window_buf366r_buf366dr_i, LOCK_32_7_2_7136, LOCK_32_7_3_3776, 1-index);
    window_buf372_buf372d_o->release(*window_buf372_buf372d_o, LOCK_32_6_2_3136, LOCK_32_6_3_3136, 1-index);
    window_buf382_buf382d_o->release(*window_buf382_buf382d_o, LOCK_32_6_4_2080, LOCK_32_6_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_7_bounds > 0)
      --proc_32_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}