// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/19_6/src/19_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_6_0_0 16
#define LOCK_18_6_1_0 17
#define LOCK_19_6_2_0 50
#define LOCK_19_6_3_0 51
#define LOCK_19_5_2_8032 2
#define LOCK_19_5_3_0 3
#define LOCK_19_5_0_0 0
#define LOCK_19_5_1_0 1

// Declare shared memory buffers
v4float buf180[9];
v4float buf180d[9];
v4float buf196[9];
v4float buf196d[9];
v4float buf202[9];
v4float buf202d[9];
v4float buf218[9];
v4float buf218d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_i[1] = {{(float*)buf180, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf196_buf196d_i[1] = {{(float*)buf196, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf202_buf202d_o[1] = {{(float*)buf202, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_o[1] = {{(float*)buf218, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_6_bounds = sync_buffer[1];

  while (proc_19_6_bounds)
  {

    // Kernel call : i94:orthogonalize<32>
    window_buf180_buf180d_i->setData(*window_buf180_buf180d_i, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_i->acquire(*window_buf180_buf180d_i, LOCK_18_6_0_0, LOCK_18_6_1_0, 1-index);
    window_buf196_buf196d_i->setData(*window_buf196_buf196d_i, (float*)buf196, (float*)buf196d, 1-index, 0);
    window_buf196_buf196d_i->acquire(*window_buf196_buf196d_i, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    window_buf202_buf202d_o->setData(*window_buf202_buf202d_o, (float*)buf202, (float*)buf202d, 1-index, 0);
    window_buf202_buf202d_o->acquire(*window_buf202_buf202d_o, LOCK_19_5_2_8032, LOCK_19_5_3_0, 1-index);
    window_buf218_buf218d_o->setData(*window_buf218_buf218d_o, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_o->acquire(*window_buf218_buf218d_o, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    orthogonalize<32>(window_buf180_buf180d_i[0],window_buf196_buf196d_i[0],window_buf202_buf202d_o[0],window_buf218_buf218d_o[0]);
    window_buf180_buf180d_i->release(*window_buf180_buf180d_i, LOCK_18_6_0_0, LOCK_18_6_1_0, 1-index);
    window_buf196_buf196d_i->release(*window_buf196_buf196d_i, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    window_buf202_buf202d_o->release(*window_buf202_buf202d_o, LOCK_19_5_2_8032, LOCK_19_5_3_0, 1-index);
    window_buf218_buf218d_o->release(*window_buf218_buf218d_o, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_6_bounds > 0)
      --proc_19_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}