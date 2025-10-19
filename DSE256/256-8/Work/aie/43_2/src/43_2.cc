// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/43_2/src/43_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_42_2_0_0 16
#define LOCK_42_2_1_0 17
#define LOCK_43_2_2_0 50
#define LOCK_43_2_3_0 51
#define LOCK_43_3_0_0 32
#define LOCK_43_3_1_0 33
#define LOCK_43_3_2_0 34
#define LOCK_43_3_3_0 35

// Declare shared memory buffers
v4float buf497[65];
v4float buf497d[65];
v4float buf498[65];
v4float buf498d[65];
v4float buf513[65];
v4float buf513d[65];
v4float buf514[65];
v4float buf514d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf497_buf497d_i[1] = {{(float*)buf497, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf498_buf498d_i[1] = {{(float*)buf498, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf513_buf513d_o[1] = {{(float*)buf513, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf514_buf514d_o[1] = {{(float*)buf514, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_43_2_bounds = sync_buffer[1];

  while (proc_43_2_bounds)
  {

    // Kernel call : i258:orthogonalize<256>
    window_buf497_buf497d_i->setData(*window_buf497_buf497d_i, (float*)buf497, (float*)buf497d, 1-index, 0);
    window_buf497_buf497d_i->acquire(*window_buf497_buf497d_i, LOCK_42_2_0_0, LOCK_42_2_1_0, 1-index);
    window_buf498_buf498d_i->setData(*window_buf498_buf498d_i, (float*)buf498, (float*)buf498d, 1-index, 0);
    window_buf498_buf498d_i->acquire(*window_buf498_buf498d_i, LOCK_43_2_2_0, LOCK_43_2_3_0, 1-index);
    window_buf513_buf513d_o->setData(*window_buf513_buf513d_o, (float*)buf513, (float*)buf513d, 1-index, 0);
    window_buf513_buf513d_o->acquire(*window_buf513_buf513d_o, LOCK_43_3_0_0, LOCK_43_3_1_0, 1-index);
    window_buf514_buf514d_o->setData(*window_buf514_buf514d_o, (float*)buf514, (float*)buf514d, 1-index, 0);
    window_buf514_buf514d_o->acquire(*window_buf514_buf514d_o, LOCK_43_3_2_0, LOCK_43_3_3_0, 1-index);
    orthogonalize<256>(window_buf497_buf497d_i[0],window_buf498_buf498d_i[0],window_buf513_buf513d_o[0],window_buf514_buf514d_o[0]);
    window_buf497_buf497d_i->release(*window_buf497_buf497d_i, LOCK_42_2_0_0, LOCK_42_2_1_0, 1-index);
    window_buf498_buf498d_i->release(*window_buf498_buf498d_i, LOCK_43_2_2_0, LOCK_43_2_3_0, 1-index);
    window_buf513_buf513d_o->release(*window_buf513_buf513d_o, LOCK_43_3_0_0, LOCK_43_3_1_0, 1-index);
    window_buf514_buf514d_o->release(*window_buf514_buf514d_o, LOCK_43_3_2_0, LOCK_43_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_43_2_bounds > 0)
      --proc_43_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}