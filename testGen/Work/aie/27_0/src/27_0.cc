// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_0/src/27_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_0_2_0 18
#define LOCK_26_0_3_0 19
#define LOCK_27_0_0_160 48
#define LOCK_27_0_1_704 49
#define LOCK_27_1_0_0 32
#define LOCK_27_1_1_0 33
#define LOCK_27_1_2_0 34
#define LOCK_27_1_3_0 35

// Declare shared memory buffers
v4float buf317dr[9];
v4float buf317r[9];
v4float buf327dr[9];
v4float buf327r[9];
v4float buf339[9];
v4float buf339d[9];
v4float buf349[9];
v4float buf349d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf317r_buf317dr_i[1] = {{(float*)buf317r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf327r_buf327dr_i[1] = {{(float*)buf327r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf339_buf339d_o[1] = {{(float*)buf339, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf349_buf349d_o[1] = {{(float*)buf349, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_0_bounds = sync_buffer[1];

  while (proc_27_0_bounds)
  {

    // Kernel call : i156:orthogonalize<32>
    window_buf317r_buf317dr_i->setData(*window_buf317r_buf317dr_i, (float*)buf317r, (float*)buf317dr, 1-index, 0);
    window_buf317r_buf317dr_i->acquire(*window_buf317r_buf317dr_i, LOCK_26_0_2_0, LOCK_26_0_3_0, 1-index);
    window_buf327r_buf327dr_i->setData(*window_buf327r_buf327dr_i, (float*)buf327r, (float*)buf327dr, 1-index, 0);
    window_buf327r_buf327dr_i->acquire(*window_buf327r_buf327dr_i, LOCK_27_0_0_160, LOCK_27_0_1_704, 1-index);
    window_buf339_buf339d_o->setData(*window_buf339_buf339d_o, (float*)buf339, (float*)buf339d, 1-index, 0);
    window_buf339_buf339d_o->acquire(*window_buf339_buf339d_o, LOCK_27_1_0_0, LOCK_27_1_1_0, 1-index);
    window_buf349_buf349d_o->setData(*window_buf349_buf349d_o, (float*)buf349, (float*)buf349d, 1-index, 0);
    window_buf349_buf349d_o->acquire(*window_buf349_buf349d_o, LOCK_27_1_2_0, LOCK_27_1_3_0, 1-index);
    orthogonalize<32>(window_buf317r_buf317dr_i[0],window_buf327r_buf327dr_i[0],window_buf339_buf339d_o[0],window_buf349_buf349d_o[0]);
    window_buf317r_buf317dr_i->release(*window_buf317r_buf317dr_i, LOCK_26_0_2_0, LOCK_26_0_3_0, 1-index);
    window_buf327r_buf327dr_i->release(*window_buf327r_buf327dr_i, LOCK_27_0_0_160, LOCK_27_0_1_704, 1-index);
    window_buf339_buf339d_o->release(*window_buf339_buf339d_o, LOCK_27_1_0_0, LOCK_27_1_1_0, 1-index);
    window_buf349_buf349d_o->release(*window_buf349_buf349d_o, LOCK_27_1_2_0, LOCK_27_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_0_bounds > 0)
      --proc_27_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}