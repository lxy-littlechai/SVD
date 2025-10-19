// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/24_0/src/24_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_0_0_0 48
#define LOCK_24_0_1_0 49
#define LOCK_24_0_2_7136 50
#define LOCK_24_0_3_3776 51
#define LOCK_24_1_0_3136 32
#define LOCK_24_1_1_7136 33
#define LOCK_24_1_2_7136 34
#define LOCK_24_1_3_1056 35

// Declare shared memory buffers
v4float buf227dr[65];
v4float buf227r[65];
v4float buf228dr[65];
v4float buf228r[65];
v4float buf243[65];
v4float buf243d[65];
v4float buf244[65];
v4float buf244d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf227r_buf227dr_i[1] = {{(float*)buf227r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228r_buf228dr_i[1] = {{(float*)buf228r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf243_buf243d_o[1] = {{(float*)buf243, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf244_buf244d_o[1] = {{(float*)buf244, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_24_0_bounds = sync_buffer[1];

  while (proc_24_0_bounds)
  {

    // Kernel call : i117:orthogonalize<256>
    window_buf227r_buf227dr_i->setData(*window_buf227r_buf227dr_i, (float*)buf227r, (float*)buf227dr, 1-index, 0);
    window_buf227r_buf227dr_i->acquire(*window_buf227r_buf227dr_i, LOCK_24_0_0_0, LOCK_24_0_1_0, 1-index);
    window_buf228r_buf228dr_i->setData(*window_buf228r_buf228dr_i, (float*)buf228r, (float*)buf228dr, 1-index, 0);
    window_buf228r_buf228dr_i->acquire(*window_buf228r_buf228dr_i, LOCK_24_0_2_7136, LOCK_24_0_3_3776, 1-index);
    window_buf243_buf243d_o->setData(*window_buf243_buf243d_o, (float*)buf243, (float*)buf243d, 1-index, 0);
    window_buf243_buf243d_o->acquire(*window_buf243_buf243d_o, LOCK_24_1_0_3136, LOCK_24_1_1_7136, 1-index);
    window_buf244_buf244d_o->setData(*window_buf244_buf244d_o, (float*)buf244, (float*)buf244d, 1-index, 0);
    window_buf244_buf244d_o->acquire(*window_buf244_buf244d_o, LOCK_24_1_2_7136, LOCK_24_1_3_1056, 1-index);
    orthogonalize<256>(window_buf227r_buf227dr_i[0],window_buf228r_buf228dr_i[0],window_buf243_buf243d_o[0],window_buf244_buf244d_o[0]);
    window_buf227r_buf227dr_i->release(*window_buf227r_buf227dr_i, LOCK_24_0_0_0, LOCK_24_0_1_0, 1-index);
    window_buf228r_buf228dr_i->release(*window_buf228r_buf228dr_i, LOCK_24_0_2_7136, LOCK_24_0_3_3776, 1-index);
    window_buf243_buf243d_o->release(*window_buf243_buf243d_o, LOCK_24_1_0_3136, LOCK_24_1_1_7136, 1-index);
    window_buf244_buf244d_o->release(*window_buf244_buf244d_o, LOCK_24_1_2_7136, LOCK_24_1_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_0_bounds > 0)
      --proc_24_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}