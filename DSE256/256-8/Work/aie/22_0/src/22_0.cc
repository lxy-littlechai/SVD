// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/22_0/src/22_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_0_0_0 16
#define LOCK_21_0_1_0 17
#define LOCK_21_0_2_7136 18
#define LOCK_21_0_3_3776 19
#define LOCK_22_1_0_3136 32
#define LOCK_22_1_1_7136 33
#define LOCK_22_1_2_7136 34
#define LOCK_22_1_3_1056 35

// Declare shared memory buffers
v4float buf231dr[65];
v4float buf231r[65];
v4float buf232dr[65];
v4float buf232r[65];
v4float buf247[65];
v4float buf247d[65];
v4float buf248[65];
v4float buf248d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf231r_buf231dr_i[1] = {{(float*)buf231r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232r_buf232dr_i[1] = {{(float*)buf232r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_o[1] = {{(float*)buf247, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf248_buf248d_o[1] = {{(float*)buf248, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_0_bounds = sync_buffer[1];

  while (proc_22_0_bounds)
  {

    // Kernel call : i115:orthogonalize<256>
    window_buf231r_buf231dr_i->setData(*window_buf231r_buf231dr_i, (float*)buf231r, (float*)buf231dr, 1-index, 0);
    window_buf231r_buf231dr_i->acquire(*window_buf231r_buf231dr_i, LOCK_21_0_0_0, LOCK_21_0_1_0, 1-index);
    window_buf232r_buf232dr_i->setData(*window_buf232r_buf232dr_i, (float*)buf232r, (float*)buf232dr, 1-index, 0);
    window_buf232r_buf232dr_i->acquire(*window_buf232r_buf232dr_i, LOCK_21_0_2_7136, LOCK_21_0_3_3776, 1-index);
    window_buf247_buf247d_o->setData(*window_buf247_buf247d_o, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_o->acquire(*window_buf247_buf247d_o, LOCK_22_1_0_3136, LOCK_22_1_1_7136, 1-index);
    window_buf248_buf248d_o->setData(*window_buf248_buf248d_o, (float*)buf248, (float*)buf248d, 1-index, 0);
    window_buf248_buf248d_o->acquire(*window_buf248_buf248d_o, LOCK_22_1_2_7136, LOCK_22_1_3_1056, 1-index);
    orthogonalize<256>(window_buf231r_buf231dr_i[0],window_buf232r_buf232dr_i[0],window_buf247_buf247d_o[0],window_buf248_buf248d_o[0]);
    window_buf231r_buf231dr_i->release(*window_buf231r_buf231dr_i, LOCK_21_0_0_0, LOCK_21_0_1_0, 1-index);
    window_buf232r_buf232dr_i->release(*window_buf232r_buf232dr_i, LOCK_21_0_2_7136, LOCK_21_0_3_3776, 1-index);
    window_buf247_buf247d_o->release(*window_buf247_buf247d_o, LOCK_22_1_0_3136, LOCK_22_1_1_7136, 1-index);
    window_buf248_buf248d_o->release(*window_buf248_buf248d_o, LOCK_22_1_2_7136, LOCK_22_1_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_0_bounds > 0)
      --proc_22_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}