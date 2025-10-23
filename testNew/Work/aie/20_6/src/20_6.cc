// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/20_6/src/20_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_6_0_0 16
#define LOCK_19_6_1_1056 17
#define LOCK_20_6_2_0 50
#define LOCK_20_6_3_0 51
#define LOCK_20_7_0_7136 32
#define LOCK_20_7_1_0 33
#define LOCK_20_7_2_0 34
#define LOCK_20_7_3_0 35

// Declare shared memory buffers
v4float buf245dr[65];
v4float buf245r[65];
v4float buf246[65];
v4float buf246d[65];
v4float buf253[65];
v4float buf253d[65];
v4float buf254[65];
v4float buf254d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf245r_buf245dr_i[1] = {{(float*)buf245r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf246_buf246d_i[1] = {{(float*)buf246, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf253_buf253d_o[1] = {{(float*)buf253, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf254_buf254d_o[1] = {{(float*)buf254, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_6_bounds = sync_buffer[1];

  while (proc_20_6_bounds)
  {

    // Kernel call : i132:orthogonalize<256>
    window_buf245r_buf245dr_i->setData(*window_buf245r_buf245dr_i, (float*)buf245r, (float*)buf245dr, 1-index, 0);
    window_buf245r_buf245dr_i->acquire(*window_buf245r_buf245dr_i, LOCK_19_6_0_0, LOCK_19_6_1_1056, 1-index);
    window_buf246_buf246d_i->setData(*window_buf246_buf246d_i, (float*)buf246, (float*)buf246d, 1-index, 0);
    window_buf246_buf246d_i->acquire(*window_buf246_buf246d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf253_buf253d_o->setData(*window_buf253_buf253d_o, (float*)buf253, (float*)buf253d, 1-index, 0);
    window_buf253_buf253d_o->acquire(*window_buf253_buf253d_o, LOCK_20_7_0_7136, LOCK_20_7_1_0, 1-index);
    window_buf254_buf254d_o->setData(*window_buf254_buf254d_o, (float*)buf254, (float*)buf254d, 1-index, 0);
    window_buf254_buf254d_o->acquire(*window_buf254_buf254d_o, LOCK_20_7_2_0, LOCK_20_7_3_0, 1-index);
    orthogonalize<256>(window_buf245r_buf245dr_i[0],window_buf246_buf246d_i[0],window_buf253_buf253d_o[0],window_buf254_buf254d_o[0]);
    window_buf245r_buf245dr_i->release(*window_buf245r_buf245dr_i, LOCK_19_6_0_0, LOCK_19_6_1_1056, 1-index);
    window_buf246_buf246d_i->release(*window_buf246_buf246d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf253_buf253d_o->release(*window_buf253_buf253d_o, LOCK_20_7_0_7136, LOCK_20_7_1_0, 1-index);
    window_buf254_buf254d_o->release(*window_buf254_buf254d_o, LOCK_20_7_2_0, LOCK_20_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_6_bounds > 0)
      --proc_20_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}