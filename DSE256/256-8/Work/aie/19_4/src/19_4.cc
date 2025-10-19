// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/19_4/src/19_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_5_0_0 32
#define LOCK_19_5_1_0 33
#define LOCK_19_4_2_0 50
#define LOCK_19_4_3_0 51
#define LOCK_19_5_2_6080 34
#define LOCK_19_5_3_2112 35
#define LOCK_19_5_4_0 36
#define LOCK_19_5_5_0 37

// Declare shared memory buffers
v4float buf305dr[65];
v4float buf305r[65];
v4float buf307[65];
v4float buf307d[65];
v4float buf321[65];
v4float buf321d[65];
v4float buf323[65];
v4float buf323d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf305r_buf305dr_i[1] = {{(float*)buf305r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf307_buf307d_i[1] = {{(float*)buf307, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf321_buf321d_o[1] = {{(float*)buf321, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf323_buf323d_o[1] = {{(float*)buf323, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_4_bounds = sync_buffer[1];

  while (proc_19_4_bounds)
  {

    // Kernel call : i156:orthogonalize<256>
    window_buf305r_buf305dr_i->setData(*window_buf305r_buf305dr_i, (float*)buf305r, (float*)buf305dr, 1-index, 0);
    window_buf305r_buf305dr_i->acquire(*window_buf305r_buf305dr_i, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    window_buf307_buf307d_i->setData(*window_buf307_buf307d_i, (float*)buf307, (float*)buf307d, 1-index, 0);
    window_buf307_buf307d_i->acquire(*window_buf307_buf307d_i, LOCK_19_4_2_0, LOCK_19_4_3_0, 1-index);
    window_buf321_buf321d_o->setData(*window_buf321_buf321d_o, (float*)buf321, (float*)buf321d, 1-index, 0);
    window_buf321_buf321d_o->acquire(*window_buf321_buf321d_o, LOCK_19_5_2_6080, LOCK_19_5_3_2112, 1-index);
    window_buf323_buf323d_o->setData(*window_buf323_buf323d_o, (float*)buf323, (float*)buf323d, 1-index, 0);
    window_buf323_buf323d_o->acquire(*window_buf323_buf323d_o, LOCK_19_5_4_0, LOCK_19_5_5_0, 1-index);
    orthogonalize<256>(window_buf305r_buf305dr_i[0],window_buf307_buf307d_i[0],window_buf321_buf321d_o[0],window_buf323_buf323d_o[0]);
    window_buf305r_buf305dr_i->release(*window_buf305r_buf305dr_i, LOCK_19_5_0_0, LOCK_19_5_1_0, 1-index);
    window_buf307_buf307d_i->release(*window_buf307_buf307d_i, LOCK_19_4_2_0, LOCK_19_4_3_0, 1-index);
    window_buf321_buf321d_o->release(*window_buf321_buf321d_o, LOCK_19_5_2_6080, LOCK_19_5_3_2112, 1-index);
    window_buf323_buf323d_o->release(*window_buf323_buf323d_o, LOCK_19_5_4_0, LOCK_19_5_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_4_bounds > 0)
      --proc_19_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}