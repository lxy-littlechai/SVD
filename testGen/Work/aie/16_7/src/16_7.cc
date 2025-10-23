// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_7/src/16_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_7_0_5984 48
#define LOCK_17_7_1_0 49
#define LOCK_16_7_2_160 18
#define LOCK_16_7_3_704 19
#define LOCK_16_6_0_3936 0
#define LOCK_16_6_1_2080 1
#define LOCK_16_6_2_0 2
#define LOCK_16_6_3_0 3

// Declare shared memory buffers
v4float buf154dr[9];
v4float buf154r[9];
v4float buf169dr[9];
v4float buf169r[9];
v4float buf176[9];
v4float buf176d[9];
v4float buf191[9];
v4float buf191d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf154r_buf154dr_i[1] = {{(float*)buf154r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf169r_buf169dr_i[1] = {{(float*)buf169r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf176_buf176d_o[1] = {{(float*)buf176, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf191_buf191d_o[1] = {{(float*)buf191, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_7_bounds = sync_buffer[1];

  while (proc_16_7_bounds)
  {

    // Kernel call : i80:orthogonalize<32>
    window_buf154r_buf154dr_i->setData(*window_buf154r_buf154dr_i, (float*)buf154r, (float*)buf154dr, 1-index, 0);
    window_buf154r_buf154dr_i->acquire(*window_buf154r_buf154dr_i, LOCK_17_7_0_5984, LOCK_17_7_1_0, 1-index);
    window_buf169r_buf169dr_i->setData(*window_buf169r_buf169dr_i, (float*)buf169r, (float*)buf169dr, 1-index, 0);
    window_buf169r_buf169dr_i->acquire(*window_buf169r_buf169dr_i, LOCK_16_7_2_160, LOCK_16_7_3_704, 1-index);
    window_buf176_buf176d_o->setData(*window_buf176_buf176d_o, (float*)buf176, (float*)buf176d, 1-index, 0);
    window_buf176_buf176d_o->acquire(*window_buf176_buf176d_o, LOCK_16_6_0_3936, LOCK_16_6_1_2080, 1-index);
    window_buf191_buf191d_o->setData(*window_buf191_buf191d_o, (float*)buf191, (float*)buf191d, 1-index, 0);
    window_buf191_buf191d_o->acquire(*window_buf191_buf191d_o, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    orthogonalize<32>(window_buf154r_buf154dr_i[0],window_buf169r_buf169dr_i[0],window_buf176_buf176d_o[0],window_buf191_buf191d_o[0]);
    window_buf154r_buf154dr_i->release(*window_buf154r_buf154dr_i, LOCK_17_7_0_5984, LOCK_17_7_1_0, 1-index);
    window_buf169r_buf169dr_i->release(*window_buf169r_buf169dr_i, LOCK_16_7_2_160, LOCK_16_7_3_704, 1-index);
    window_buf176_buf176d_o->release(*window_buf176_buf176d_o, LOCK_16_6_0_3936, LOCK_16_6_1_2080, 1-index);
    window_buf191_buf191d_o->release(*window_buf191_buf191d_o, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_7_bounds > 0)
      --proc_16_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}