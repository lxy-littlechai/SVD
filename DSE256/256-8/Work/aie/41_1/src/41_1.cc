// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/41_1/src/41_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_41_1_0_7136 16
#define LOCK_41_1_1_0 17
#define LOCK_42_1_2_0 50
#define LOCK_42_1_3_0 51
#define LOCK_41_2_0_0 32
#define LOCK_41_2_1_0 33
#define LOCK_41_2_2_0 34
#define LOCK_41_2_3_0 35

// Declare shared memory buffers
v4float buf483[65];
v4float buf483d[65];
v4float buf486[65];
v4float buf486d[65];
v4float buf499[65];
v4float buf499d[65];
v4float buf502[65];
v4float buf502d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf483_buf483d_i[1] = {{(float*)buf483, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf486_buf486d_i[1] = {{(float*)buf486, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf499_buf499d_o[1] = {{(float*)buf499, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf502_buf502d_o[1] = {{(float*)buf502, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_41_1_bounds = sync_buffer[1];

  while (proc_41_1_bounds)
  {

    // Kernel call : i248:orthogonalize<256>
    window_buf483_buf483d_i->setData(*window_buf483_buf483d_i, (float*)buf483, (float*)buf483d, 1-index, 0);
    window_buf483_buf483d_i->acquire(*window_buf483_buf483d_i, LOCK_41_1_0_7136, LOCK_41_1_1_0, 1-index);
    window_buf486_buf486d_i->setData(*window_buf486_buf486d_i, (float*)buf486, (float*)buf486d, 1-index, 0);
    window_buf486_buf486d_i->acquire(*window_buf486_buf486d_i, LOCK_42_1_2_0, LOCK_42_1_3_0, 1-index);
    window_buf499_buf499d_o->setData(*window_buf499_buf499d_o, (float*)buf499, (float*)buf499d, 1-index, 0);
    window_buf499_buf499d_o->acquire(*window_buf499_buf499d_o, LOCK_41_2_0_0, LOCK_41_2_1_0, 1-index);
    window_buf502_buf502d_o->setData(*window_buf502_buf502d_o, (float*)buf502, (float*)buf502d, 1-index, 0);
    window_buf502_buf502d_o->acquire(*window_buf502_buf502d_o, LOCK_41_2_2_0, LOCK_41_2_3_0, 1-index);
    orthogonalize<256>(window_buf483_buf483d_i[0],window_buf486_buf486d_i[0],window_buf499_buf499d_o[0],window_buf502_buf502d_o[0]);
    window_buf483_buf483d_i->release(*window_buf483_buf483d_i, LOCK_41_1_0_7136, LOCK_41_1_1_0, 1-index);
    window_buf486_buf486d_i->release(*window_buf486_buf486d_i, LOCK_42_1_2_0, LOCK_42_1_3_0, 1-index);
    window_buf499_buf499d_o->release(*window_buf499_buf499d_o, LOCK_41_2_0_0, LOCK_41_2_1_0, 1-index);
    window_buf502_buf502d_o->release(*window_buf502_buf502d_o, LOCK_41_2_2_0, LOCK_41_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_41_1_bounds > 0)
      --proc_41_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}