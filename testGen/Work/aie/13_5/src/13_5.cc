// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_5/src/13_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_5_0_160 16
#define LOCK_13_5_1_160 17
#define LOCK_14_5_2_0 50
#define LOCK_14_5_3_0 51
#define LOCK_13_4_2_8032 2
#define LOCK_13_4_3_0 3
#define LOCK_13_4_0_0 0
#define LOCK_13_4_1_0 1

// Declare shared memory buffers
v4float buf205[9];
v4float buf205d[9];
v4float buf209[9];
v4float buf209d[9];
v4float buf227[9];
v4float buf227d[9];
v4float buf231[9];
v4float buf231d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_i[1] = {{(float*)buf205, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209_buf209d_i[1] = {{(float*)buf209, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf227_buf227d_o[1] = {{(float*)buf227, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf231_buf231d_o[1] = {{(float*)buf231, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_5_bounds = sync_buffer[1];

  while (proc_13_5_bounds)
  {

    // Kernel call : i99:orthogonalize<32>
    window_buf205_buf205d_i->setData(*window_buf205_buf205d_i, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_i->acquire(*window_buf205_buf205d_i, LOCK_13_5_0_160, LOCK_13_5_1_160, 1-index);
    window_buf209_buf209d_i->setData(*window_buf209_buf209d_i, (float*)buf209, (float*)buf209d, 1-index, 0);
    window_buf209_buf209d_i->acquire(*window_buf209_buf209d_i, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    window_buf227_buf227d_o->setData(*window_buf227_buf227d_o, (float*)buf227, (float*)buf227d, 1-index, 0);
    window_buf227_buf227d_o->acquire(*window_buf227_buf227d_o, LOCK_13_4_2_8032, LOCK_13_4_3_0, 1-index);
    window_buf231_buf231d_o->setData(*window_buf231_buf231d_o, (float*)buf231, (float*)buf231d, 1-index, 0);
    window_buf231_buf231d_o->acquire(*window_buf231_buf231d_o, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    orthogonalize<32>(window_buf205_buf205d_i[0],window_buf209_buf209d_i[0],window_buf227_buf227d_o[0],window_buf231_buf231d_o[0]);
    window_buf205_buf205d_i->release(*window_buf205_buf205d_i, LOCK_13_5_0_160, LOCK_13_5_1_160, 1-index);
    window_buf209_buf209d_i->release(*window_buf209_buf209d_i, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    window_buf227_buf227d_o->release(*window_buf227_buf227d_o, LOCK_13_4_2_8032, LOCK_13_4_3_0, 1-index);
    window_buf231_buf231d_o->release(*window_buf231_buf231d_o, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_5_bounds > 0)
      --proc_13_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}