// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_6/src/35_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_6_0_3936 16
#define LOCK_34_6_1_2080 17
#define LOCK_35_6_0_0 48
#define LOCK_35_6_1_0 49
#define LOCK_35_7_0_8032 32
#define LOCK_35_7_1_0 33
#define LOCK_35_7_2_0 34
#define LOCK_35_7_3_0 35

// Declare shared memory buffers
v4float buf440[9];
v4float buf440d[9];
v4float buf461[9];
v4float buf461d[9];
v4float buf462[9];
v4float buf462d[9];
v4float buf483[9];
v4float buf483d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf440_buf440d_i[1] = {{(float*)buf440, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf461_buf461d_i[1] = {{(float*)buf461, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf462_buf462d_o[1] = {{(float*)buf462, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf483_buf483d_o[1] = {{(float*)buf483, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_6_bounds = sync_buffer[1];

  while (proc_35_6_bounds)
  {

    // Kernel call : i230:orthogonalize<32>
    window_buf440_buf440d_i->setData(*window_buf440_buf440d_i, (float*)buf440, (float*)buf440d, 1-index, 0);
    window_buf440_buf440d_i->acquire(*window_buf440_buf440d_i, LOCK_34_6_0_3936, LOCK_34_6_1_2080, 1-index);
    window_buf461_buf461d_i->setData(*window_buf461_buf461d_i, (float*)buf461, (float*)buf461d, 1-index, 0);
    window_buf461_buf461d_i->acquire(*window_buf461_buf461d_i, LOCK_35_6_0_0, LOCK_35_6_1_0, 1-index);
    window_buf462_buf462d_o->setData(*window_buf462_buf462d_o, (float*)buf462, (float*)buf462d, 1-index, 0);
    window_buf462_buf462d_o->acquire(*window_buf462_buf462d_o, LOCK_35_7_0_8032, LOCK_35_7_1_0, 1-index);
    window_buf483_buf483d_o->setData(*window_buf483_buf483d_o, (float*)buf483, (float*)buf483d, 1-index, 0);
    window_buf483_buf483d_o->acquire(*window_buf483_buf483d_o, LOCK_35_7_2_0, LOCK_35_7_3_0, 1-index);
    orthogonalize<32>(window_buf440_buf440d_i[0],window_buf461_buf461d_i[0],window_buf462_buf462d_o[0],window_buf483_buf483d_o[0]);
    window_buf440_buf440d_i->release(*window_buf440_buf440d_i, LOCK_34_6_0_3936, LOCK_34_6_1_2080, 1-index);
    window_buf461_buf461d_i->release(*window_buf461_buf461d_i, LOCK_35_6_0_0, LOCK_35_6_1_0, 1-index);
    window_buf462_buf462d_o->release(*window_buf462_buf462d_o, LOCK_35_7_0_8032, LOCK_35_7_1_0, 1-index);
    window_buf483_buf483d_o->release(*window_buf483_buf483d_o, LOCK_35_7_2_0, LOCK_35_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_6_bounds > 0)
      --proc_35_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}