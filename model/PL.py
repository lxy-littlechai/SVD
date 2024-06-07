

class SVD_PL:
  URAM = 463
  URAM_depth = 4096
  BRAM = 967
  def __init__(self, col, row, cu_num):
    self.col = col
    self.row = row
    self.cu_num = cu_num
  
  def checkRAM(self):
    fifo_depth = self.col*self.row/4
    urams = self.cu_num*fifo_depth/self.URAM_depth*2*2
    print("cu:", self.cu_num)
    print("uram:", urams)
    if urams > self.URAM:
      return False
    return True       
