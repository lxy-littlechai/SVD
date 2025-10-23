// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/14_4/src/14_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_4_2_8032 18
#define LOCK_13_4_3_0 19
#define LOCK_14_4_2_0 50
#define LOCK_14_4_3_0 51
#define LOCK_14_3_0_0 0
#define LOCK_14_3_1_0 1
#define LOCK_14_3_2_0 2
#define LOCK_14_3_3_0 3

// Declare shared memory buffers
v4float buf227[9];
v4float buf227d[9];
v4float buf233[9];
v4float buf233d[9];
v4float buf249[9];
v4float buf249d[9];
v4float buf255[9];
v4float buf255d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf227_buf227d_i[1] = {{(float*)buf227, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf233_buf233d_i[1] = {{(float*)buf233, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf249_buf249d_o[1] = {{(float*)buf249, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf255_buf255d_o[1] = {{(float*)buf255, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_4_bounds = sync_buffer[1];

  while (proc_14_4_bounds)
  {

    // Kernel call : i111:orthogonalize<32>
    window_buf227_buf227d_i->setData(*window_buf227_buf227d_i, (float*)buf227, (float*)buf227d, 1-index, 0);
    window_buf227_buf227d_i->acquire(*window_buf227_buf227d_i, LOCK_13_4_2_8032, LOCK_13_4_3_0, 1-index);
    window_buf233_buf233d_i->setData(*window_buf233_buf233d_i, (float*)buf233, (float*)buf233d, 1-index, 0);
    window_buf233_buf233d_i->acquire(*window_buf233_buf233d_i, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    window_buf249_buf249d_o->setData(*window_buf249_buf249d_o, (float*)buf249, (float*)buf249d, 1-index, 0);
    window_buf249_buf249d_o->acquire(*window_buf249_buf249d_o, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf255_buf255d_o->setData(*window_buf255_buf255d_o, (float*)buf255, (float*)buf255d, 1-index, 0);
    window_buf255_buf255d_o->acquire(*window_buf255_buf255d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    orthogonalize<32>(window_buf227_buf227d_i[0],window_buf233_buf233d_i[0],window_buf249_buf249d_o[0],window_buf255_buf255d_o[0]);
    window_buf227_buf227d_i->release(*window_buf227_buf227d_i, LOCK_13_4_2_8032, LOCK_13_4_3_0, 1-index);
    window_buf233_buf233d_i->release(*window_buf233_buf233d_i, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    window_buf249_buf249d_o->release(*window_buf249_buf249d_o, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf255_buf255d_o->release(*window_buf255_buf255d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_4_bounds > 0)
      --proc_14_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}