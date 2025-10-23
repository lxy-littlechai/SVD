// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_6/src/25_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_6_0_0 16
#define LOCK_24_6_1_0 17
#define LOCK_25_6_2_0 50
#define LOCK_25_6_3_0 51
#define LOCK_25_7_0_0 32
#define LOCK_25_7_1_0 33
#define LOCK_25_7_2_0 34
#define LOCK_25_7_3_0 35

// Declare shared memory buffers
v4float buf459dr[9];
v4float buf459r[9];
v4float buf460[9];
v4float buf460d[9];
v4float buf481[9];
v4float buf481d[9];
v4float buf482[9];
v4float buf482d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf459r_buf459dr_i[1] = {{(float*)buf459r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf460_buf460d_i[1] = {{(float*)buf460, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf481_buf481d_o[1] = {{(float*)buf481, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf482_buf482d_o[1] = {{(float*)buf482, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_6_bounds = sync_buffer[1];

  while (proc_25_6_bounds)
  {

    // Kernel call : i220:orthogonalize<32>
    window_buf459r_buf459dr_i->setData(*window_buf459r_buf459dr_i, (float*)buf459r, (float*)buf459dr, 1-index, 0);
    window_buf459r_buf459dr_i->acquire(*window_buf459r_buf459dr_i, LOCK_24_6_0_0, LOCK_24_6_1_0, 1-index);
    window_buf460_buf460d_i->setData(*window_buf460_buf460d_i, (float*)buf460, (float*)buf460d, 1-index, 0);
    window_buf460_buf460d_i->acquire(*window_buf460_buf460d_i, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    window_buf481_buf481d_o->setData(*window_buf481_buf481d_o, (float*)buf481, (float*)buf481d, 1-index, 0);
    window_buf481_buf481d_o->acquire(*window_buf481_buf481d_o, LOCK_25_7_0_0, LOCK_25_7_1_0, 1-index);
    window_buf482_buf482d_o->setData(*window_buf482_buf482d_o, (float*)buf482, (float*)buf482d, 1-index, 0);
    window_buf482_buf482d_o->acquire(*window_buf482_buf482d_o, LOCK_25_7_2_0, LOCK_25_7_3_0, 1-index);
    orthogonalize<32>(window_buf459r_buf459dr_i[0],window_buf460_buf460d_i[0],window_buf481_buf481d_o[0],window_buf482_buf482d_o[0]);
    window_buf459r_buf459dr_i->release(*window_buf459r_buf459dr_i, LOCK_24_6_0_0, LOCK_24_6_1_0, 1-index);
    window_buf460_buf460d_i->release(*window_buf460_buf460d_i, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    window_buf481_buf481d_o->release(*window_buf481_buf481d_o, LOCK_25_7_0_0, LOCK_25_7_1_0, 1-index);
    window_buf482_buf482d_o->release(*window_buf482_buf482d_o, LOCK_25_7_2_0, LOCK_25_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_6_bounds > 0)
      --proc_25_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}