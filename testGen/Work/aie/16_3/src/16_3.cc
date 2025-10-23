// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_3/src/16_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_3_0_8032 16
#define LOCK_16_3_1_0 17
#define LOCK_17_3_2_0 50
#define LOCK_17_3_3_0 51
#define LOCK_16_2_0_0 0
#define LOCK_16_2_1_0 1
#define LOCK_16_2_2_0 2
#define LOCK_16_2_3_0 3

// Declare shared memory buffers
v4float buf245[9];
v4float buf245d[9];
v4float buf261[9];
v4float buf261d[9];
v4float buf267[9];
v4float buf267d[9];
v4float buf283[9];
v4float buf283d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf245_buf245d_i[1] = {{(float*)buf245, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf261_buf261d_i[1] = {{(float*)buf261, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf267_buf267d_o[1] = {{(float*)buf267, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf283_buf283d_o[1] = {{(float*)buf283, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_3_bounds = sync_buffer[1];

  while (proc_16_3_bounds)
  {

    // Kernel call : i124:orthogonalize<32>
    window_buf245_buf245d_i->setData(*window_buf245_buf245d_i, (float*)buf245, (float*)buf245d, 1-index, 0);
    window_buf245_buf245d_i->acquire(*window_buf245_buf245d_i, LOCK_16_3_0_8032, LOCK_16_3_1_0, 1-index);
    window_buf261_buf261d_i->setData(*window_buf261_buf261d_i, (float*)buf261, (float*)buf261d, 1-index, 0);
    window_buf261_buf261d_i->acquire(*window_buf261_buf261d_i, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    window_buf267_buf267d_o->setData(*window_buf267_buf267d_o, (float*)buf267, (float*)buf267d, 1-index, 0);
    window_buf267_buf267d_o->acquire(*window_buf267_buf267d_o, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf283_buf283d_o->setData(*window_buf283_buf283d_o, (float*)buf283, (float*)buf283d, 1-index, 0);
    window_buf283_buf283d_o->acquire(*window_buf283_buf283d_o, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    orthogonalize<32>(window_buf245_buf245d_i[0],window_buf261_buf261d_i[0],window_buf267_buf267d_o[0],window_buf283_buf283d_o[0]);
    window_buf245_buf245d_i->release(*window_buf245_buf245d_i, LOCK_16_3_0_8032, LOCK_16_3_1_0, 1-index);
    window_buf261_buf261d_i->release(*window_buf261_buf261d_i, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    window_buf267_buf267d_o->release(*window_buf267_buf267d_o, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf283_buf283d_o->release(*window_buf283_buf283d_o, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_3_bounds > 0)
      --proc_16_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}