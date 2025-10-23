// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_3/src/14_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_3_2_0 18
#define LOCK_14_3_3_0 19
#define LOCK_15_3_0_0 48
#define LOCK_15_3_1_1056 49
#define LOCK_14_4_0_7136 32
#define LOCK_14_4_1_0 33
#define LOCK_14_4_2_0 34
#define LOCK_14_4_3_0 35

// Declare shared memory buffers
v4float buf155dr[65];
v4float buf155r[65];
v4float buf159[65];
v4float buf159d[65];
v4float buf163[65];
v4float buf163d[65];
v4float buf167[65];
v4float buf167d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159_buf159d_i[1] = {{(float*)buf159, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155r_buf155dr_i[1] = {{(float*)buf155r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167_buf167d_o[1] = {{(float*)buf167, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163_buf163d_o[1] = {{(float*)buf163, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_3_bounds = sync_buffer[1];

  while (proc_14_3_bounds)
  {

    // Kernel call : i87:orthogonalize<256>
    window_buf159_buf159d_i->setData(*window_buf159_buf159d_i, (float*)buf159, (float*)buf159d, 1-index, 0);
    window_buf159_buf159d_i->acquire(*window_buf159_buf159d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf155r_buf155dr_i->setData(*window_buf155r_buf155dr_i, (float*)buf155r, (float*)buf155dr, 1-index, 0);
    window_buf155r_buf155dr_i->acquire(*window_buf155r_buf155dr_i, LOCK_15_3_0_0, LOCK_15_3_1_1056, 1-index);
    window_buf167_buf167d_o->setData(*window_buf167_buf167d_o, (float*)buf167, (float*)buf167d, 1-index, 0);
    window_buf167_buf167d_o->acquire(*window_buf167_buf167d_o, LOCK_14_4_0_7136, LOCK_14_4_1_0, 1-index);
    window_buf163_buf163d_o->setData(*window_buf163_buf163d_o, (float*)buf163, (float*)buf163d, 1-index, 0);
    window_buf163_buf163d_o->acquire(*window_buf163_buf163d_o, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    orthogonalize<256>(window_buf159_buf159d_i[0],window_buf155r_buf155dr_i[0],window_buf167_buf167d_o[0],window_buf163_buf163d_o[0]);
    window_buf159_buf159d_i->release(*window_buf159_buf159d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf155r_buf155dr_i->release(*window_buf155r_buf155dr_i, LOCK_15_3_0_0, LOCK_15_3_1_1056, 1-index);
    window_buf167_buf167d_o->release(*window_buf167_buf167d_o, LOCK_14_4_0_7136, LOCK_14_4_1_0, 1-index);
    window_buf163_buf163d_o->release(*window_buf163_buf163d_o, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_3_bounds > 0)
      --proc_14_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}