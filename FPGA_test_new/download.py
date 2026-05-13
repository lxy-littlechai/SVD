import os
import subprocess

# 枚举当前目录下的所有文件夹
current_dir = os.getcwd()
folders = [f for f in os.listdir(current_dir) if os.path.isdir(f)]

for folder in folders:
    xclbin_dir = os.path.join(folder, 'hw.xclbin_dir')
    img_path = os.path.join(xclbin_dir, 'sd_card.img')
    if os.path.exists(img_path):
        # 构造scp命令
        # 注意：
        # 1. 添加用户名 16117@
        # 2. scp命令列表中添加 '-P', '58082'
        scp_target = f'16117@10.112.209.166:"C:/Users/16117/Desktop/SVD实验/FPGATestNew/{folder}.img"'
        
        # 在 scp 后面紧跟端口参数
        scp_cmd = ['scp', img_path, scp_target]
        print(scp_cmd)
        try:
            subprocess.run(scp_cmd, check=True)
            print(f"已传送: {img_path}")
        except subprocess.CalledProcessError as e:
            print(f"传送失败: {img_path}, 错误: {e}")
