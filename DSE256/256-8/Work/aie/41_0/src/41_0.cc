// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/41_0/src/41_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_41_0_0_0 48
#define LOCK_41_0_1_0 49
#define LOCK_41_0_2_7136 50
#define LOCK_41_0_3_3776 51
#define LOCK_41_1_0_7136 32
#define LOCK_41_1_1_0 33
#define LOCK_41_1_2_0 34
#define LOCK_41_1_3_0 35

// Declare shared memory buffers
v4float buf467dr[65];
v4float buf467r[65];
v4float buf472dr[65];
v4float buf472r[65];
v4float buf483[65];
v4float buf483d[65];
v4float buf488[65];
v4float buf488d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf467r_buf467dr_i[1] = {{(float*)buf467r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf472r_buf472dr_i[1] = {{(float*)buf472r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf483_buf483d_o[1] = {{(float*)buf483, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf488_buf488d_o[1] = {{(float*)buf488, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_41_0_bounds = sync_buffer[1];

  while (proc_41_0_bounds)
  {

    // Kernel call : i240:orthogonalize<256>
    window_buf467r_buf467dr_i->setData(*window_buf467r_buf467dr_i, (float*)buf467r, (float*)buf467dr, 1-index, 0);
    window_buf467r_buf467dr_i->acquire(*window_buf467r_buf467dr_i, LOCK_41_0_0_0, LOCK_41_0_1_0, 1-index);
    window_buf472r_buf472dr_i->setData(*window_buf472r_buf472dr_i, (float*)buf472r, (float*)buf472dr, 1-index, 0);
    window_buf472r_buf472dr_i->acquire(*window_buf472r_buf472dr_i, LOCK_41_0_2_7136, LOCK_41_0_3_3776, 1-index);
    window_buf483_buf483d_o->setData(*window_buf483_buf483d_o, (float*)buf483, (float*)buf483d, 1-index, 0);
    window_buf483_buf483d_o->acquire(*window_buf483_buf483d_o, LOCK_41_1_0_7136, LOCK_41_1_1_0, 1-index);
    window_buf488_buf488d_o->setData(*window_buf488_buf488d_o, (float*)buf488, (float*)buf488d, 1-index, 0);
    window_buf488_buf488d_o->acquire(*window_buf488_buf488d_o, LOCK_41_1_2_0, LOCK_41_1_3_0, 1-index);
    orthogonalize<256>(window_buf467r_buf467dr_i[0],window_buf472r_buf472dr_i[0],window_buf483_buf483d_o[0],window_buf488_buf488d_o[0]);
    window_buf467r_buf467dr_i->release(*window_buf467r_buf467dr_i, LOCK_41_0_0_0, LOCK_41_0_1_0, 1-index);
    window_buf472r_buf472dr_i->release(*window_buf472r_buf472dr_i, LOCK_41_0_2_7136, LOCK_41_0_3_3776, 1-index);
    window_buf483_buf483d_o->release(*window_buf483_buf483d_o, LOCK_41_1_0_7136, LOCK_41_1_1_0, 1-index);
    window_buf488_buf488d_o->release(*window_buf488_buf488d_o, LOCK_41_1_2_0, LOCK_41_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_41_0_bounds > 0)
      --proc_41_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}