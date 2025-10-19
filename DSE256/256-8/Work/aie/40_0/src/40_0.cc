// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/40_0/src/40_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_40_0_0_0 48
#define LOCK_40_0_1_0 49
#define LOCK_40_0_2_7136 50
#define LOCK_40_0_3_3776 51
#define LOCK_40_1_0_7136 32
#define LOCK_40_1_1_0 33
#define LOCK_40_1_2_0 34
#define LOCK_40_1_3_0 35

// Declare shared memory buffers
v4float buf469dr[65];
v4float buf469r[65];
v4float buf474dr[65];
v4float buf474r[65];
v4float buf485[65];
v4float buf485d[65];
v4float buf490[65];
v4float buf490d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf469r_buf469dr_i[1] = {{(float*)buf469r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf474r_buf474dr_i[1] = {{(float*)buf474r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf485_buf485d_o[1] = {{(float*)buf485, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf490_buf490d_o[1] = {{(float*)buf490, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_40_0_bounds = sync_buffer[1];

  while (proc_40_0_bounds)
  {

    // Kernel call : i239:orthogonalize<256>
    window_buf469r_buf469dr_i->setData(*window_buf469r_buf469dr_i, (float*)buf469r, (float*)buf469dr, 1-index, 0);
    window_buf469r_buf469dr_i->acquire(*window_buf469r_buf469dr_i, LOCK_40_0_0_0, LOCK_40_0_1_0, 1-index);
    window_buf474r_buf474dr_i->setData(*window_buf474r_buf474dr_i, (float*)buf474r, (float*)buf474dr, 1-index, 0);
    window_buf474r_buf474dr_i->acquire(*window_buf474r_buf474dr_i, LOCK_40_0_2_7136, LOCK_40_0_3_3776, 1-index);
    window_buf485_buf485d_o->setData(*window_buf485_buf485d_o, (float*)buf485, (float*)buf485d, 1-index, 0);
    window_buf485_buf485d_o->acquire(*window_buf485_buf485d_o, LOCK_40_1_0_7136, LOCK_40_1_1_0, 1-index);
    window_buf490_buf490d_o->setData(*window_buf490_buf490d_o, (float*)buf490, (float*)buf490d, 1-index, 0);
    window_buf490_buf490d_o->acquire(*window_buf490_buf490d_o, LOCK_40_1_2_0, LOCK_40_1_3_0, 1-index);
    orthogonalize<256>(window_buf469r_buf469dr_i[0],window_buf474r_buf474dr_i[0],window_buf485_buf485d_o[0],window_buf490_buf490d_o[0]);
    window_buf469r_buf469dr_i->release(*window_buf469r_buf469dr_i, LOCK_40_0_0_0, LOCK_40_0_1_0, 1-index);
    window_buf474r_buf474dr_i->release(*window_buf474r_buf474dr_i, LOCK_40_0_2_7136, LOCK_40_0_3_3776, 1-index);
    window_buf485_buf485d_o->release(*window_buf485_buf485d_o, LOCK_40_1_0_7136, LOCK_40_1_1_0, 1-index);
    window_buf490_buf490d_o->release(*window_buf490_buf490d_o, LOCK_40_1_2_0, LOCK_40_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_40_0_bounds > 0)
      --proc_40_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}