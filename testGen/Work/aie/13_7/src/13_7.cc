// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_7/src/13_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_7_0_0 16
#define LOCK_13_7_1_0 17
#define LOCK_14_7_0_0 48
#define LOCK_14_7_1_0 49
#define LOCK_13_6_0_0 0
#define LOCK_13_6_1_0 1
#define LOCK_13_6_2_0 2
#define LOCK_13_6_3_0 3

// Declare shared memory buffers
v4float buf159dr[9];
v4float buf159r[9];
v4float buf163dr[9];
v4float buf163r[9];
v4float buf181[9];
v4float buf181d[9];
v4float buf185[9];
v4float buf185d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159r_buf159dr_i[1] = {{(float*)buf159r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163r_buf163dr_i[1] = {{(float*)buf163r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf181_buf181d_o[1] = {{(float*)buf181, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf185_buf185d_o[1] = {{(float*)buf185, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_7_bounds = sync_buffer[1];

  while (proc_13_7_bounds)
  {

    // Kernel call : i77:orthogonalize<32>
    window_buf159r_buf159dr_i->setData(*window_buf159r_buf159dr_i, (float*)buf159r, (float*)buf159dr, 1-index, 0);
    window_buf159r_buf159dr_i->acquire(*window_buf159r_buf159dr_i, LOCK_13_7_0_0, LOCK_13_7_1_0, 1-index);
    window_buf163r_buf163dr_i->setData(*window_buf163r_buf163dr_i, (float*)buf163r, (float*)buf163dr, 1-index, 0);
    window_buf163r_buf163dr_i->acquire(*window_buf163r_buf163dr_i, LOCK_14_7_0_0, LOCK_14_7_1_0, 1-index);
    window_buf181_buf181d_o->setData(*window_buf181_buf181d_o, (float*)buf181, (float*)buf181d, 1-index, 0);
    window_buf181_buf181d_o->acquire(*window_buf181_buf181d_o, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf185_buf185d_o->setData(*window_buf185_buf185d_o, (float*)buf185, (float*)buf185d, 1-index, 0);
    window_buf185_buf185d_o->acquire(*window_buf185_buf185d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    orthogonalize<32>(window_buf159r_buf159dr_i[0],window_buf163r_buf163dr_i[0],window_buf181_buf181d_o[0],window_buf185_buf185d_o[0]);
    window_buf159r_buf159dr_i->release(*window_buf159r_buf159dr_i, LOCK_13_7_0_0, LOCK_13_7_1_0, 1-index);
    window_buf163r_buf163dr_i->release(*window_buf163r_buf163dr_i, LOCK_14_7_0_0, LOCK_14_7_1_0, 1-index);
    window_buf181_buf181d_o->release(*window_buf181_buf181d_o, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf185_buf185d_o->release(*window_buf185_buf185d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_7_bounds > 0)
      --proc_13_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}