// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/23_1/src/23_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_1_2_0 18
#define LOCK_23_1_3_0 19
#define LOCK_24_1_0_0 48
#define LOCK_24_1_1_1056 49
#define LOCK_23_2_0_7136 32
#define LOCK_23_2_1_0 33
#define LOCK_23_2_2_0 34
#define LOCK_23_2_3_0 35

// Declare shared memory buffers
v4float buf201dr[65];
v4float buf201r[65];
v4float buf207[65];
v4float buf207d[65];
v4float buf209[65];
v4float buf209d[65];
v4float buf215[65];
v4float buf215d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207_buf207d_i[1] = {{(float*)buf207, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201r_buf201dr_i[1] = {{(float*)buf201r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_o[1] = {{(float*)buf215, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209_buf209d_o[1] = {{(float*)buf209, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_1_bounds = sync_buffer[1];

  while (proc_23_1_bounds)
  {

    // Kernel call : i115:orthogonalize<256>
    window_buf207_buf207d_i->setData(*window_buf207_buf207d_i, (float*)buf207, (float*)buf207d, 1-index, 0);
    window_buf207_buf207d_i->acquire(*window_buf207_buf207d_i, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    window_buf201r_buf201dr_i->setData(*window_buf201r_buf201dr_i, (float*)buf201r, (float*)buf201dr, 1-index, 0);
    window_buf201r_buf201dr_i->acquire(*window_buf201r_buf201dr_i, LOCK_24_1_0_0, LOCK_24_1_1_1056, 1-index);
    window_buf215_buf215d_o->setData(*window_buf215_buf215d_o, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_o->acquire(*window_buf215_buf215d_o, LOCK_23_2_0_7136, LOCK_23_2_1_0, 1-index);
    window_buf209_buf209d_o->setData(*window_buf209_buf209d_o, (float*)buf209, (float*)buf209d, 1-index, 0);
    window_buf209_buf209d_o->acquire(*window_buf209_buf209d_o, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    orthogonalize<256>(window_buf207_buf207d_i[0],window_buf201r_buf201dr_i[0],window_buf215_buf215d_o[0],window_buf209_buf209d_o[0]);
    window_buf207_buf207d_i->release(*window_buf207_buf207d_i, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    window_buf201r_buf201dr_i->release(*window_buf201r_buf201dr_i, LOCK_24_1_0_0, LOCK_24_1_1_1056, 1-index);
    window_buf215_buf215d_o->release(*window_buf215_buf215d_o, LOCK_23_2_0_7136, LOCK_23_2_1_0, 1-index);
    window_buf209_buf209d_o->release(*window_buf209_buf209d_o, LOCK_23_2_2_0, LOCK_23_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_1_bounds > 0)
      --proc_23_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}