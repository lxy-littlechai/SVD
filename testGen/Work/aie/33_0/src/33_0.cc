// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_0/src/33_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_0_0_0 48
#define LOCK_33_0_1_0 49
#define LOCK_33_0_2_160 50
#define LOCK_33_0_3_704 51
#define LOCK_33_1_0_8032 32
#define LOCK_33_1_1_0 33
#define LOCK_33_1_2_0 34
#define LOCK_33_1_3_0 35

// Declare shared memory buffers
v4float buf310dr[9];
v4float buf310r[9];
v4float buf318dr[9];
v4float buf318r[9];
v4float buf332[9];
v4float buf332d[9];
v4float buf340[9];
v4float buf340d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf310r_buf310dr_i[1] = {{(float*)buf310r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf318r_buf318dr_i[1] = {{(float*)buf318r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf332_buf332d_o[1] = {{(float*)buf332, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf340_buf340d_o[1] = {{(float*)buf340, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_0_bounds = sync_buffer[1];

  while (proc_33_0_bounds)
  {

    // Kernel call : i162:orthogonalize<32>
    window_buf310r_buf310dr_i->setData(*window_buf310r_buf310dr_i, (float*)buf310r, (float*)buf310dr, 1-index, 0);
    window_buf310r_buf310dr_i->acquire(*window_buf310r_buf310dr_i, LOCK_33_0_0_0, LOCK_33_0_1_0, 1-index);
    window_buf318r_buf318dr_i->setData(*window_buf318r_buf318dr_i, (float*)buf318r, (float*)buf318dr, 1-index, 0);
    window_buf318r_buf318dr_i->acquire(*window_buf318r_buf318dr_i, LOCK_33_0_2_160, LOCK_33_0_3_704, 1-index);
    window_buf332_buf332d_o->setData(*window_buf332_buf332d_o, (float*)buf332, (float*)buf332d, 1-index, 0);
    window_buf332_buf332d_o->acquire(*window_buf332_buf332d_o, LOCK_33_1_0_8032, LOCK_33_1_1_0, 1-index);
    window_buf340_buf340d_o->setData(*window_buf340_buf340d_o, (float*)buf340, (float*)buf340d, 1-index, 0);
    window_buf340_buf340d_o->acquire(*window_buf340_buf340d_o, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    orthogonalize<32>(window_buf310r_buf310dr_i[0],window_buf318r_buf318dr_i[0],window_buf332_buf332d_o[0],window_buf340_buf340d_o[0]);
    window_buf310r_buf310dr_i->release(*window_buf310r_buf310dr_i, LOCK_33_0_0_0, LOCK_33_0_1_0, 1-index);
    window_buf318r_buf318dr_i->release(*window_buf318r_buf318dr_i, LOCK_33_0_2_160, LOCK_33_0_3_704, 1-index);
    window_buf332_buf332d_o->release(*window_buf332_buf332d_o, LOCK_33_1_0_8032, LOCK_33_1_1_0, 1-index);
    window_buf340_buf340d_o->release(*window_buf340_buf340d_o, LOCK_33_1_2_0, LOCK_33_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_0_bounds > 0)
      --proc_33_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}