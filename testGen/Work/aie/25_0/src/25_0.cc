// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_0/src/25_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_0_0_5984 16
#define LOCK_24_0_1_0 17
#define LOCK_24_0_2_6144 18
#define LOCK_24_0_3_0 19
#define LOCK_25_1_0_0 32
#define LOCK_25_1_1_0 33
#define LOCK_25_1_2_0 34
#define LOCK_25_1_3_0 35

// Declare shared memory buffers
v4float buf321dr[9];
v4float buf321r[9];
v4float buf323dr[9];
v4float buf323r[9];
v4float buf343[9];
v4float buf343d[9];
v4float buf345[9];
v4float buf345d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf321r_buf321dr_i[1] = {{(float*)buf321r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf323r_buf323dr_i[1] = {{(float*)buf323r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf343_buf343d_o[1] = {{(float*)buf343, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf345_buf345d_o[1] = {{(float*)buf345, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_0_bounds = sync_buffer[1];

  while (proc_25_0_bounds)
  {

    // Kernel call : i154:orthogonalize<32>
    window_buf321r_buf321dr_i->setData(*window_buf321r_buf321dr_i, (float*)buf321r, (float*)buf321dr, 1-index, 0);
    window_buf321r_buf321dr_i->acquire(*window_buf321r_buf321dr_i, LOCK_24_0_0_5984, LOCK_24_0_1_0, 1-index);
    window_buf323r_buf323dr_i->setData(*window_buf323r_buf323dr_i, (float*)buf323r, (float*)buf323dr, 1-index, 0);
    window_buf323r_buf323dr_i->acquire(*window_buf323r_buf323dr_i, LOCK_24_0_2_6144, LOCK_24_0_3_0, 1-index);
    window_buf343_buf343d_o->setData(*window_buf343_buf343d_o, (float*)buf343, (float*)buf343d, 1-index, 0);
    window_buf343_buf343d_o->acquire(*window_buf343_buf343d_o, LOCK_25_1_0_0, LOCK_25_1_1_0, 1-index);
    window_buf345_buf345d_o->setData(*window_buf345_buf345d_o, (float*)buf345, (float*)buf345d, 1-index, 0);
    window_buf345_buf345d_o->acquire(*window_buf345_buf345d_o, LOCK_25_1_2_0, LOCK_25_1_3_0, 1-index);
    orthogonalize<32>(window_buf321r_buf321dr_i[0],window_buf323r_buf323dr_i[0],window_buf343_buf343d_o[0],window_buf345_buf345d_o[0]);
    window_buf321r_buf321dr_i->release(*window_buf321r_buf321dr_i, LOCK_24_0_0_5984, LOCK_24_0_1_0, 1-index);
    window_buf323r_buf323dr_i->release(*window_buf323r_buf323dr_i, LOCK_24_0_2_6144, LOCK_24_0_3_0, 1-index);
    window_buf343_buf343d_o->release(*window_buf343_buf343d_o, LOCK_25_1_0_0, LOCK_25_1_1_0, 1-index);
    window_buf345_buf345d_o->release(*window_buf345_buf345d_o, LOCK_25_1_2_0, LOCK_25_1_3_0, 1-index);
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