// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_2/src/28_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_2_0_0 16
#define LOCK_27_2_1_0 17
#define LOCK_28_2_2_0 50
#define LOCK_28_2_3_0 51
#define LOCK_28_1_0_3040 0
#define LOCK_28_1_1_2080 1
#define LOCK_28_1_2_0 2
#define LOCK_28_1_3_0 3

// Declare shared memory buffers
v4float buf441dr[65];
v4float buf441r[65];
v4float buf443[65];
v4float buf443d[65];
v4float buf457[65];
v4float buf457d[65];
v4float buf459[65];
v4float buf459d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf441r_buf441dr_i[1] = {{(float*)buf441r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf443_buf443d_i[1] = {{(float*)buf443, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf457_buf457d_o[1] = {{(float*)buf457, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf459_buf459d_o[1] = {{(float*)buf459, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_2_bounds = sync_buffer[1];

  while (proc_28_2_bounds)
  {

    // Kernel call : i220:orthogonalize<256>
    window_buf441r_buf441dr_i->setData(*window_buf441r_buf441dr_i, (float*)buf441r, (float*)buf441dr, 1-index, 0);
    window_buf441r_buf441dr_i->acquire(*window_buf441r_buf441dr_i, LOCK_27_2_0_0, LOCK_27_2_1_0, 1-index);
    window_buf443_buf443d_i->setData(*window_buf443_buf443d_i, (float*)buf443, (float*)buf443d, 1-index, 0);
    window_buf443_buf443d_i->acquire(*window_buf443_buf443d_i, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    window_buf457_buf457d_o->setData(*window_buf457_buf457d_o, (float*)buf457, (float*)buf457d, 1-index, 0);
    window_buf457_buf457d_o->acquire(*window_buf457_buf457d_o, LOCK_28_1_0_3040, LOCK_28_1_1_2080, 1-index);
    window_buf459_buf459d_o->setData(*window_buf459_buf459d_o, (float*)buf459, (float*)buf459d, 1-index, 0);
    window_buf459_buf459d_o->acquire(*window_buf459_buf459d_o, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    orthogonalize<256>(window_buf441r_buf441dr_i[0],window_buf443_buf443d_i[0],window_buf457_buf457d_o[0],window_buf459_buf459d_o[0]);
    window_buf441r_buf441dr_i->release(*window_buf441r_buf441dr_i, LOCK_27_2_0_0, LOCK_27_2_1_0, 1-index);
    window_buf443_buf443d_i->release(*window_buf443_buf443d_i, LOCK_28_2_2_0, LOCK_28_2_3_0, 1-index);
    window_buf457_buf457d_o->release(*window_buf457_buf457d_o, LOCK_28_1_0_3040, LOCK_28_1_1_2080, 1-index);
    window_buf459_buf459d_o->release(*window_buf459_buf459d_o, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_2_bounds > 0)
      --proc_28_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}