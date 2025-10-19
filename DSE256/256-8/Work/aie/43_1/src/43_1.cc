// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/43_1/src/43_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_43_1_0_7136 16
#define LOCK_43_1_1_0 17
#define LOCK_44_1_0_7136 48
#define LOCK_44_1_1_0 49
#define LOCK_43_2_0_0 32
#define LOCK_43_2_1_0 33
#define LOCK_43_2_2_0 34
#define LOCK_43_2_3_0 35

// Declare shared memory buffers
v4float buf480[65];
v4float buf480d[65];
v4float buf482[65];
v4float buf482d[65];
v4float buf496[65];
v4float buf496d[65];
v4float buf498[65];
v4float buf498d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf480_buf480d_i[1] = {{(float*)buf480, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf482_buf482d_i[1] = {{(float*)buf482, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf496_buf496d_o[1] = {{(float*)buf496, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf498_buf498d_o[1] = {{(float*)buf498, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_43_1_bounds = sync_buffer[1];

  while (proc_43_1_bounds)
  {

    // Kernel call : i250:orthogonalize<256>
    window_buf480_buf480d_i->setData(*window_buf480_buf480d_i, (float*)buf480, (float*)buf480d, 1-index, 0);
    window_buf480_buf480d_i->acquire(*window_buf480_buf480d_i, LOCK_43_1_0_7136, LOCK_43_1_1_0, 1-index);
    window_buf482_buf482d_i->setData(*window_buf482_buf482d_i, (float*)buf482, (float*)buf482d, 1-index, 0);
    window_buf482_buf482d_i->acquire(*window_buf482_buf482d_i, LOCK_44_1_0_7136, LOCK_44_1_1_0, 1-index);
    window_buf496_buf496d_o->setData(*window_buf496_buf496d_o, (float*)buf496, (float*)buf496d, 1-index, 0);
    window_buf496_buf496d_o->acquire(*window_buf496_buf496d_o, LOCK_43_2_0_0, LOCK_43_2_1_0, 1-index);
    window_buf498_buf498d_o->setData(*window_buf498_buf498d_o, (float*)buf498, (float*)buf498d, 1-index, 0);
    window_buf498_buf498d_o->acquire(*window_buf498_buf498d_o, LOCK_43_2_2_0, LOCK_43_2_3_0, 1-index);
    orthogonalize<256>(window_buf480_buf480d_i[0],window_buf482_buf482d_i[0],window_buf496_buf496d_o[0],window_buf498_buf498d_o[0]);
    window_buf480_buf480d_i->release(*window_buf480_buf480d_i, LOCK_43_1_0_7136, LOCK_43_1_1_0, 1-index);
    window_buf482_buf482d_i->release(*window_buf482_buf482d_i, LOCK_44_1_0_7136, LOCK_44_1_1_0, 1-index);
    window_buf496_buf496d_o->release(*window_buf496_buf496d_o, LOCK_43_2_0_0, LOCK_43_2_1_0, 1-index);
    window_buf498_buf498d_o->release(*window_buf498_buf498d_o, LOCK_43_2_2_0, LOCK_43_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_43_1_bounds > 0)
      --proc_43_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}