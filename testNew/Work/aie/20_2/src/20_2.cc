// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/20_2/src/20_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_2_0_0 16
#define LOCK_19_2_1_1056 17
#define LOCK_20_2_2_0 50
#define LOCK_20_2_3_0 51
#define LOCK_20_3_0_7136 32
#define LOCK_20_3_1_0 33
#define LOCK_20_3_2_0 34
#define LOCK_20_3_3_0 35

// Declare shared memory buffers
v4float buf209dr[65];
v4float buf209r[65];
v4float buf211[65];
v4float buf211d[65];
v4float buf217[65];
v4float buf217d[65];
v4float buf219[65];
v4float buf219d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209r_buf209dr_i[1] = {{(float*)buf209r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf211_buf211d_i[1] = {{(float*)buf211, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_o[1] = {{(float*)buf217, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf219_buf219d_o[1] = {{(float*)buf219, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_2_bounds = sync_buffer[1];

  while (proc_20_2_bounds)
  {

    // Kernel call : i116:orthogonalize<256>
    window_buf209r_buf209dr_i->setData(*window_buf209r_buf209dr_i, (float*)buf209r, (float*)buf209dr, 1-index, 0);
    window_buf209r_buf209dr_i->acquire(*window_buf209r_buf209dr_i, LOCK_19_2_0_0, LOCK_19_2_1_1056, 1-index);
    window_buf211_buf211d_i->setData(*window_buf211_buf211d_i, (float*)buf211, (float*)buf211d, 1-index, 0);
    window_buf211_buf211d_i->acquire(*window_buf211_buf211d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf217_buf217d_o->setData(*window_buf217_buf217d_o, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_o->acquire(*window_buf217_buf217d_o, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf219_buf219d_o->setData(*window_buf219_buf219d_o, (float*)buf219, (float*)buf219d, 1-index, 0);
    window_buf219_buf219d_o->acquire(*window_buf219_buf219d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    orthogonalize<256>(window_buf209r_buf209dr_i[0],window_buf211_buf211d_i[0],window_buf217_buf217d_o[0],window_buf219_buf219d_o[0]);
    window_buf209r_buf209dr_i->release(*window_buf209r_buf209dr_i, LOCK_19_2_0_0, LOCK_19_2_1_1056, 1-index);
    window_buf211_buf211d_i->release(*window_buf211_buf211d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf217_buf217d_o->release(*window_buf217_buf217d_o, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf219_buf219d_o->release(*window_buf219_buf219d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_2_bounds > 0)
      --proc_20_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}