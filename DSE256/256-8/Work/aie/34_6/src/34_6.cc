// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_6/src/34_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_6_0_3040 16
#define LOCK_33_6_1_5056 17
#define LOCK_34_6_2_0 50
#define LOCK_34_6_3_0 51
#define LOCK_34_5_0_7136 0
#define LOCK_34_5_1_0 1
#define LOCK_34_5_2_0 2
#define LOCK_34_5_3_0 3

// Declare shared memory buffers
v4float buf374[65];
v4float buf374d[65];
v4float buf378[65];
v4float buf378d[65];
v4float buf390[65];
v4float buf390d[65];
v4float buf394[65];
v4float buf394d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf374_buf374d_i[1] = {{(float*)buf374, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf378_buf378d_i[1] = {{(float*)buf378, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf390_buf390d_o[1] = {{(float*)buf390, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf394_buf394d_o[1] = {{(float*)buf394, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_6_bounds = sync_buffer[1];

  while (proc_34_6_bounds)
  {

    // Kernel call : i194:orthogonalize<256>
    window_buf374_buf374d_i->setData(*window_buf374_buf374d_i, (float*)buf374, (float*)buf374d, 1-index, 0);
    window_buf374_buf374d_i->acquire(*window_buf374_buf374d_i, LOCK_33_6_0_3040, LOCK_33_6_1_5056, 1-index);
    window_buf378_buf378d_i->setData(*window_buf378_buf378d_i, (float*)buf378, (float*)buf378d, 1-index, 0);
    window_buf378_buf378d_i->acquire(*window_buf378_buf378d_i, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    window_buf390_buf390d_o->setData(*window_buf390_buf390d_o, (float*)buf390, (float*)buf390d, 1-index, 0);
    window_buf390_buf390d_o->acquire(*window_buf390_buf390d_o, LOCK_34_5_0_7136, LOCK_34_5_1_0, 1-index);
    window_buf394_buf394d_o->setData(*window_buf394_buf394d_o, (float*)buf394, (float*)buf394d, 1-index, 0);
    window_buf394_buf394d_o->acquire(*window_buf394_buf394d_o, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    orthogonalize<256>(window_buf374_buf374d_i[0],window_buf378_buf378d_i[0],window_buf390_buf390d_o[0],window_buf394_buf394d_o[0]);
    window_buf374_buf374d_i->release(*window_buf374_buf374d_i, LOCK_33_6_0_3040, LOCK_33_6_1_5056, 1-index);
    window_buf378_buf378d_i->release(*window_buf378_buf378d_i, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    window_buf390_buf390d_o->release(*window_buf390_buf390d_o, LOCK_34_5_0_7136, LOCK_34_5_1_0, 1-index);
    window_buf394_buf394d_o->release(*window_buf394_buf394d_o, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_6_bounds > 0)
      --proc_34_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}