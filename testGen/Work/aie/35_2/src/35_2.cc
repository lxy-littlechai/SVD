// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_2/src/35_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_2_0_0 16
#define LOCK_34_2_1_0 17
#define LOCK_35_2_0_0 48
#define LOCK_35_2_1_0 49
#define LOCK_35_3_0_8032 32
#define LOCK_35_3_1_0 33
#define LOCK_35_3_2_0 34
#define LOCK_35_3_3_0 35

// Declare shared memory buffers
v4float buf356[9];
v4float buf356d[9];
v4float buf373[9];
v4float buf373d[9];
v4float buf378[9];
v4float buf378d[9];
v4float buf395[9];
v4float buf395d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf356_buf356d_i[1] = {{(float*)buf356, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf373_buf373d_i[1] = {{(float*)buf373, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf378_buf378d_o[1] = {{(float*)buf378, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf395_buf395d_o[1] = {{(float*)buf395, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_2_bounds = sync_buffer[1];

  while (proc_35_2_bounds)
  {

    // Kernel call : i186:orthogonalize<32>
    window_buf356_buf356d_i->setData(*window_buf356_buf356d_i, (float*)buf356, (float*)buf356d, 1-index, 0);
    window_buf356_buf356d_i->acquire(*window_buf356_buf356d_i, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf373_buf373d_i->setData(*window_buf373_buf373d_i, (float*)buf373, (float*)buf373d, 1-index, 0);
    window_buf373_buf373d_i->acquire(*window_buf373_buf373d_i, LOCK_35_2_0_0, LOCK_35_2_1_0, 1-index);
    window_buf378_buf378d_o->setData(*window_buf378_buf378d_o, (float*)buf378, (float*)buf378d, 1-index, 0);
    window_buf378_buf378d_o->acquire(*window_buf378_buf378d_o, LOCK_35_3_0_8032, LOCK_35_3_1_0, 1-index);
    window_buf395_buf395d_o->setData(*window_buf395_buf395d_o, (float*)buf395, (float*)buf395d, 1-index, 0);
    window_buf395_buf395d_o->acquire(*window_buf395_buf395d_o, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    orthogonalize<32>(window_buf356_buf356d_i[0],window_buf373_buf373d_i[0],window_buf378_buf378d_o[0],window_buf395_buf395d_o[0]);
    window_buf356_buf356d_i->release(*window_buf356_buf356d_i, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf373_buf373d_i->release(*window_buf373_buf373d_i, LOCK_35_2_0_0, LOCK_35_2_1_0, 1-index);
    window_buf378_buf378d_o->release(*window_buf378_buf378d_o, LOCK_35_3_0_8032, LOCK_35_3_1_0, 1-index);
    window_buf395_buf395d_o->release(*window_buf395_buf395d_o, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_2_bounds > 0)
      --proc_35_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}