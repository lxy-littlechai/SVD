// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_7/src/34_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_7_0_0 16
#define LOCK_34_7_1_0 17
#define LOCK_34_7_2_0 18
#define LOCK_34_7_3_0 19
#define LOCK_34_6_0_3040 0
#define LOCK_34_6_1_3136 1
#define LOCK_34_6_2_0 2
#define LOCK_34_6_3_0 3

// Declare shared memory buffers
v4float buf360dr[65];
v4float buf360r[65];
v4float buf362dr[65];
v4float buf362r[65];
v4float buf376[65];
v4float buf376d[65];
v4float buf378[65];
v4float buf378d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf360r_buf360dr_i[1] = {{(float*)buf360r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf362r_buf362dr_i[1] = {{(float*)buf362r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf376_buf376d_o[1] = {{(float*)buf376, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf378_buf378d_o[1] = {{(float*)buf378, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_7_bounds = sync_buffer[1];

  while (proc_34_7_bounds)
  {

    // Kernel call : i186:orthogonalize<256>
    window_buf360r_buf360dr_i->setData(*window_buf360r_buf360dr_i, (float*)buf360r, (float*)buf360dr, 1-index, 0);
    window_buf360r_buf360dr_i->acquire(*window_buf360r_buf360dr_i, LOCK_34_7_0_0, LOCK_34_7_1_0, 1-index);
    window_buf362r_buf362dr_i->setData(*window_buf362r_buf362dr_i, (float*)buf362r, (float*)buf362dr, 1-index, 0);
    window_buf362r_buf362dr_i->acquire(*window_buf362r_buf362dr_i, LOCK_34_7_2_0, LOCK_34_7_3_0, 1-index);
    window_buf376_buf376d_o->setData(*window_buf376_buf376d_o, (float*)buf376, (float*)buf376d, 1-index, 0);
    window_buf376_buf376d_o->acquire(*window_buf376_buf376d_o, LOCK_34_6_0_3040, LOCK_34_6_1_3136, 1-index);
    window_buf378_buf378d_o->setData(*window_buf378_buf378d_o, (float*)buf378, (float*)buf378d, 1-index, 0);
    window_buf378_buf378d_o->acquire(*window_buf378_buf378d_o, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    orthogonalize<256>(window_buf360r_buf360dr_i[0],window_buf362r_buf362dr_i[0],window_buf376_buf376d_o[0],window_buf378_buf378d_o[0]);
    window_buf360r_buf360dr_i->release(*window_buf360r_buf360dr_i, LOCK_34_7_0_0, LOCK_34_7_1_0, 1-index);
    window_buf362r_buf362dr_i->release(*window_buf362r_buf362dr_i, LOCK_34_7_2_0, LOCK_34_7_3_0, 1-index);
    window_buf376_buf376d_o->release(*window_buf376_buf376d_o, LOCK_34_6_0_3040, LOCK_34_6_1_3136, 1-index);
    window_buf378_buf378d_o->release(*window_buf378_buf378d_o, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_7_bounds > 0)
      --proc_34_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}