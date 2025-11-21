import sys
import shutil
import os
import time
import argparse

from model.model import SVD_Model
from model.model import SysConfig
from jinja2 import Template, FileSystemLoader, Environment

def write2File(path, file,  content):
  if not os.path.exists(path):
    os.makedirs(path)
  
  with open(os.path.join(path, file), "w" ) as fp:
    fp.write(content)


def gen4Template(storePath, template_dir, template_file, config):
  loader = FileSystemLoader(template_dir)
  env = Environment(loader=loader)
  template = env.get_template(template_file)
  generate_file = template.render(config)
  write2File(storePath, template_file, generate_file)

def genRoundRobinOrdering(block_num):
  ordering_L = []
  ordering_R = []
  gen_L = []
  gen_R = []
  for i in range(0, block_num, 2):
    gen_L.append(i)
    gen_R.append(i+1)

  for j in range(block_num-1):
    j_ordering_L = []
    j_ordering_R = []
    tmp_L = gen_L.pop(0)
    tmp_R = gen_R.pop(0)
    j_ordering_L.append(tmp_L)
    j_ordering_R.append(tmp_R)
    gen_L.append(tmp_R)
    gen_L.append(tmp_L)
    for i in range(block_num//2-2):
      tmp_L = gen_L.pop(0)
      tmp_R = gen_R.pop(0)
      j_ordering_L.append(tmp_L)
      j_ordering_R.append(tmp_R)
      gen_L.append(tmp_L)
      gen_R.append(tmp_R)
    tmp_L = gen_L.pop(0)
    tmp_R = gen_R.pop(0)
    j_ordering_L.append(tmp_L)
    j_ordering_R.append(tmp_R)
    gen_R.append(tmp_L)
    gen_R.append(tmp_R)

    ordering_L.append(j_ordering_L)
    ordering_R.append(j_ordering_R)
  return ordering_L, ordering_R
    
# generate file
def generate(storePath, config):

  template_list = [
            ("data", "svd.py"), 
            ("data", "performance.py"), 


            ("aie/ProcessGraph", "RingGraph.hpp"), 
            ("aie/ProcessUnit", "Normalize.cpp"),
            ("aie/ProcessUnit", "NormTop.cpp"),
            ("aie/ProcessUnit", "NormMid.cpp"),
            ("aie/ProcessUnit", "NormBottom.cpp"),
            ("aie/ProcessUnit", "Normalize.h"),
            ("aie/ProcessUnit", "Orthogonalize.cpp"),
            ("aie/ProcessUnit", "OrthTop.cpp"),
            ("aie/ProcessUnit", "OrthMid.cpp"),
            ("aie/ProcessUnit", "OrthBottom.cpp"),
            ("aie/ProcessUnit", "Orthogonalize.h"),
            ("aie", "TopGraph.cpp"),
            ("aie", "TopGraph.h"),
            ("aie", "Config.h"),

            ("pl", "TopPL.cpp"),
            ("pl", "TopPL.cfg"),
            ("pl", "config.h"),

            ("ps", "host.cpp"),
            ("ps", "svd.hpp"),
            
            ("", "conn.cfg"),
            ("", "Makefile"),
            ("", "run.sh"),
            ("", "SystemConfig.h"),
            ("", "matrix.txt")]
  for template in template_list:
    template_dir = os.getcwd() + "/templates/" + template[0]
    template_file = template[1]
    dst_path = os.path.join(storePath, template[0])
    gen4Template(dst_path, template_dir, template_file, config)

if __name__ == '__main__':
  time_start = time.time()

  parser = argparse.ArgumentParser()
  parser.add_argument("--PATH", type=str)
  parser.add_argument("--COL", type=int)
  parser.add_argument("--ROW", type=int)
  parser.add_argument("--BATCH", type=int)
  parser.add_argument("--ITER", type=int, default=1)
  parser.add_argument("--optimize", type=int, default=1)
  parser.add_argument("--LEVEL1_BLOCK_SIZE", type=int)
  parser.add_argument("--BLOCK_SIZE", type=int)
  parser.add_argument("--PARALLEL_NUM", type=int)
  parser.add_argument("--IO_NUM", type=int)
  parser.add_argument("--Frequency", type=float)
  parser.add_argument("--CascadeLevel", type=int)
  #parser.add_argument("--MaxSweep", type=int, default=20)
  args = parser.parse_args()
  
  svd_model = SVD_Model(args.COL, args.ROW, args.BATCH, args.ITER)
  if args.optimize == 1:
    svd_model.optimize()
    config = svd_model.getBestConfig()
  elif args.optimize == 0:
    base_config = SysConfig(args.COL, args.ROW, args.ITER, args.BATCH)
    base_config.LEVEL1_BLOCK_SIZE = args.LEVEL1_BLOCK_SIZE
    base_config.BLOCK_SIZE = args.BLOCK_SIZE
    base_config.parallel_num = args.PARALLEL_NUM
    base_config.padding = args.COL - args.COL
    base_config.IO_NUM = args.IO_NUM
    base_config.CascadeLevel = args.CascadeLevel
    config = svd_model.resourceCheck(base_config)
    config = svd_model.generateConfig(args.Frequency, config)
  ordering_L, ordering_R = genRoundRobinOrdering(config['COL']//config['BLOCK_SIZE'])
  config['ordering_L'] = ordering_L
  config['ordering_R'] = ordering_R
  # print(ordering_L)
  # print(ordering_R)

  generate(args.PATH, config)

  time_end = time.time()  # 记录结束时间
  time_sum = time_end - time_start  # 计算的时间差为程序的执行时间，单位为秒/s
  print(f"代码执行时间：{time_sum} 秒")



  

  
  
