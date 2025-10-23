// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_5/src/35_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_35_5_2_0 18
#define LOCK_35_5_3_0 19
#define LOCK_36_5_0_0 48
#define LOCK_36_5_1_0 49
#define LOCK_35_6_0_0 32
#define LOCK_35_6_1_0 33
#define LOCK_35_6_2_0 34
#define LOCK_35_6_3_0 35

// Declare shared memory buffers
v4float buf437dr[9];
v4float buf437r[9];
v4float buf439[9];
v4float buf439d[9];
v4float buf459[9];
v4float buf459d[9];
v4float buf461[9];
v4float buf461d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf439_buf439d_i[1] = {{(float*)buf439, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf437r_buf437dr_i[1] = {{(float*)buf437r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf461_buf461d_o[1] = {{(float*)buf461, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf459_buf459d_o[1] = {{(float*)buf459, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_5_bounds = sync_buffer[1];

  while (proc_35_5_bounds)
  {

    // Kernel call : i219:orthogonalize<32>
    window_buf439_buf439d_i->setData(*window_buf439_buf439d_i, (float*)buf439, (float*)buf439d, 1-index, 0);
    window_buf439_buf439d_i->acquire(*window_buf439_buf439d_i, LOCK_35_5_2_0, LOCK_35_5_3_0, 1-index);
    window_buf437r_buf437dr_i->setData(*window_buf437r_buf437dr_i, (float*)buf437r, (float*)buf437dr, 1-index, 0);
    window_buf437r_buf437dr_i->acquire(*window_buf437r_buf437dr_i, LOCK_36_5_0_0, LOCK_36_5_1_0, 1-index);
    window_buf461_buf461d_o->setData(*window_buf461_buf461d_o, (float*)buf461, (float*)buf461d, 1-index, 0);
    window_buf461_buf461d_o->acquire(*window_buf461_buf461d_o, LOCK_35_6_0_0, LOCK_35_6_1_0, 1-index);
    window_buf459_buf459d_o->setData(*window_buf459_buf459d_o, (float*)buf459, (float*)buf459d, 1-index, 0);
    window_buf459_buf459d_o->acquire(*window_buf459_buf459d_o, LOCK_35_6_2_0, LOCK_35_6_3_0, 1-index);
    orthogonalize<32>(window_buf439_buf439d_i[0],window_buf437r_buf437dr_i[0],window_buf461_buf461d_o[0],window_buf459_buf459d_o[0]);
    window_buf439_buf439d_i->release(*window_buf439_buf439d_i, LOCK_35_5_2_0, LOCK_35_5_3_0, 1-index);
    window_buf437r_buf437dr_i->release(*window_buf437r_buf437dr_i, LOCK_36_5_0_0, LOCK_36_5_1_0, 1-index);
    window_buf461_buf461d_o->release(*window_buf461_buf461d_o, LOCK_35_6_0_0, LOCK_35_6_1_0, 1-index);
    window_buf459_buf459d_o->release(*window_buf459_buf459d_o, LOCK_35_6_2_0, LOCK_35_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_5_bounds > 0)
      --proc_35_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}