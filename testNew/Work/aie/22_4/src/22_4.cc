// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_4/src/22_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_4_0_7136 16
#define LOCK_21_4_1_0 17
#define LOCK_22_4_2_0 50
#define LOCK_22_4_3_0 51
#define LOCK_22_5_0_7136 32
#define LOCK_22_5_1_0 33
#define LOCK_22_5_2_0 34
#define LOCK_22_5_3_0 35

// Declare shared memory buffers
v4float buf224[65];
v4float buf224d[65];
v4float buf228[65];
v4float buf228d[65];
v4float buf232[65];
v4float buf232d[65];
v4float buf236[65];
v4float buf236d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224_buf224d_i[1] = {{(float*)buf224, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228_buf228d_i[1] = {{(float*)buf228, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232_buf232d_o[1] = {{(float*)buf232, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236_buf236d_o[1] = {{(float*)buf236, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_4_bounds = sync_buffer[1];

  while (proc_22_4_bounds)
  {

    // Kernel call : i126:orthogonalize<256>
    window_buf224_buf224d_i->setData(*window_buf224_buf224d_i, (float*)buf224, (float*)buf224d, 1-index, 0);
    window_buf224_buf224d_i->acquire(*window_buf224_buf224d_i, LOCK_21_4_0_7136, LOCK_21_4_1_0, 1-index);
    window_buf228_buf228d_i->setData(*window_buf228_buf228d_i, (float*)buf228, (float*)buf228d, 1-index, 0);
    window_buf228_buf228d_i->acquire(*window_buf228_buf228d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf232_buf232d_o->setData(*window_buf232_buf232d_o, (float*)buf232, (float*)buf232d, 1-index, 0);
    window_buf232_buf232d_o->acquire(*window_buf232_buf232d_o, LOCK_22_5_0_7136, LOCK_22_5_1_0, 1-index);
    window_buf236_buf236d_o->setData(*window_buf236_buf236d_o, (float*)buf236, (float*)buf236d, 1-index, 0);
    window_buf236_buf236d_o->acquire(*window_buf236_buf236d_o, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    orthogonalize<256>(window_buf224_buf224d_i[0],window_buf228_buf228d_i[0],window_buf232_buf232d_o[0],window_buf236_buf236d_o[0]);
    window_buf224_buf224d_i->release(*window_buf224_buf224d_i, LOCK_21_4_0_7136, LOCK_21_4_1_0, 1-index);
    window_buf228_buf228d_i->release(*window_buf228_buf228d_i, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    window_buf232_buf232d_o->release(*window_buf232_buf232d_o, LOCK_22_5_0_7136, LOCK_22_5_1_0, 1-index);
    window_buf236_buf236d_o->release(*window_buf236_buf236d_o, LOCK_22_5_2_0, LOCK_22_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_4_bounds > 0)
      --proc_22_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}