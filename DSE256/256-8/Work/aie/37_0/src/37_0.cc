// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/37_0/src/37_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_36_0_0_0 16
#define LOCK_36_0_1_0 17
#define LOCK_37_0_0_0 48
#define LOCK_37_0_1_0 49
#define LOCK_37_1_0_7136 32
#define LOCK_37_1_1_0 33
#define LOCK_37_1_2_0 34
#define LOCK_37_1_3_0 35

// Declare shared memory buffers
v4float buf475dr[65];
v4float buf475r[65];
v4float buf477dr[65];
v4float buf477r[65];
v4float buf491[65];
v4float buf491d[65];
v4float buf493[65];
v4float buf493d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf475r_buf475dr_i[1] = {{(float*)buf475r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf477r_buf477dr_i[1] = {{(float*)buf477r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf491_buf491d_o[1] = {{(float*)buf491, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf493_buf493d_o[1] = {{(float*)buf493, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_37_0_bounds = sync_buffer[1];

  while (proc_37_0_bounds)
  {

    // Kernel call : i236:orthogonalize<256>
    window_buf475r_buf475dr_i->setData(*window_buf475r_buf475dr_i, (float*)buf475r, (float*)buf475dr, 1-index, 0);
    window_buf475r_buf475dr_i->acquire(*window_buf475r_buf475dr_i, LOCK_36_0_0_0, LOCK_36_0_1_0, 1-index);
    window_buf477r_buf477dr_i->setData(*window_buf477r_buf477dr_i, (float*)buf477r, (float*)buf477dr, 1-index, 0);
    window_buf477r_buf477dr_i->acquire(*window_buf477r_buf477dr_i, LOCK_37_0_0_0, LOCK_37_0_1_0, 1-index);
    window_buf491_buf491d_o->setData(*window_buf491_buf491d_o, (float*)buf491, (float*)buf491d, 1-index, 0);
    window_buf491_buf491d_o->acquire(*window_buf491_buf491d_o, LOCK_37_1_0_7136, LOCK_37_1_1_0, 1-index);
    window_buf493_buf493d_o->setData(*window_buf493_buf493d_o, (float*)buf493, (float*)buf493d, 1-index, 0);
    window_buf493_buf493d_o->acquire(*window_buf493_buf493d_o, LOCK_37_1_2_0, LOCK_37_1_3_0, 1-index);
    orthogonalize<256>(window_buf475r_buf475dr_i[0],window_buf477r_buf477dr_i[0],window_buf491_buf491d_o[0],window_buf493_buf493d_o[0]);
    window_buf475r_buf475dr_i->release(*window_buf475r_buf475dr_i, LOCK_36_0_0_0, LOCK_36_0_1_0, 1-index);
    window_buf477r_buf477dr_i->release(*window_buf477r_buf477dr_i, LOCK_37_0_0_0, LOCK_37_0_1_0, 1-index);
    window_buf491_buf491d_o->release(*window_buf491_buf491d_o, LOCK_37_1_0_7136, LOCK_37_1_1_0, 1-index);
    window_buf493_buf493d_o->release(*window_buf493_buf493d_o, LOCK_37_1_2_0, LOCK_37_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_37_0_bounds > 0)
      --proc_37_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}