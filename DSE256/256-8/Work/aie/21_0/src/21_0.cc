// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/21_0/src/21_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_0_0_0 16
#define LOCK_20_0_1_0 17
#define LOCK_20_0_2_7136 18
#define LOCK_20_0_3_3776 19
#define LOCK_21_1_0_3136 32
#define LOCK_21_1_1_7136 33
#define LOCK_21_1_2_7136 34
#define LOCK_21_1_3_1056 35

// Declare shared memory buffers
v4float buf233dr[65];
v4float buf233r[65];
v4float buf234dr[65];
v4float buf234r[65];
v4float buf249[65];
v4float buf249d[65];
v4float buf250[65];
v4float buf250d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf233r_buf233dr_i[1] = {{(float*)buf233r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf234r_buf234dr_i[1] = {{(float*)buf234r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf249_buf249d_o[1] = {{(float*)buf249, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf250_buf250d_o[1] = {{(float*)buf250, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_0_bounds = sync_buffer[1];

  while (proc_21_0_bounds)
  {

    // Kernel call : i114:orthogonalize<256>
    window_buf233r_buf233dr_i->setData(*window_buf233r_buf233dr_i, (float*)buf233r, (float*)buf233dr, 1-index, 0);
    window_buf233r_buf233dr_i->acquire(*window_buf233r_buf233dr_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf234r_buf234dr_i->setData(*window_buf234r_buf234dr_i, (float*)buf234r, (float*)buf234dr, 1-index, 0);
    window_buf234r_buf234dr_i->acquire(*window_buf234r_buf234dr_i, LOCK_20_0_2_7136, LOCK_20_0_3_3776, 1-index);
    window_buf249_buf249d_o->setData(*window_buf249_buf249d_o, (float*)buf249, (float*)buf249d, 1-index, 0);
    window_buf249_buf249d_o->acquire(*window_buf249_buf249d_o, LOCK_21_1_0_3136, LOCK_21_1_1_7136, 1-index);
    window_buf250_buf250d_o->setData(*window_buf250_buf250d_o, (float*)buf250, (float*)buf250d, 1-index, 0);
    window_buf250_buf250d_o->acquire(*window_buf250_buf250d_o, LOCK_21_1_2_7136, LOCK_21_1_3_1056, 1-index);
    orthogonalize<256>(window_buf233r_buf233dr_i[0],window_buf234r_buf234dr_i[0],window_buf249_buf249d_o[0],window_buf250_buf250d_o[0]);
    window_buf233r_buf233dr_i->release(*window_buf233r_buf233dr_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf234r_buf234dr_i->release(*window_buf234r_buf234dr_i, LOCK_20_0_2_7136, LOCK_20_0_3_3776, 1-index);
    window_buf249_buf249d_o->release(*window_buf249_buf249d_o, LOCK_21_1_0_3136, LOCK_21_1_1_7136, 1-index);
    window_buf250_buf250d_o->release(*window_buf250_buf250d_o, LOCK_21_1_2_7136, LOCK_21_1_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_0_bounds > 0)
      --proc_21_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}