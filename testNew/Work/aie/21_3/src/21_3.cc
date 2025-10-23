// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_3/src/21_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_3_0_0 16
#define LOCK_21_3_1_0 17
#define LOCK_22_3_2_0 50
#define LOCK_22_3_3_0 51
#define LOCK_21_4_0_7136 32
#define LOCK_21_4_1_0 33
#define LOCK_21_4_2_0 34
#define LOCK_21_4_3_0 35

// Declare shared memory buffers
v4float buf216[65];
v4float buf216d[65];
v4float buf222[65];
v4float buf222d[65];
v4float buf224[65];
v4float buf224d[65];
v4float buf230[65];
v4float buf230d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf216_buf216d_i[1] = {{(float*)buf216, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf222_buf222d_i[1] = {{(float*)buf222, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224_buf224d_o[1] = {{(float*)buf224, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230_buf230d_o[1] = {{(float*)buf230, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_3_bounds = sync_buffer[1];

  while (proc_21_3_bounds)
  {

    // Kernel call : i121:orthogonalize<256>
    window_buf216_buf216d_i->setData(*window_buf216_buf216d_i, (float*)buf216, (float*)buf216d, 1-index, 0);
    window_buf216_buf216d_i->acquire(*window_buf216_buf216d_i, LOCK_21_3_0_0, LOCK_21_3_1_0, 1-index);
    window_buf222_buf222d_i->setData(*window_buf222_buf222d_i, (float*)buf222, (float*)buf222d, 1-index, 0);
    window_buf222_buf222d_i->acquire(*window_buf222_buf222d_i, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    window_buf224_buf224d_o->setData(*window_buf224_buf224d_o, (float*)buf224, (float*)buf224d, 1-index, 0);
    window_buf224_buf224d_o->acquire(*window_buf224_buf224d_o, LOCK_21_4_0_7136, LOCK_21_4_1_0, 1-index);
    window_buf230_buf230d_o->setData(*window_buf230_buf230d_o, (float*)buf230, (float*)buf230d, 1-index, 0);
    window_buf230_buf230d_o->acquire(*window_buf230_buf230d_o, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    orthogonalize<256>(window_buf216_buf216d_i[0],window_buf222_buf222d_i[0],window_buf224_buf224d_o[0],window_buf230_buf230d_o[0]);
    window_buf216_buf216d_i->release(*window_buf216_buf216d_i, LOCK_21_3_0_0, LOCK_21_3_1_0, 1-index);
    window_buf222_buf222d_i->release(*window_buf222_buf222d_i, LOCK_22_3_2_0, LOCK_22_3_3_0, 1-index);
    window_buf224_buf224d_o->release(*window_buf224_buf224d_o, LOCK_21_4_0_7136, LOCK_21_4_1_0, 1-index);
    window_buf230_buf230d_o->release(*window_buf230_buf230d_o, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_3_bounds > 0)
      --proc_21_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}