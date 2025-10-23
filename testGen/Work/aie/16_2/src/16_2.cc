// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/16_2/src/16_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_2_0_0 16
#define LOCK_15_2_1_0 17
#define LOCK_16_2_2_0 50
#define LOCK_16_2_3_0 51
#define LOCK_16_1_0_3936 0
#define LOCK_16_1_1_2080 1
#define LOCK_16_1_2_0 2
#define LOCK_16_1_3_0 3

// Declare shared memory buffers
v4float buf269[9];
v4float buf269d[9];
v4float buf283[9];
v4float buf283d[9];
v4float buf291[9];
v4float buf291d[9];
v4float buf305[9];
v4float buf305d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf269_buf269d_i[1] = {{(float*)buf269, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf283_buf283d_i[1] = {{(float*)buf283, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf291_buf291d_o[1] = {{(float*)buf291, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf305_buf305d_o[1] = {{(float*)buf305, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_2_bounds = sync_buffer[1];

  while (proc_16_2_bounds)
  {

    // Kernel call : i135:orthogonalize<32>
    window_buf269_buf269d_i->setData(*window_buf269_buf269d_i, (float*)buf269, (float*)buf269d, 1-index, 0);
    window_buf269_buf269d_i->acquire(*window_buf269_buf269d_i, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf283_buf283d_i->setData(*window_buf283_buf283d_i, (float*)buf283, (float*)buf283d, 1-index, 0);
    window_buf283_buf283d_i->acquire(*window_buf283_buf283d_i, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf291_buf291d_o->setData(*window_buf291_buf291d_o, (float*)buf291, (float*)buf291d, 1-index, 0);
    window_buf291_buf291d_o->acquire(*window_buf291_buf291d_o, LOCK_16_1_0_3936, LOCK_16_1_1_2080, 1-index);
    window_buf305_buf305d_o->setData(*window_buf305_buf305d_o, (float*)buf305, (float*)buf305d, 1-index, 0);
    window_buf305_buf305d_o->acquire(*window_buf305_buf305d_o, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    orthogonalize<32>(window_buf269_buf269d_i[0],window_buf283_buf283d_i[0],window_buf291_buf291d_o[0],window_buf305_buf305d_o[0]);
    window_buf269_buf269d_i->release(*window_buf269_buf269d_i, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf283_buf283d_i->release(*window_buf283_buf283d_i, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf291_buf291d_o->release(*window_buf291_buf291d_o, LOCK_16_1_0_3936, LOCK_16_1_1_2080, 1-index);
    window_buf305_buf305d_o->release(*window_buf305_buf305d_o, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_2_bounds > 0)
      --proc_16_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}