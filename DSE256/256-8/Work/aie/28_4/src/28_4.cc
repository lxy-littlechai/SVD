// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_4/src/28_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_4_0_0 16
#define LOCK_27_4_1_1056 17
#define LOCK_28_4_2_0 50
#define LOCK_28_4_3_0 51
#define LOCK_28_3_0_7136 0
#define LOCK_28_3_1_0 1
#define LOCK_28_3_2_0 2
#define LOCK_28_3_3_0 3

// Declare shared memory buffers
v4float buf407dr[65];
v4float buf407r[65];
v4float buf409[65];
v4float buf409d[65];
v4float buf423[65];
v4float buf423d[65];
v4float buf425[65];
v4float buf425d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf407r_buf407dr_i[1] = {{(float*)buf407r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf409_buf409d_i[1] = {{(float*)buf409, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf423_buf423d_o[1] = {{(float*)buf423, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf425_buf425d_o[1] = {{(float*)buf425, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_4_bounds = sync_buffer[1];

  while (proc_28_4_bounds)
  {

    // Kernel call : i204:orthogonalize<256>
    window_buf407r_buf407dr_i->setData(*window_buf407r_buf407dr_i, (float*)buf407r, (float*)buf407dr, 1-index, 0);
    window_buf407r_buf407dr_i->acquire(*window_buf407r_buf407dr_i, LOCK_27_4_0_0, LOCK_27_4_1_1056, 1-index);
    window_buf409_buf409d_i->setData(*window_buf409_buf409d_i, (float*)buf409, (float*)buf409d, 1-index, 0);
    window_buf409_buf409d_i->acquire(*window_buf409_buf409d_i, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    window_buf423_buf423d_o->setData(*window_buf423_buf423d_o, (float*)buf423, (float*)buf423d, 1-index, 0);
    window_buf423_buf423d_o->acquire(*window_buf423_buf423d_o, LOCK_28_3_0_7136, LOCK_28_3_1_0, 1-index);
    window_buf425_buf425d_o->setData(*window_buf425_buf425d_o, (float*)buf425, (float*)buf425d, 1-index, 0);
    window_buf425_buf425d_o->acquire(*window_buf425_buf425d_o, LOCK_28_3_2_0, LOCK_28_3_3_0, 1-index);
    orthogonalize<256>(window_buf407r_buf407dr_i[0],window_buf409_buf409d_i[0],window_buf423_buf423d_o[0],window_buf425_buf425d_o[0]);
    window_buf407r_buf407dr_i->release(*window_buf407r_buf407dr_i, LOCK_27_4_0_0, LOCK_27_4_1_1056, 1-index);
    window_buf409_buf409d_i->release(*window_buf409_buf409d_i, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    window_buf423_buf423d_o->release(*window_buf423_buf423d_o, LOCK_28_3_0_7136, LOCK_28_3_1_0, 1-index);
    window_buf425_buf425d_o->release(*window_buf425_buf425d_o, LOCK_28_3_2_0, LOCK_28_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_4_bounds > 0)
      --proc_28_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}