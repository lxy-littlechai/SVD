import numpy as np

def generate_matrix(rows, cols, filename):
    real_min, real_max = -50, 50  # 实部的最小值和最大值


    real_part = np.random.uniform(real_min, real_max, size=(rows, cols))
    matrix = real_part
    with open(filename, 'w') as file:
        for row in matrix:
            file.write(' '.join(f'{z:+.6f}' for z in row) + '\n')

    return matrix

def load_matrix_txt(filename):
    with open(filename, 'r') as file:
        matrix = np.array([float(z) for line in file for z in line.split()])
    size = int(np.sqrt(matrix.size))  
    return matrix.reshape((size, size))

def compute_svd(matrix):
    U, Sigma, Vt = np.linalg.svd(matrix, full_matrices=False)
    sorted_indices = np.argsort(Sigma)[::-1]
    Sigma_sorted = Sigma[sorted_indices]
    U_sorted = U[:, sorted_indices]
    return U_sorted, Sigma_sorted

def compute_svd_roundrobin(matrix, k=8, max_iter=10, tol=1e-8):
    """
    基于Givens变换的双边Jacobi SVD算法
    """
    A = np.array(matrix, dtype=float)
    n = A.shape[0]
    
    # 初始化单位矩阵
    U = np.eye(n)
    V = np.eye(n)
    
    def givens_rotation(a, b):
        """计算Givens旋转参数"""
        if abs(b) < 1e-12:
            return 1.0, 0.0
        if abs(a) < 1e-12:
            return 0.0, 1.0
        
        # 计算旋转角度
        if abs(b) > abs(a):
            tau = -a / b
            s = 1.0 / np.sqrt(1 + tau*tau)
            c = s * tau
        else:
            tau = -b / a
            c = 1.0 / np.sqrt(1 + tau*tau)
            s = c * tau
        
        return c, s
    
    def apply_givens_left(A, U, i, j, c, s):
        """应用左Givens旋转"""
        n = A.shape[0]
        
        # 对A应用旋转
        for k in range(n):
            temp = c * A[i, k] - s * A[j, k]
            A[j, k] = s * A[i, k] + c * A[j, k]
            A[i, k] = temp
        
        # 对U应用旋转
        for k in range(n):
            temp = c * U[k, i] - s * U[k, j]
            U[k, j] = s * U[k, i] + c * U[k, j]
            U[k, i] = temp
    
    def apply_givens_right(A, V, i, j, c, s):
        """应用右Givens旋转"""
        n = A.shape[0]
        
        # 对A应用旋转
        for k in range(n):
            temp = c * A[k, i] - s * A[k, j]
            A[k, j] = s * A[k, i] + c * A[k, j]
            A[k, i] = temp
        
        # 对V应用旋转
        for k in range(n):
            temp = c * V[k, i] - s * V[k, j]
            V[k, j] = s * V[k, i] + c * V[k, j]
            V[k, i] = temp
    
    def normalize_columns(matrix):
        """规范化矩阵的列向量"""
        n = matrix.shape[0]
        for j in range(n):
            norm = np.sqrt(np.sum(matrix[:, j]**2))
            if norm > 1e-12:
                matrix[:, j] = matrix[:, j] / norm
    
    for sweep in range(max_iter):
        changed = False
        
        # 遍历所有可能的行对
        for i in range(n):
            for j in range(i + 1, n):
                # 计算需要消除的元素
                a_ij = A[i, j]
                a_ji = A[j, i]
                
                # 检查是否需要旋转
                if abs(a_ij) < tol and abs(a_ji) < tol:
                    continue
                
                # 计算左Givens旋转参数（消除A[j,i]）
                c_left, s_left = givens_rotation(A[i, i], A[j, i])
                apply_givens_left(A, U, i, j, c_left, s_left)
                
                # 计算右Givens旋转参数（消除A[i,j]）
                c_right, s_right = givens_rotation(A[i, i], A[i, j])
                apply_givens_right(A, V, i, j, c_right, s_right)
                
                changed = True
        
        # 规范化U和V的列向量
        normalize_columns(U)
        normalize_columns(V)
        
        if not changed:
            break
    
    # 提取奇异值并排序
    S = np.diagonal(A)
    sorted_indices = np.argsort(S)[::-1]
    S = S[sorted_indices]
    U = U[:, sorted_indices]
    V = V[:, sorted_indices]
    
    return U, S, V.T

def save_results(matrix, filename):
    if np.iscomplexobj(matrix):
        with open(filename, 'w') as file:
            for row in matrix:
                file.write(' '.join(f'{z:.6f}' for z in row) + '\n')
    else:  # Sigma是实数
        np.savetxt(filename, matrix, fmt='%.6f')

matrix_file = './matrix.txt'
u_file = './gold/U.txt'
sigma_file = './gold/Sigma.txt'

ROW = 32
COL = 32

# generate_matrix(ROW, COL, matrix_file)
matrix = load_matrix_txt(matrix_file)
# matrix = np.hstack([matrix, np.random.uniform(0, 0, (matrix.shape[0], 10))])
U, Sigma = compute_svd(matrix)
U_roundrobin, Sigma_roundrobin, V_roundrobin = compute_svd_roundrobin(matrix, 2)

# compare U and Sigma
print(Sigma, Sigma_roundrobin)
print(Sigma - Sigma_roundrobin)

save_results(U_roundrobin, u_file)
save_results(Sigma_roundrobin, sigma_file)
