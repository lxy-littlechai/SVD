// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_1/src/12_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_1_0_0 16
#define LOCK_12_1_1_0 17
#define LOCK_13_1_2_0 50
#define LOCK_13_1_3_0 51
#define LOCK_12_2_0_0 32
#define LOCK_12_2_1_0 33
#define LOCK_12_2_2_0 34
#define LOCK_12_2_3_0 35

// Declare shared memory buffers
v4float buf138[65];
v4float buf138d[65];
v4float buf141[65];
v4float buf141d[65];
v4float buf146[65];
v4float buf146d[65];
v4float buf149[65];
v4float buf149d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf138_buf138d_i[1] = {{(float*)buf138, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf141_buf141d_i[1] = {{(float*)buf141, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf146_buf146d_o[1] = {{(float*)buf146, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_o[1] = {{(float*)buf149, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_1_bounds = sync_buffer[1];

  while (proc_12_1_bounds)
  {

    // Kernel call : i77:orthogonalize<256>
    window_buf138_buf138d_i->setData(*window_buf138_buf138d_i, (float*)buf138, (float*)buf138d, 1-index, 0);
    window_buf138_buf138d_i->acquire(*window_buf138_buf138d_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf141_buf141d_i->setData(*window_buf141_buf141d_i, (float*)buf141, (float*)buf141d, 1-index, 0);
    window_buf141_buf141d_i->acquire(*window_buf141_buf141d_i, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf146_buf146d_o->setData(*window_buf146_buf146d_o, (float*)buf146, (float*)buf146d, 1-index, 0);
    window_buf146_buf146d_o->acquire(*window_buf146_buf146d_o, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf149_buf149d_o->setData(*window_buf149_buf149d_o, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_o->acquire(*window_buf149_buf149d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    orthogonalize<256>(window_buf138_buf138d_i[0],window_buf141_buf141d_i[0],window_buf146_buf146d_o[0],window_buf149_buf149d_o[0]);
    window_buf138_buf138d_i->release(*window_buf138_buf138d_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf141_buf141d_i->release(*window_buf141_buf141d_i, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf146_buf146d_o->release(*window_buf146_buf146d_o, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf149_buf149d_o->release(*window_buf149_buf149d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_1_bounds > 0)
      --proc_12_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}