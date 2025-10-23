// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_1/src/28_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_1_0_8032 16
#define LOCK_28_1_1_0 17
#define LOCK_29_1_2_0 50
#define LOCK_29_1_3_0 51
#define LOCK_28_2_0_0 32
#define LOCK_28_2_1_0 33
#define LOCK_28_2_2_0 34
#define LOCK_28_2_3_0 35

// Declare shared memory buffers
v4float buf337[9];
v4float buf337d[9];
v4float buf348[9];
v4float buf348d[9];
v4float buf359[9];
v4float buf359d[9];
v4float buf370[9];
v4float buf370d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf337_buf337d_i[1] = {{(float*)buf337, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf348_buf348d_i[1] = {{(float*)buf348, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf359_buf359d_o[1] = {{(float*)buf359, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf370_buf370d_o[1] = {{(float*)buf370, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_1_bounds = sync_buffer[1];

  while (proc_28_1_bounds)
  {

    // Kernel call : i168:orthogonalize<32>
    window_buf337_buf337d_i->setData(*window_buf337_buf337d_i, (float*)buf337, (float*)buf337d, 1-index, 0);
    window_buf337_buf337d_i->acquire(*window_buf337_buf337d_i, LOCK_28_1_0_8032, LOCK_28_1_1_0, 1-index);
    window_buf348_buf348d_i->setData(*window_buf348_buf348d_i, (float*)buf348, (float*)buf348d, 1-index, 0);
    window_buf348_buf348d_i->acquire(*window_buf348_buf348d_i, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    window_buf359_buf359d_o->setData(*window_buf359_buf359d_o, (float*)buf359, (float*)buf359d, 1-index, 0);
    window_buf359_buf359d_o->acquire(*window_buf359_buf359d_o, LOCK_28_2_0_0, LOCK_28_2_1_0, 1-index);
    window_buf370_buf370d_o->setData(*window_buf370_buf370d_o, (float*)buf370, (float*)buf370d, 1-index, 0);
    window_buf370_buf370d_o->acquire(*window_buf370_buf370d_o, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    orthogonalize<32>(window_buf337_buf337d_i[0],window_buf348_buf348d_i[0],window_buf359_buf359d_o[0],window_buf370_buf370d_o[0]);
    window_buf337_buf337d_i->release(*window_buf337_buf337d_i, LOCK_28_1_0_8032, LOCK_28_1_1_0, 1-index);
    window_buf348_buf348d_i->release(*window_buf348_buf348d_i, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    window_buf359_buf359d_o->release(*window_buf359_buf359d_o, LOCK_28_2_0_0, LOCK_28_2_1_0, 1-index);
    window_buf370_buf370d_o->release(*window_buf370_buf370d_o, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_1_bounds > 0)
      --proc_28_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}