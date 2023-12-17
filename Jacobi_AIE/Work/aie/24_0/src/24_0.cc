// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : ./Work/aie/24_0/src/24_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks

// Declare shared memory buffers

// Declare Kernel functions and initializers
#include "aie/src/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  input_stream_float stream_0 = input_stream_float(0);
  input_stream_float stream_1 = input_stream_float(1);
  output_stream_float stream_2 = output_stream_float(0);
  output_stream_float stream_3 = output_stream_float(1);
  int32 index = 1;
  while(true)
  {

  int32 proc_24_0_bounds = sync_buffer[1];

  while (proc_24_0_bounds)
  {

    // Kernel call : i0:orthogonalize<4>
    orthogonalize<4>(&stream_0,&stream_1,&stream_2,&stream_3);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_0_bounds > 0)
      --proc_24_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}