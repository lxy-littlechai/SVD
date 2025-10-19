// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/11_7/src/11_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_7_0_4000 48
#define LOCK_12_7_1_0 49
#define LOCK_12_7_2_5056 50
#define LOCK_12_7_3_0 51
#define LOCK_11_6_0_0 0
#define LOCK_11_6_1_0 1
#define LOCK_11_6_2_0 2
#define LOCK_11_6_3_0 3

// Declare shared memory buffers
v4float buf115dr[65];
v4float buf115r[65];
v4float buf123dr[65];
v4float buf123r[65];
v4float buf131[65];
v4float buf131d[65];
v4float buf139[65];
v4float buf139d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf115r_buf115dr_i[1] = {{(float*)buf115r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf123r_buf123dr_i[1] = {{(float*)buf123r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf131_buf131d_o[1] = {{(float*)buf131, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf139_buf139d_o[1] = {{(float*)buf139, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_7_bounds = sync_buffer[1];

  while (proc_11_7_bounds)
  {

    // Kernel call : i57:orthogonalize<256>
    window_buf115r_buf115dr_i->setData(*window_buf115r_buf115dr_i, (float*)buf115r, (float*)buf115dr, 1-index, 0);
    window_buf115r_buf115dr_i->acquire(*window_buf115r_buf115dr_i, LOCK_12_7_0_4000, LOCK_12_7_1_0, 1-index);
    window_buf123r_buf123dr_i->setData(*window_buf123r_buf123dr_i, (float*)buf123r, (float*)buf123dr, 1-index, 0);
    window_buf123r_buf123dr_i->acquire(*window_buf123r_buf123dr_i, LOCK_12_7_2_5056, LOCK_12_7_3_0, 1-index);
    window_buf131_buf131d_o->setData(*window_buf131_buf131d_o, (float*)buf131, (float*)buf131d, 1-index, 0);
    window_buf131_buf131d_o->acquire(*window_buf131_buf131d_o, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf139_buf139d_o->setData(*window_buf139_buf139d_o, (float*)buf139, (float*)buf139d, 1-index, 0);
    window_buf139_buf139d_o->acquire(*window_buf139_buf139d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    orthogonalize<256>(window_buf115r_buf115dr_i[0],window_buf123r_buf123dr_i[0],window_buf131_buf131d_o[0],window_buf139_buf139d_o[0]);
    window_buf115r_buf115dr_i->release(*window_buf115r_buf115dr_i, LOCK_12_7_0_4000, LOCK_12_7_1_0, 1-index);
    window_buf123r_buf123dr_i->release(*window_buf123r_buf123dr_i, LOCK_12_7_2_5056, LOCK_12_7_3_0, 1-index);
    window_buf131_buf131d_o->release(*window_buf131_buf131d_o, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf139_buf139d_o->release(*window_buf139_buf139d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_7_bounds > 0)
      --proc_11_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}