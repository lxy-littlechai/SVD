// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/24_4/src/24_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_4_0_0 16
#define LOCK_23_4_1_0 17
#define LOCK_24_4_2_0 50
#define LOCK_24_4_3_0 51
#define LOCK_24_5_0_0 32
#define LOCK_24_5_1_0 33
#define LOCK_24_5_2_0 34
#define LOCK_24_5_3_0 35

// Declare shared memory buffers
v4float buf312[65];
v4float buf312d[65];
v4float buf317[65];
v4float buf317d[65];
v4float buf328[65];
v4float buf328d[65];
v4float buf333[65];
v4float buf333d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf312_buf312d_i[1] = {{(float*)buf312, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf317_buf317d_i[1] = {{(float*)buf317, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf328_buf328d_o[1] = {{(float*)buf328, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf333_buf333d_o[1] = {{(float*)buf333, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_24_4_bounds = sync_buffer[1];

  while (proc_24_4_bounds)
  {

    // Kernel call : i161:orthogonalize<256>
    window_buf312_buf312d_i->setData(*window_buf312_buf312d_i, (float*)buf312, (float*)buf312d, 1-index, 0);
    window_buf312_buf312d_i->acquire(*window_buf312_buf312d_i, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf317_buf317d_i->setData(*window_buf317_buf317d_i, (float*)buf317, (float*)buf317d, 1-index, 0);
    window_buf317_buf317d_i->acquire(*window_buf317_buf317d_i, LOCK_24_4_2_0, LOCK_24_4_3_0, 1-index);
    window_buf328_buf328d_o->setData(*window_buf328_buf328d_o, (float*)buf328, (float*)buf328d, 1-index, 0);
    window_buf328_buf328d_o->acquire(*window_buf328_buf328d_o, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf333_buf333d_o->setData(*window_buf333_buf333d_o, (float*)buf333, (float*)buf333d, 1-index, 0);
    window_buf333_buf333d_o->acquire(*window_buf333_buf333d_o, LOCK_24_5_2_0, LOCK_24_5_3_0, 1-index);
    orthogonalize<256>(window_buf312_buf312d_i[0],window_buf317_buf317d_i[0],window_buf328_buf328d_o[0],window_buf333_buf333d_o[0]);
    window_buf312_buf312d_i->release(*window_buf312_buf312d_i, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf317_buf317d_i->release(*window_buf317_buf317d_i, LOCK_24_4_2_0, LOCK_24_4_3_0, 1-index);
    window_buf328_buf328d_o->release(*window_buf328_buf328d_o, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf333_buf333d_o->release(*window_buf333_buf333d_o, LOCK_24_5_2_0, LOCK_24_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_4_bounds > 0)
      --proc_24_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}