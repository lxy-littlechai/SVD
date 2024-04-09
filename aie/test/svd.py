import numpy as np

def read_U(file_name):
  with open(file_name, 'r') as file:
      matrix_lines = file.readlines()
      matrix = np.array([np.array([float(number) for number in line.split()]) for line in matrix_lines])
  return matrix

def orthogonality_measure(matrix):
    inner_product_matrix = np.abs(matrix.T @ matrix)

    norms_squared = np.diagonal(inner_product_matrix)


    orthogonality_matrix = np.zeros_like(inner_product_matrix)
    accumulated_measure = 0  # 初始化累计结果
    for i in range(matrix.shape[1]):
      for j in range(i + 1, matrix.shape[1]):  # 确保 j > i
        if norms_squared[i] != 0 and norms_squared[j] != 0:
          accumulated_measure += inner_product_matrix[i, j] / np.sqrt(norms_squared[i] * norms_squared[j])

    return accumulated_measure

def read_matrix_from_txt(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()
        matrix = [[float(num) for num in line.split()] for line in lines]
    return np.array(matrix).T

# 读取矩阵
matrix = read_matrix_from_txt('../data/matrix.txt')

# 进行奇异值分解
U, S, V = np.linalg.svd(matrix)

print("Singular values:")
print(S)

matrix_U = read_U('../data/U.txt')
orth = orthogonality_measure(matrix_U)
print("orth: ", orth)

