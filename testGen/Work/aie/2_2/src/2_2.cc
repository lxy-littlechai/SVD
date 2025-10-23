// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_2/src/2_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_2_0_0 16
#define LOCK_1_2_1_0 17
#define LOCK_2_2_2_0 50
#define LOCK_2_2_3_0 51
#define LOCK_2_3_0_0 32
#define LOCK_2_3_1_0 33
#define LOCK_2_3_2_0 34
#define LOCK_2_3_3_0 35

// Declare shared memory buffers
v4float buf44[9];
v4float buf44d[9];
v4float buf49[9];
v4float buf49d[9];
v4float buf66[9];
v4float buf66d[9];
v4float buf71[9];
v4float buf71d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_i[1] = {{(float*)buf44, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_i[1] = {{(float*)buf49, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_o[1] = {{(float*)buf66, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf71_buf71d_o[1] = {{(float*)buf71, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_2_bounds = sync_buffer[1];

  while (proc_2_2_bounds)
  {

    // Kernel call : i23:orthogonalize<32>
    window_buf44_buf44d_i->setData(*window_buf44_buf44d_i, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_i->acquire(*window_buf44_buf44d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf49_buf49d_i->setData(*window_buf49_buf49d_i, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_i->acquire(*window_buf49_buf49d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf66_buf66d_o->setData(*window_buf66_buf66d_o, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_o->acquire(*window_buf66_buf66d_o, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf71_buf71d_o->setData(*window_buf71_buf71d_o, (float*)buf71, (float*)buf71d, 1-index, 0);
    window_buf71_buf71d_o->acquire(*window_buf71_buf71d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    orthogonalize<32>(window_buf44_buf44d_i[0],window_buf49_buf49d_i[0],window_buf66_buf66d_o[0],window_buf71_buf71d_o[0]);
    window_buf44_buf44d_i->release(*window_buf44_buf44d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf49_buf49d_i->release(*window_buf49_buf49d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf66_buf66d_o->release(*window_buf66_buf66d_o, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf71_buf71d_o->release(*window_buf71_buf71d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_2_bounds > 0)
      --proc_2_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}