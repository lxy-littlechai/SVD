// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_4/src/20_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_4_0_0 16
#define LOCK_19_4_1_0 17
#define LOCK_20_4_2_0 50
#define LOCK_20_4_3_0 51
#define LOCK_20_3_0_8032 0
#define LOCK_20_3_1_0 1
#define LOCK_20_3_2_0 2
#define LOCK_20_3_3_0 3

// Declare shared memory buffers
v4float buf224[9];
v4float buf224d[9];
v4float buf236[9];
v4float buf236d[9];
v4float buf246[9];
v4float buf246d[9];
v4float buf258[9];
v4float buf258d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224_buf224d_i[1] = {{(float*)buf224, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236_buf236d_i[1] = {{(float*)buf236, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf246_buf246d_o[1] = {{(float*)buf246, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf258_buf258d_o[1] = {{(float*)buf258, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_4_bounds = sync_buffer[1];

  while (proc_20_4_bounds)
  {

    // Kernel call : i117:orthogonalize<32>
    window_buf224_buf224d_i->setData(*window_buf224_buf224d_i, (float*)buf224, (float*)buf224d, 1-index, 0);
    window_buf224_buf224d_i->acquire(*window_buf224_buf224d_i, LOCK_19_4_0_0, LOCK_19_4_1_0, 1-index);
    window_buf236_buf236d_i->setData(*window_buf236_buf236d_i, (float*)buf236, (float*)buf236d, 1-index, 0);
    window_buf236_buf236d_i->acquire(*window_buf236_buf236d_i, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    window_buf246_buf246d_o->setData(*window_buf246_buf246d_o, (float*)buf246, (float*)buf246d, 1-index, 0);
    window_buf246_buf246d_o->acquire(*window_buf246_buf246d_o, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf258_buf258d_o->setData(*window_buf258_buf258d_o, (float*)buf258, (float*)buf258d, 1-index, 0);
    window_buf258_buf258d_o->acquire(*window_buf258_buf258d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    orthogonalize<32>(window_buf224_buf224d_i[0],window_buf236_buf236d_i[0],window_buf246_buf246d_o[0],window_buf258_buf258d_o[0]);
    window_buf224_buf224d_i->release(*window_buf224_buf224d_i, LOCK_19_4_0_0, LOCK_19_4_1_0, 1-index);
    window_buf236_buf236d_i->release(*window_buf236_buf236d_i, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    window_buf246_buf246d_o->release(*window_buf246_buf246d_o, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf258_buf258d_o->release(*window_buf258_buf258d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_4_bounds > 0)
      --proc_20_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}