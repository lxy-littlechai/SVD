// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_0/src/28_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_0_2_0 18
#define LOCK_27_0_3_0 19
#define LOCK_28_0_0_0 48
#define LOCK_28_0_1_0 49
#define LOCK_28_1_0_8032 32
#define LOCK_28_1_1_0 33
#define LOCK_28_1_2_0 34
#define LOCK_28_1_3_0 35

// Declare shared memory buffers
v4float buf315dr[9];
v4float buf315r[9];
v4float buf328dr[9];
v4float buf328r[9];
v4float buf337[9];
v4float buf337d[9];
v4float buf350[9];
v4float buf350d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf315r_buf315dr_i[1] = {{(float*)buf315r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf328r_buf328dr_i[1] = {{(float*)buf328r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf337_buf337d_o[1] = {{(float*)buf337, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf350_buf350d_o[1] = {{(float*)buf350, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_0_bounds = sync_buffer[1];

  while (proc_28_0_bounds)
  {

    // Kernel call : i157:orthogonalize<32>
    window_buf315r_buf315dr_i->setData(*window_buf315r_buf315dr_i, (float*)buf315r, (float*)buf315dr, 1-index, 0);
    window_buf315r_buf315dr_i->acquire(*window_buf315r_buf315dr_i, LOCK_27_0_2_0, LOCK_27_0_3_0, 1-index);
    window_buf328r_buf328dr_i->setData(*window_buf328r_buf328dr_i, (float*)buf328r, (float*)buf328dr, 1-index, 0);
    window_buf328r_buf328dr_i->acquire(*window_buf328r_buf328dr_i, LOCK_28_0_0_0, LOCK_28_0_1_0, 1-index);
    window_buf337_buf337d_o->setData(*window_buf337_buf337d_o, (float*)buf337, (float*)buf337d, 1-index, 0);
    window_buf337_buf337d_o->acquire(*window_buf337_buf337d_o, LOCK_28_1_0_8032, LOCK_28_1_1_0, 1-index);
    window_buf350_buf350d_o->setData(*window_buf350_buf350d_o, (float*)buf350, (float*)buf350d, 1-index, 0);
    window_buf350_buf350d_o->acquire(*window_buf350_buf350d_o, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    orthogonalize<32>(window_buf315r_buf315dr_i[0],window_buf328r_buf328dr_i[0],window_buf337_buf337d_o[0],window_buf350_buf350d_o[0]);
    window_buf315r_buf315dr_i->release(*window_buf315r_buf315dr_i, LOCK_27_0_2_0, LOCK_27_0_3_0, 1-index);
    window_buf328r_buf328dr_i->release(*window_buf328r_buf328dr_i, LOCK_28_0_0_0, LOCK_28_0_1_0, 1-index);
    window_buf337_buf337d_o->release(*window_buf337_buf337d_o, LOCK_28_1_0_8032, LOCK_28_1_1_0, 1-index);
    window_buf350_buf350d_o->release(*window_buf350_buf350d_o, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_0_bounds > 0)
      --proc_28_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}