// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_5/src/21_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_5_0_7136 16
#define LOCK_21_5_1_0 17
#define LOCK_22_5_2_0 50
#define LOCK_22_5_3_0 51
#define LOCK_21_6_0_0 32
#define LOCK_21_6_1_0 33
#define LOCK_21_6_2_0 34
#define LOCK_21_6_3_0 35

// Declare shared memory buffers
v4float buf233[65];
v4float buf233d[65];
v4float buf236[65];
v4float buf236d[65];
v4float buf241[65];
v4float buf241d[65];
v4float buf244[65];
v4float buf244d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf233_buf233d_i[1] = {{(float*)buf233, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236_buf236d_i[1] = {{(float*)buf236, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf241_buf241d_o[1] = {{(float*)buf241, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf244_buf244d_o[1] = {{(float*)buf244, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_5_bounds = sync_buffer[1];

  while (proc_21_5_bounds)
  {

    // Kernel call : i129:orthogonalize<256>
    window_buf233_buf233d_i->setData(*window_buf233_buf233d_i, (float*)buf233, (float*)buf233d, 1-index, 0);
    window_buf233_buf233d_i->acquire(*window_buf233_buf233d_i, LOCK_21_5_0_7136, LOCK_21_5_1_0, 1-index);
    window_buf236_buf236d_i->setData(*window_buf236_buf236d_i, (float*)buf236, (float*)buf236d, 1-index, 0);
    window_buf236_buf236d_i->acquire(*window_buf236_buf236d_i, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    window_buf241_buf241d_o->setData(*window_buf241_buf241d_o, (float*)buf241, (float*)buf241d, 1-index, 0);
    window_buf241_buf241d_o->acquire(*window_buf241_buf241d_o, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf244_buf244d_o->setData(*window_buf244_buf244d_o, (float*)buf244, (float*)buf244d, 1-index, 0);
    window_buf244_buf244d_o->acquire(*window_buf244_buf244d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    orthogonalize<256>(window_buf233_buf233d_i[0],window_buf236_buf236d_i[0],window_buf241_buf241d_o[0],window_buf244_buf244d_o[0]);
    window_buf233_buf233d_i->release(*window_buf233_buf233d_i, LOCK_21_5_0_7136, LOCK_21_5_1_0, 1-index);
    window_buf236_buf236d_i->release(*window_buf236_buf236d_i, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    window_buf241_buf241d_o->release(*window_buf241_buf241d_o, LOCK_21_6_0_0, LOCK_21_6_1_0, 1-index);
    window_buf244_buf244d_o->release(*window_buf244_buf244d_o, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_5_bounds > 0)
      --proc_21_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}