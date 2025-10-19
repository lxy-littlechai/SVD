// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/11_1/src/11_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_1_2_0 18
#define LOCK_11_1_3_0 19
#define LOCK_12_1_0_0 48
#define LOCK_12_1_1_0 49
#define LOCK_11_0_0_0 0
#define LOCK_11_0_1_0 1
#define LOCK_11_0_2_0 2
#define LOCK_11_0_3_0 3

// Declare shared memory buffers
v4float buf217[65];
v4float buf217d[65];
v4float buf220[65];
v4float buf220d[65];
v4float buf233[65];
v4float buf233d[65];
v4float buf236[65];
v4float buf236d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_i[1] = {{(float*)buf217, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_i[1] = {{(float*)buf220, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf233_buf233d_o[1] = {{(float*)buf233, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236_buf236d_o[1] = {{(float*)buf236, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_1_bounds = sync_buffer[1];

  while (proc_11_1_bounds)
  {

    // Kernel call : i105:orthogonalize<256>
    window_buf217_buf217d_i->setData(*window_buf217_buf217d_i, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_i->acquire(*window_buf217_buf217d_i, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf220_buf220d_i->setData(*window_buf220_buf220d_i, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_i->acquire(*window_buf220_buf220d_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf233_buf233d_o->setData(*window_buf233_buf233d_o, (float*)buf233, (float*)buf233d, 1-index, 0);
    window_buf233_buf233d_o->acquire(*window_buf233_buf233d_o, LOCK_11_0_0_0, LOCK_11_0_1_0, 1-index);
    window_buf236_buf236d_o->setData(*window_buf236_buf236d_o, (float*)buf236, (float*)buf236d, 1-index, 0);
    window_buf236_buf236d_o->acquire(*window_buf236_buf236d_o, LOCK_11_0_2_0, LOCK_11_0_3_0, 1-index);
    orthogonalize<256>(window_buf217_buf217d_i[0],window_buf220_buf220d_i[0],window_buf233_buf233d_o[0],window_buf236_buf236d_o[0]);
    window_buf217_buf217d_i->release(*window_buf217_buf217d_i, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    window_buf220_buf220d_i->release(*window_buf220_buf220d_i, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    window_buf233_buf233d_o->release(*window_buf233_buf233d_o, LOCK_11_0_0_0, LOCK_11_0_1_0, 1-index);
    window_buf236_buf236d_o->release(*window_buf236_buf236d_o, LOCK_11_0_2_0, LOCK_11_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_1_bounds > 0)
      --proc_11_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}