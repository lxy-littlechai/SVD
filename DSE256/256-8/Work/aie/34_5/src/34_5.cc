// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_5/src/34_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_5_0_7136 16
#define LOCK_34_5_1_0 17
#define LOCK_35_5_0_0 48
#define LOCK_35_5_1_0 49
#define LOCK_34_4_0_0 0
#define LOCK_34_4_1_0 1
#define LOCK_34_4_2_0 2
#define LOCK_34_4_3_0 3

// Declare shared memory buffers
v4float buf390[65];
v4float buf390d[65];
v4float buf392[65];
v4float buf392d[65];
v4float buf406[65];
v4float buf406d[65];
v4float buf408[65];
v4float buf408d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf390_buf390d_i[1] = {{(float*)buf390, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf392_buf392d_i[1] = {{(float*)buf392, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf406_buf406d_o[1] = {{(float*)buf406, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf408_buf408d_o[1] = {{(float*)buf408, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_5_bounds = sync_buffer[1];

  while (proc_34_5_bounds)
  {

    // Kernel call : i202:orthogonalize<256>
    window_buf390_buf390d_i->setData(*window_buf390_buf390d_i, (float*)buf390, (float*)buf390d, 1-index, 0);
    window_buf390_buf390d_i->acquire(*window_buf390_buf390d_i, LOCK_34_5_0_7136, LOCK_34_5_1_0, 1-index);
    window_buf392_buf392d_i->setData(*window_buf392_buf392d_i, (float*)buf392, (float*)buf392d, 1-index, 0);
    window_buf392_buf392d_i->acquire(*window_buf392_buf392d_i, LOCK_35_5_0_0, LOCK_35_5_1_0, 1-index);
    window_buf406_buf406d_o->setData(*window_buf406_buf406d_o, (float*)buf406, (float*)buf406d, 1-index, 0);
    window_buf406_buf406d_o->acquire(*window_buf406_buf406d_o, LOCK_34_4_0_0, LOCK_34_4_1_0, 1-index);
    window_buf408_buf408d_o->setData(*window_buf408_buf408d_o, (float*)buf408, (float*)buf408d, 1-index, 0);
    window_buf408_buf408d_o->acquire(*window_buf408_buf408d_o, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    orthogonalize<256>(window_buf390_buf390d_i[0],window_buf392_buf392d_i[0],window_buf406_buf406d_o[0],window_buf408_buf408d_o[0]);
    window_buf390_buf390d_i->release(*window_buf390_buf390d_i, LOCK_34_5_0_7136, LOCK_34_5_1_0, 1-index);
    window_buf392_buf392d_i->release(*window_buf392_buf392d_i, LOCK_35_5_0_0, LOCK_35_5_1_0, 1-index);
    window_buf406_buf406d_o->release(*window_buf406_buf406d_o, LOCK_34_4_0_0, LOCK_34_4_1_0, 1-index);
    window_buf408_buf408d_o->release(*window_buf408_buf408d_o, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_5_bounds > 0)
      --proc_34_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}