import numpy as np
import random

class JacobiSVD:
    """
    处理两个块的 Jacobi SVD
    接受两个块，按奇偶穿插方式组合成大块，然后进行正交化
    """
    def __init__(self, iter=15):
        self.iter = iter
    
    @staticmethod
    def sign(x):
        if x > 0: return 1
        elif x == 0: return 0
        else: return -1

    def orthogonalize(self, A, V, i, j):
        """对 A 的第 i 行和第 j 行进行 Jacobi 旋转"""
        ai = A[i]
        aj = A[j]
        # dot products
        tmp_i = np.dot(ai, ai)
        tmp_j = np.dot(aj, aj)
        tmp_ij = np.dot(ai, aj)
        conv = abs(tmp_ij) / np.sqrt(tmp_i * tmp_j) if tmp_i != 0 and tmp_j != 0 else 0
        if conv == 0:
            return 0
        
        tau = (tmp_i - tmp_j) / (2 * tmp_ij)
        t = self.sign(tau) / (abs(tau) + np.sqrt(1 + tau * tau))
        c = 1 / np.sqrt(1 + t * t)
        s = t * c
        # Jacobi rotation
        tmp_ai = c * ai + s * aj
        tmp_aj = -s * ai + c * aj
        tmp_vi = c * V[i] + s * V[j]
        tmp_vj = -s * V[i] + c * V[j]
        A[i], A[j] = tmp_ai, tmp_aj
        V[i], V[j] = tmp_vi, tmp_vj
        return conv
    
    def round_robin_pairs(self, num_blocks):
        """
        生成块级别的 round-robin 配对序列
        固定最后一个元素，其他元素循环旋转
        
        例如 8 个块：
        第1轮: (0,1), (2,3), (4,5), (6,7)
        第2轮: (1,3), (0,5), (2,6), (4,7)
        ...
        
        参数:
            num_blocks: 块的数量（必须是偶数）
        
        返回:
            列表的列表，每个子列表包含一轮的块对 (i, j)
        """
        if num_blocks % 2 != 0:
            raise ValueError("Number of blocks must be even")

        all_pairs = []
        # 初始化：前 n-1 个元素 + 固定的最后一个元素
        teams = list(range(num_blocks - 1)) + [num_blocks - 1]

        for round_idx in range(num_blocks - 1):
            
            # 配对方式：从两端向中间配对
            pairs = []
            for i in range(0, num_blocks, 2):
                pairs.append((teams[i], teams[i+1]))
            
            temp = teams.copy()
            temp[0] = teams[1]
            temp[num_blocks - 1] = teams[num_blocks - 1]
            temp[num_blocks - 3] = teams[num_blocks - 2]
            for i in range(0, num_blocks - 2, 2):
                temp[i+2] = teams[i]
            for i in range(3, num_blocks - 2, 2):
                temp[i-2] = teams[i]
            teams = temp
            all_pairs.append(pairs)

        return all_pairs

    def offset_ring_order(self, n):
        """生成 offset ring order 的配对序列"""
        # 基本环结构 - 需仿照C++ JacobiEven
        ring0 = np.zeros((n//2, n+1), dtype=np.int32)
        ring1 = np.zeros((n//2, n+1), dtype=np.int32)
        for i in range(0, n, 2):
            ring0[i//2, 0] = i
            ring1[i//2, 0] = i+1
        ptr = n//2 - 1
        for i in range(n):
            ring0[ptr, i], ring1[ptr, i] = ring1[ptr, i], ring0[ptr, i]
            for j in range(n//2):
                ring0[j, i+1] = ring0[j, i]
                ring1[j, i+1] = ring1[(j+1)%(n//2), i]
            ring0[ptr, i], ring1[ptr, i] = ring1[ptr, i], ring0[ptr, i]
            if i & 1: ptr -=1
        # 给环加偏移
        offset = 0
        for i in range(n):
            if i & 1:
                offset = (offset - 1 + (n//2)) % (n//2)
            tmp0 = [ring0[(j+offset+(n//2))%(n//2), i+1] for j in range(n//2)]
            tmp1 = [ring1[(j+offset+(n//2))%(n//2), i+1] for j in range(n//2)]
            for j in range(n//2):
                ring0[j, i+1] = tmp0[j]
                ring1[j, i+1] = tmp1[j]
        # 返回每一轮的配对序列
        all_pairs = []
        for sweep in range(n):
            pairs = [(ring0[j, sweep+1], ring1[j, sweep+1]) for j in range(n//2)]
            all_pairs.append(pairs)
        return all_pairs

    def fit_block_pair(self, block1, block2, V1, V2, ifprint=False):
        """
        处理两个块的 Jacobi SVD
        
        参数:
            block1: 第一个块，形状 [n, block_size1]，每一行是一个"列向量"
            block2: 第二个块，形状 [n, block_size2]
            V1: 第一个块对应的 V 矩阵，形状 [block_size1, block_size1]
            V2: 第二个块对应的 V 矩阵，形状 [block_size2, block_size2]
        
        返回:
            更新后的 block1, block2, V1, V2 和收敛度 conv
        """
        block1 = np.array(block1, dtype=np.float64)
        block2 = np.array(block2, dtype=np.float64)
        V1 = np.array(V1, dtype=np.float64)
        V2 = np.array(V2, dtype=np.float64)

        
        n = block1.shape[0]
        size1 = block1.shape[1]
        size2 = block2.shape[1]
        total_size = size1 + size2
        
        # 按奇偶穿插组合两个块
        # block1 的列放在偶数索引位置，block2 的列放在奇数索引位置
        A = np.zeros((total_size, n), dtype=np.float64)
        V = np.zeros((total_size, total_size), dtype=np.float64)
        
        # 穿插组合（以行为单位，因为每一行代表一个列向量）
        for i in range(size1):
            A[2*i] = block1[:, i] if i < size1 else np.zeros(n)
            for j in range(size1):
                V[2*i, 2*j] = V1[i, j]
        
        for i in range(size2):
            A[2*i+1] = block2[:, i] if i < size2 else np.zeros(n)
            for j in range(size2):
                V[2*i+1, 2*j+1] = V2[i, j]
        
        # 如果两个块大小不同，处理剩余部分
        if size1 > size2:
            for i in range(size2, size1):
                A[size2 + i] = block1[:, i]
                for j in range(size1):
                    V[size2 + i, 2*j] = V1[i, j]
        elif size2 > size1:
            for i in range(size1, size2):
                A[size1 + i] = block2[:, i]
                for j in range(size2):
                    V[size1 + i, 2*j+1] = V2[i, j]
        
        # 进行 Jacobi 旋转
        conv = 0
        step = 0
        all_pairs = self.round_robin_pairs(total_size)
        for pairs in all_pairs:
            for (i, j) in pairs:
                step += 1
                if step == 1:
                    # 以IEEE 754格式32位float输出A[i]和A[j]（以16进制字符串输出）
                    import struct
                    def float_to_ieee754_hex(x):
                        # 使用大端转换, 使22->0x41b00000
                        return '0x' + struct.pack('>f', float(x)).hex()
                    print(i, j, A[i], A[j])
                    # print([float_to_ieee754_hex(x) for x in A[i]],
                    #       [float_to_ieee754_hex(x) for x in A[j]])
                tmpconv = self.orthogonalize(A, V, i, j)
                conv = max(conv, tmpconv)
                print(i,j,tmpconv)
                #if ifprint:
                    #print("-----------------------------------------------------------------")
                    #print(A[i], A[j])
                    # print([float_to_ieee754_hex(x) for x in A[i]],
                    #       [float_to_ieee754_hex(x) for x in A[j]])
        
        # 分离回两个块
        block1_new = np.zeros_like(block1)
        block2_new = np.zeros_like(block2)
        V1_new = np.zeros_like(V1)
        V2_new = np.zeros_like(V2)
        
        for i in range(size1):
            block1_new[:, i] = A[2*i] if 2*i < total_size else A[size2 + i]
            for j in range(size1):
                V1_new[i, j] = V[2*i, 2*j] if 2*i < total_size and 2*j < total_size else V[size2 + i, 2*j]
        
        for i in range(size2):
            block2_new[:, i] = A[2*i+1] if 2*i+1 < total_size else A[size1 + i]
            for j in range(size2):
                V2_new[i, j] = V[2*i+1, 2*j+1] if 2*i+1 < total_size and 2*j+1 < total_size else V[size1 + i, 2*j+1]
        
        return block1_new, block2_new, V1_new, V2_new, conv


class BlockJacobiSVD:
    """
    块级 Jacobi SVD 管理类
    负责矩阵分块、round_robin 块对调度、最终规范化
    """
    def __init__(self, block_size, iter=15):
        self.block_size = block_size
        self.iter = iter
        self.jacobi_svd = JacobiSVD(iter=1)  # 每次块对处理只做一轮
    
    def round_robin_pairs(self, num_blocks):
        """
        生成块级别的 round-robin 配对序列
        固定最后一个元素，其他元素循环旋转
        
        例如 8 个块：
        第1轮: (0,1), (2,3), (4,5), (6,7)
        第2轮: (1,3), (0,5), (2,6), (4,7)
        ...
        
        参数:
            num_blocks: 块的数量（必须是偶数）
        
        返回:
            列表的列表，每个子列表包含一轮的块对 (i, j)
        """
        if num_blocks % 2 != 0:
            raise ValueError("Number of blocks must be even")

        all_pairs = []
        # 初始化：前 n-1 个元素 + 固定的最后一个元素
        teams = list(range(num_blocks - 1)) + [num_blocks - 1]

        for round_idx in range(num_blocks - 1):
            
            # 配对方式：从两端向中间配对
            pairs = []
            for i in range(0, num_blocks, 2):
                pairs.append((teams[i], teams[i+1]))
            
            temp = teams.copy()
            temp[0] = teams[1]
            temp[num_blocks - 1] = teams[num_blocks - 1]
            temp[num_blocks - 3] = teams[num_blocks - 2]
            for i in range(0, num_blocks - 2, 2):
                temp[i+2] = teams[i]
            for i in range(3, num_blocks - 2, 2):
                temp[i-2] = teams[i]
            teams = temp
            all_pairs.append(pairs)

        return all_pairs
    
    def fit(self, matrix):
        """
        对矩阵进行分块 Jacobi SVD
        
        参数:
            matrix: 输入矩阵
        
        返回:
            U, sigma, V: SVD 分解结果
        """
        matrix = np.array(matrix, dtype=np.float64)
        A = matrix.copy()
        
        # 转置以保持行主存储（每一行是一个列向量）
        if A.shape[0] < A.shape[1]:
            A = A.T
        
        n_rows, n_cols = A.shape
        
        # 按列分块（在我们的表示中是按行分块，因为转置了）
        num_blocks = (n_cols + self.block_size - 1) // self.block_size
        
        # 如果块数是奇数，调整为偶数
        if num_blocks % 2 != 0:
            num_blocks += 1
        
        # 初始化块和对应的 V 矩阵
        blocks = []
        Vs = []
        
        for i in range(num_blocks):
            start_idx = i * self.block_size
            end_idx = min((i + 1) * self.block_size, n_cols)
            actual_size = end_idx - start_idx
            
            if actual_size > 0:
                block = A[:, start_idx:end_idx]
                blocks.append(block)
                Vs.append(np.eye(actual_size))
            else:
                # 填充空块
                blocks.append(np.zeros((n_rows, self.block_size)))
                Vs.append(np.eye(self.block_size))
        
        # 迭代进行块对正交化
        step = 0
        for it in range(self.iter):
            all_pairs = self.round_robin_pairs(num_blocks)
            max_conv = 0
            
            for pairs in all_pairs:
                for (i, j) in pairs:
                    # 对块对 (i, j) 进行正交化
                    step = step + 1
                    blocks[i], blocks[j], Vs[i], Vs[j], conv = \
                        self.jacobi_svd.fit_block_pair(blocks[i], blocks[j], Vs[i], Vs[j], ifprint=step == 1)
                    print(f"Block {i} and Block {j} convergence: {conv:.6f}")
                    max_conv = max(max_conv, conv)
            
            print(f"Iteration {it+1}/{self.iter}, max convergence: {max_conv:.6f}")
        
        # 合并所有块
        A_final = np.hstack([blocks[i][:, :min(self.block_size, n_cols - i*self.block_size)] 
                             for i in range(num_blocks) if i*self.block_size < n_cols])
        
        # 规范化：计算奇异值和 U
        sigma = np.linalg.norm(A_final, axis=0)
        U = A_final / (sigma[np.newaxis, :] + 1e-10)
        
        # 合并 V 矩阵
        V_final = np.zeros((n_cols, n_cols))
        for i in range(num_blocks):
            start_idx = i * self.block_size
            end_idx = min((i + 1) * self.block_size, n_cols)
            actual_size = end_idx - start_idx
            if actual_size > 0:
                V_final[start_idx:end_idx, start_idx:end_idx] = Vs[i][:actual_size, :actual_size]
        
        return U.T, sigma, V_final

# 用法示例
if __name__ == "__main__":
    np.random.seed(0)
    col, row = 32, 32
    mat = np.zeros((col, row))  # 小一点调试方便
    for j in range(col):
        for i in range(row):
            mat[j][i] = random.randint(0, 50)
    #np.savetxt("matrix.txt", mat, fmt="%.0f")
    mat = np.loadtxt("matrix.txt")
    svd = BlockJacobiSVD(block_size=16, iter=1)
    U, sigma, V = svd.fit(mat)

    gold_svd = np.linalg.svd(mat, full_matrices=False)
    print("Gold Sigma=", sorted(gold_svd[1], reverse=True))
    print("Sigma=", sorted(sigma, reverse=True))
