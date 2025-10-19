// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/38_0/src/38_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_38_0_0_0 48
#define LOCK_38_0_1_0 49
#define LOCK_37_0_2_0 18
#define LOCK_37_0_3_0 19
#define LOCK_38_1_0_7136 32
#define LOCK_38_1_1_0 33
#define LOCK_38_1_2_0 34
#define LOCK_38_1_3_0 35

// Declare shared memory buffers
v4float buf473dr[65];
v4float buf473r[65];
v4float buf478dr[65];
v4float buf478r[65];
v4float buf489[65];
v4float buf489d[65];
v4float buf494[65];
v4float buf494d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf473r_buf473dr_i[1] = {{(float*)buf473r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf478r_buf478dr_i[1] = {{(float*)buf478r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf489_buf489d_o[1] = {{(float*)buf489, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf494_buf494d_o[1] = {{(float*)buf494, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_38_0_bounds = sync_buffer[1];

  while (proc_38_0_bounds)
  {

    // Kernel call : i237:orthogonalize<256>
    window_buf473r_buf473dr_i->setData(*window_buf473r_buf473dr_i, (float*)buf473r, (float*)buf473dr, 1-index, 0);
    window_buf473r_buf473dr_i->acquire(*window_buf473r_buf473dr_i, LOCK_38_0_0_0, LOCK_38_0_1_0, 1-index);
    window_buf478r_buf478dr_i->setData(*window_buf478r_buf478dr_i, (float*)buf478r, (float*)buf478dr, 1-index, 0);
    window_buf478r_buf478dr_i->acquire(*window_buf478r_buf478dr_i, LOCK_37_0_2_0, LOCK_37_0_3_0, 1-index);
    window_buf489_buf489d_o->setData(*window_buf489_buf489d_o, (float*)buf489, (float*)buf489d, 1-index, 0);
    window_buf489_buf489d_o->acquire(*window_buf489_buf489d_o, LOCK_38_1_0_7136, LOCK_38_1_1_0, 1-index);
    window_buf494_buf494d_o->setData(*window_buf494_buf494d_o, (float*)buf494, (float*)buf494d, 1-index, 0);
    window_buf494_buf494d_o->acquire(*window_buf494_buf494d_o, LOCK_38_1_2_0, LOCK_38_1_3_0, 1-index);
    orthogonalize<256>(window_buf473r_buf473dr_i[0],window_buf478r_buf478dr_i[0],window_buf489_buf489d_o[0],window_buf494_buf494d_o[0]);
    window_buf473r_buf473dr_i->release(*window_buf473r_buf473dr_i, LOCK_38_0_0_0, LOCK_38_0_1_0, 1-index);
    window_buf478r_buf478dr_i->release(*window_buf478r_buf478dr_i, LOCK_37_0_2_0, LOCK_37_0_3_0, 1-index);
    window_buf489_buf489d_o->release(*window_buf489_buf489d_o, LOCK_38_1_0_7136, LOCK_38_1_1_0, 1-index);
    window_buf494_buf494d_o->release(*window_buf494_buf494d_o, LOCK_38_1_2_0, LOCK_38_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_38_0_bounds > 0)
      --proc_38_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}