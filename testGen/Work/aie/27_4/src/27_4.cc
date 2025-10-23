// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_4/src/27_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_4_0_8032 16
#define LOCK_26_4_1_0 17
#define LOCK_27_4_2_0 50
#define LOCK_27_4_3_0 51
#define LOCK_27_5_0_8032 32
#define LOCK_27_5_1_0 33
#define LOCK_27_5_2_0 34
#define LOCK_27_5_3_0 35

// Declare shared memory buffers
v4float buf409[9];
v4float buf409d[9];
v4float buf414[9];
v4float buf414d[9];
v4float buf431[9];
v4float buf431d[9];
v4float buf436[9];
v4float buf436d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf409_buf409d_i[1] = {{(float*)buf409, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf414_buf414d_i[1] = {{(float*)buf414, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf431_buf431d_o[1] = {{(float*)buf431, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf436_buf436d_o[1] = {{(float*)buf436, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_4_bounds = sync_buffer[1];

  while (proc_27_4_bounds)
  {

    // Kernel call : i200:orthogonalize<32>
    window_buf409_buf409d_i->setData(*window_buf409_buf409d_i, (float*)buf409, (float*)buf409d, 1-index, 0);
    window_buf409_buf409d_i->acquire(*window_buf409_buf409d_i, LOCK_26_4_0_8032, LOCK_26_4_1_0, 1-index);
    window_buf414_buf414d_i->setData(*window_buf414_buf414d_i, (float*)buf414, (float*)buf414d, 1-index, 0);
    window_buf414_buf414d_i->acquire(*window_buf414_buf414d_i, LOCK_27_4_2_0, LOCK_27_4_3_0, 1-index);
    window_buf431_buf431d_o->setData(*window_buf431_buf431d_o, (float*)buf431, (float*)buf431d, 1-index, 0);
    window_buf431_buf431d_o->acquire(*window_buf431_buf431d_o, LOCK_27_5_0_8032, LOCK_27_5_1_0, 1-index);
    window_buf436_buf436d_o->setData(*window_buf436_buf436d_o, (float*)buf436, (float*)buf436d, 1-index, 0);
    window_buf436_buf436d_o->acquire(*window_buf436_buf436d_o, LOCK_27_5_2_0, LOCK_27_5_3_0, 1-index);
    orthogonalize<32>(window_buf409_buf409d_i[0],window_buf414_buf414d_i[0],window_buf431_buf431d_o[0],window_buf436_buf436d_o[0]);
    window_buf409_buf409d_i->release(*window_buf409_buf409d_i, LOCK_26_4_0_8032, LOCK_26_4_1_0, 1-index);
    window_buf414_buf414d_i->release(*window_buf414_buf414d_i, LOCK_27_4_2_0, LOCK_27_4_3_0, 1-index);
    window_buf431_buf431d_o->release(*window_buf431_buf431d_o, LOCK_27_5_0_8032, LOCK_27_5_1_0, 1-index);
    window_buf436_buf436d_o->release(*window_buf436_buf436d_o, LOCK_27_5_2_0, LOCK_27_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_4_bounds > 0)
      --proc_27_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}