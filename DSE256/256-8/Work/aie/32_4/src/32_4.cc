// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_4/src/32_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_4_0_0 16
#define LOCK_31_4_1_0 17
#define LOCK_32_4_2_0 50
#define LOCK_32_4_3_0 51
#define LOCK_32_3_0_7136 0
#define LOCK_32_3_1_0 1
#define LOCK_32_3_2_0 2
#define LOCK_32_3_3_0 3

// Declare shared memory buffers
v4float buf400[65];
v4float buf400d[65];
v4float buf412[65];
v4float buf412d[65];
v4float buf416[65];
v4float buf416d[65];
v4float buf428[65];
v4float buf428d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf400_buf400d_i[1] = {{(float*)buf400, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf412_buf412d_i[1] = {{(float*)buf412, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf416_buf416d_o[1] = {{(float*)buf416, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf428_buf428d_o[1] = {{(float*)buf428, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_4_bounds = sync_buffer[1];

  while (proc_32_4_bounds)
  {

    // Kernel call : i208:orthogonalize<256>
    window_buf400_buf400d_i->setData(*window_buf400_buf400d_i, (float*)buf400, (float*)buf400d, 1-index, 0);
    window_buf400_buf400d_i->acquire(*window_buf400_buf400d_i, LOCK_31_4_0_0, LOCK_31_4_1_0, 1-index);
    window_buf412_buf412d_i->setData(*window_buf412_buf412d_i, (float*)buf412, (float*)buf412d, 1-index, 0);
    window_buf412_buf412d_i->acquire(*window_buf412_buf412d_i, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    window_buf416_buf416d_o->setData(*window_buf416_buf416d_o, (float*)buf416, (float*)buf416d, 1-index, 0);
    window_buf416_buf416d_o->acquire(*window_buf416_buf416d_o, LOCK_32_3_0_7136, LOCK_32_3_1_0, 1-index);
    window_buf428_buf428d_o->setData(*window_buf428_buf428d_o, (float*)buf428, (float*)buf428d, 1-index, 0);
    window_buf428_buf428d_o->acquire(*window_buf428_buf428d_o, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    orthogonalize<256>(window_buf400_buf400d_i[0],window_buf412_buf412d_i[0],window_buf416_buf416d_o[0],window_buf428_buf428d_o[0]);
    window_buf400_buf400d_i->release(*window_buf400_buf400d_i, LOCK_31_4_0_0, LOCK_31_4_1_0, 1-index);
    window_buf412_buf412d_i->release(*window_buf412_buf412d_i, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    window_buf416_buf416d_o->release(*window_buf416_buf416d_o, LOCK_32_3_0_7136, LOCK_32_3_1_0, 1-index);
    window_buf428_buf428d_o->release(*window_buf428_buf428d_o, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_4_bounds > 0)
      --proc_32_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}