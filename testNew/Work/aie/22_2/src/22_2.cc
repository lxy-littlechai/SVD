// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_2/src/22_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_2_0_0 16
#define LOCK_21_2_1_0 17
#define LOCK_22_2_2_0 50
#define LOCK_22_2_3_0 51
#define LOCK_22_3_0_3040 32
#define LOCK_22_3_1_2080 33
#define LOCK_22_3_2_0 34
#define LOCK_22_3_3_0 35

// Declare shared memory buffers
v4float buf210[65];
v4float buf210d[65];
v4float buf214[65];
v4float buf214d[65];
v4float buf218[65];
v4float buf218d[65];
v4float buf222[65];
v4float buf222d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_i[1] = {{(float*)buf210, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_i[1] = {{(float*)buf214, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_o[1] = {{(float*)buf218, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf222_buf222d_o[1] = {{(float*)buf222, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_2_bounds = sync_buffer[1];

  while (proc_22_2_bounds)
  {

    // Kernel call : i118:orthogonalize<256>
    window_buf210_buf210d_i->setData(*window_buf210_buf210d_i, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_i->acquire(*window_buf210_buf210d_i, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf214_buf214d_i->setData(*window_buf214_buf214d_i, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_i->acquire(*window_buf214_buf214d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf218_buf218d_o->setData(*window_buf218_buf218d_o, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_o->acquire(*window_buf218_buf218d_o, LOCK_22_3_0_3040, LOCK_22_3_1_2080, 1-index);
    window_buf222_buf222d_o->setData(*window_buf222_buf222d_o, (float*)buf222, (float*)buf222d, 1-index, 0);
    window_buf222_buf222d_o->acquire(*window_buf222_buf222d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    orthogonalize<256>(window_buf210_buf210d_i[0],window_buf214_buf214d_i[0],window_buf218_buf218d_o[0],window_buf222_buf222d_o[0]);
    window_buf210_buf210d_i->release(*window_buf210_buf210d_i, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf214_buf214d_i->release(*window_buf214_buf214d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf218_buf218d_o->release(*window_buf218_buf218d_o, LOCK_22_3_0_3040, LOCK_22_3_1_2080, 1-index);
    window_buf222_buf222d_o->release(*window_buf222_buf222d_o, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_2_bounds > 0)
      --proc_22_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}