// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/44_1/src/44_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_44_1_2_0 18
#define LOCK_44_1_3_0 19
#define LOCK_45_1_0_0 48
#define LOCK_45_1_1_1056 49
#define LOCK_44_2_0_7136 32
#define LOCK_44_2_1_0 33
#define LOCK_44_2_2_0 34
#define LOCK_44_2_3_0 35

// Declare shared memory buffers
v4float buf493dr[65];
v4float buf493r[65];
v4float buf495[65];
v4float buf495d[65];
v4float buf509[65];
v4float buf509d[65];
v4float buf511[65];
v4float buf511d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf495_buf495d_i[1] = {{(float*)buf495, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf493r_buf493dr_i[1] = {{(float*)buf493r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf511_buf511d_o[1] = {{(float*)buf511, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf509_buf509d_o[1] = {{(float*)buf509, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_44_1_bounds = sync_buffer[1];

  while (proc_44_1_bounds)
  {

    // Kernel call : i251:orthogonalize<256>
    window_buf495_buf495d_i->setData(*window_buf495_buf495d_i, (float*)buf495, (float*)buf495d, 1-index, 0);
    window_buf495_buf495d_i->acquire(*window_buf495_buf495d_i, LOCK_44_1_2_0, LOCK_44_1_3_0, 1-index);
    window_buf493r_buf493dr_i->setData(*window_buf493r_buf493dr_i, (float*)buf493r, (float*)buf493dr, 1-index, 0);
    window_buf493r_buf493dr_i->acquire(*window_buf493r_buf493dr_i, LOCK_45_1_0_0, LOCK_45_1_1_1056, 1-index);
    window_buf511_buf511d_o->setData(*window_buf511_buf511d_o, (float*)buf511, (float*)buf511d, 1-index, 0);
    window_buf511_buf511d_o->acquire(*window_buf511_buf511d_o, LOCK_44_2_0_7136, LOCK_44_2_1_0, 1-index);
    window_buf509_buf509d_o->setData(*window_buf509_buf509d_o, (float*)buf509, (float*)buf509d, 1-index, 0);
    window_buf509_buf509d_o->acquire(*window_buf509_buf509d_o, LOCK_44_2_2_0, LOCK_44_2_3_0, 1-index);
    orthogonalize<256>(window_buf495_buf495d_i[0],window_buf493r_buf493dr_i[0],window_buf511_buf511d_o[0],window_buf509_buf509d_o[0]);
    window_buf495_buf495d_i->release(*window_buf495_buf495d_i, LOCK_44_1_2_0, LOCK_44_1_3_0, 1-index);
    window_buf493r_buf493dr_i->release(*window_buf493r_buf493dr_i, LOCK_45_1_0_0, LOCK_45_1_1_1056, 1-index);
    window_buf511_buf511d_o->release(*window_buf511_buf511d_o, LOCK_44_2_0_7136, LOCK_44_2_1_0, 1-index);
    window_buf509_buf509d_o->release(*window_buf509_buf509d_o, LOCK_44_2_2_0, LOCK_44_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_44_1_bounds > 0)
      --proc_44_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}