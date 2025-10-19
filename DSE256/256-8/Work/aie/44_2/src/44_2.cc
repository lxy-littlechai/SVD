// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/44_2/src/44_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_43_2_0_0 16
#define LOCK_43_2_1_0 17
#define LOCK_44_2_0_7136 48
#define LOCK_44_2_1_0 49
#define LOCK_44_3_0_0 32
#define LOCK_44_3_1_0 33
#define LOCK_44_3_2_0 34
#define LOCK_44_3_3_0 35

// Declare shared memory buffers
v4float buf496[65];
v4float buf496d[65];
v4float buf511[65];
v4float buf511d[65];
v4float buf512[65];
v4float buf512d[65];
v4float buf527[65];
v4float buf527d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf496_buf496d_i[1] = {{(float*)buf496, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf511_buf511d_i[1] = {{(float*)buf511, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf512_buf512d_o[1] = {{(float*)buf512, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf527_buf527d_o[1] = {{(float*)buf527, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_44_2_bounds = sync_buffer[1];

  while (proc_44_2_bounds)
  {

    // Kernel call : i259:orthogonalize<256>
    window_buf496_buf496d_i->setData(*window_buf496_buf496d_i, (float*)buf496, (float*)buf496d, 1-index, 0);
    window_buf496_buf496d_i->acquire(*window_buf496_buf496d_i, LOCK_43_2_0_0, LOCK_43_2_1_0, 1-index);
    window_buf511_buf511d_i->setData(*window_buf511_buf511d_i, (float*)buf511, (float*)buf511d, 1-index, 0);
    window_buf511_buf511d_i->acquire(*window_buf511_buf511d_i, LOCK_44_2_0_7136, LOCK_44_2_1_0, 1-index);
    window_buf512_buf512d_o->setData(*window_buf512_buf512d_o, (float*)buf512, (float*)buf512d, 1-index, 0);
    window_buf512_buf512d_o->acquire(*window_buf512_buf512d_o, LOCK_44_3_0_0, LOCK_44_3_1_0, 1-index);
    window_buf527_buf527d_o->setData(*window_buf527_buf527d_o, (float*)buf527, (float*)buf527d, 1-index, 0);
    window_buf527_buf527d_o->acquire(*window_buf527_buf527d_o, LOCK_44_3_2_0, LOCK_44_3_3_0, 1-index);
    orthogonalize<256>(window_buf496_buf496d_i[0],window_buf511_buf511d_i[0],window_buf512_buf512d_o[0],window_buf527_buf527d_o[0]);
    window_buf496_buf496d_i->release(*window_buf496_buf496d_i, LOCK_43_2_0_0, LOCK_43_2_1_0, 1-index);
    window_buf511_buf511d_i->release(*window_buf511_buf511d_i, LOCK_44_2_0_7136, LOCK_44_2_1_0, 1-index);
    window_buf512_buf512d_o->release(*window_buf512_buf512d_o, LOCK_44_3_0_0, LOCK_44_3_1_0, 1-index);
    window_buf527_buf527d_o->release(*window_buf527_buf527d_o, LOCK_44_3_2_0, LOCK_44_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_44_2_bounds > 0)
      --proc_44_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}