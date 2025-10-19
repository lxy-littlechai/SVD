// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_0/src/25_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_0_0_0 48
#define LOCK_25_0_1_3584 49
#define LOCK_25_0_2_0 50
#define LOCK_25_0_3_0 51
#define LOCK_25_1_0_3136 32
#define LOCK_25_1_1_7136 33
#define LOCK_25_1_2_7136 34
#define LOCK_25_1_3_1056 35

// Declare shared memory buffers
v4float buf225dr[65];
v4float buf225r[65];
v4float buf226dr[65];
v4float buf226r[65];
v4float buf241[65];
v4float buf241d[65];
v4float buf242[65];
v4float buf242d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf225r_buf225dr_i[1] = {{(float*)buf225r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf226r_buf226dr_i[1] = {{(float*)buf226r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf241_buf241d_o[1] = {{(float*)buf241, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf242_buf242d_o[1] = {{(float*)buf242, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_0_bounds = sync_buffer[1];

  while (proc_25_0_bounds)
  {

    // Kernel call : i118:orthogonalize<256>
    window_buf225r_buf225dr_i->setData(*window_buf225r_buf225dr_i, (float*)buf225r, (float*)buf225dr, 1-index, 0);
    window_buf225r_buf225dr_i->acquire(*window_buf225r_buf225dr_i, LOCK_25_0_0_0, LOCK_25_0_1_3584, 1-index);
    window_buf226r_buf226dr_i->setData(*window_buf226r_buf226dr_i, (float*)buf226r, (float*)buf226dr, 1-index, 0);
    window_buf226r_buf226dr_i->acquire(*window_buf226r_buf226dr_i, LOCK_25_0_2_0, LOCK_25_0_3_0, 1-index);
    window_buf241_buf241d_o->setData(*window_buf241_buf241d_o, (float*)buf241, (float*)buf241d, 1-index, 0);
    window_buf241_buf241d_o->acquire(*window_buf241_buf241d_o, LOCK_25_1_0_3136, LOCK_25_1_1_7136, 1-index);
    window_buf242_buf242d_o->setData(*window_buf242_buf242d_o, (float*)buf242, (float*)buf242d, 1-index, 0);
    window_buf242_buf242d_o->acquire(*window_buf242_buf242d_o, LOCK_25_1_2_7136, LOCK_25_1_3_1056, 1-index);
    orthogonalize<256>(window_buf225r_buf225dr_i[0],window_buf226r_buf226dr_i[0],window_buf241_buf241d_o[0],window_buf242_buf242d_o[0]);
    window_buf225r_buf225dr_i->release(*window_buf225r_buf225dr_i, LOCK_25_0_0_0, LOCK_25_0_1_3584, 1-index);
    window_buf226r_buf226dr_i->release(*window_buf226r_buf226dr_i, LOCK_25_0_2_0, LOCK_25_0_3_0, 1-index);
    window_buf241_buf241d_o->release(*window_buf241_buf241d_o, LOCK_25_1_0_3136, LOCK_25_1_1_7136, 1-index);
    window_buf242_buf242d_o->release(*window_buf242_buf242d_o, LOCK_25_1_2_7136, LOCK_25_1_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_0_bounds > 0)
      --proc_25_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}