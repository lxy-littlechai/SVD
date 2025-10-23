// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/4_5/src/4_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_5_2_0 18
#define LOCK_4_5_3_0 19
#define LOCK_5_5_0_0 48
#define LOCK_5_5_1_0 49
#define LOCK_4_6_0_3040 32
#define LOCK_4_6_1_2080 33
#define LOCK_4_6_2_0 34
#define LOCK_4_6_3_0 35

// Declare shared memory buffers
v4float buf45dr[65];
v4float buf45r[65];
v4float buf47[65];
v4float buf47d[65];
v4float buf53[65];
v4float buf53d[65];
v4float buf55[65];
v4float buf55d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_i[1] = {{(float*)buf47, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45r_buf45dr_i[1] = {{(float*)buf45r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_o[1] = {{(float*)buf55, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_o[1] = {{(float*)buf53, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_5_bounds = sync_buffer[1];

  while (proc_4_5_bounds)
  {

    // Kernel call : i23:orthogonalize<256>
    window_buf47_buf47d_i->setData(*window_buf47_buf47d_i, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_i->acquire(*window_buf47_buf47d_i, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    window_buf45r_buf45dr_i->setData(*window_buf45r_buf45dr_i, (float*)buf45r, (float*)buf45dr, 1-index, 0);
    window_buf45r_buf45dr_i->acquire(*window_buf45r_buf45dr_i, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf55_buf55d_o->setData(*window_buf55_buf55d_o, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_o->acquire(*window_buf55_buf55d_o, LOCK_4_6_0_3040, LOCK_4_6_1_2080, 1-index);
    window_buf53_buf53d_o->setData(*window_buf53_buf53d_o, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_o->acquire(*window_buf53_buf53d_o, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    orthogonalize<256>(window_buf47_buf47d_i[0],window_buf45r_buf45dr_i[0],window_buf55_buf55d_o[0],window_buf53_buf53d_o[0]);
    window_buf47_buf47d_i->release(*window_buf47_buf47d_i, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    window_buf45r_buf45dr_i->release(*window_buf45r_buf45dr_i, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf55_buf55d_o->release(*window_buf55_buf55d_o, LOCK_4_6_0_3040, LOCK_4_6_1_2080, 1-index);
    window_buf53_buf53d_o->release(*window_buf53_buf53d_o, LOCK_4_6_2_0, LOCK_4_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_5_bounds > 0)
      --proc_4_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}