// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/44_0/src/44_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_44_0_0_0 48
#define LOCK_44_0_1_0 49
#define LOCK_44_0_2_7136 50
#define LOCK_44_0_3_3776 51
#define LOCK_44_1_0_7136 32
#define LOCK_44_1_1_0 33
#define LOCK_44_1_2_0 34
#define LOCK_44_1_3_0 35

// Declare shared memory buffers
v4float buf466dr[65];
v4float buf466r[65];
v4float buf479dr[65];
v4float buf479r[65];
v4float buf482[65];
v4float buf482d[65];
v4float buf495[65];
v4float buf495d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf466r_buf466dr_i[1] = {{(float*)buf466r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf479r_buf479dr_i[1] = {{(float*)buf479r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf482_buf482d_o[1] = {{(float*)buf482, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf495_buf495d_o[1] = {{(float*)buf495, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_44_0_bounds = sync_buffer[1];

  while (proc_44_0_bounds)
  {

    // Kernel call : i243:orthogonalize<256>
    window_buf466r_buf466dr_i->setData(*window_buf466r_buf466dr_i, (float*)buf466r, (float*)buf466dr, 1-index, 0);
    window_buf466r_buf466dr_i->acquire(*window_buf466r_buf466dr_i, LOCK_44_0_0_0, LOCK_44_0_1_0, 1-index);
    window_buf479r_buf479dr_i->setData(*window_buf479r_buf479dr_i, (float*)buf479r, (float*)buf479dr, 1-index, 0);
    window_buf479r_buf479dr_i->acquire(*window_buf479r_buf479dr_i, LOCK_44_0_2_7136, LOCK_44_0_3_3776, 1-index);
    window_buf482_buf482d_o->setData(*window_buf482_buf482d_o, (float*)buf482, (float*)buf482d, 1-index, 0);
    window_buf482_buf482d_o->acquire(*window_buf482_buf482d_o, LOCK_44_1_0_7136, LOCK_44_1_1_0, 1-index);
    window_buf495_buf495d_o->setData(*window_buf495_buf495d_o, (float*)buf495, (float*)buf495d, 1-index, 0);
    window_buf495_buf495d_o->acquire(*window_buf495_buf495d_o, LOCK_44_1_2_0, LOCK_44_1_3_0, 1-index);
    orthogonalize<256>(window_buf466r_buf466dr_i[0],window_buf479r_buf479dr_i[0],window_buf482_buf482d_o[0],window_buf495_buf495d_o[0]);
    window_buf466r_buf466dr_i->release(*window_buf466r_buf466dr_i, LOCK_44_0_0_0, LOCK_44_0_1_0, 1-index);
    window_buf479r_buf479dr_i->release(*window_buf479r_buf479dr_i, LOCK_44_0_2_7136, LOCK_44_0_3_3776, 1-index);
    window_buf482_buf482d_o->release(*window_buf482_buf482d_o, LOCK_44_1_0_7136, LOCK_44_1_1_0, 1-index);
    window_buf495_buf495d_o->release(*window_buf495_buf495d_o, LOCK_44_1_2_0, LOCK_44_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_44_0_bounds > 0)
      --proc_44_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}