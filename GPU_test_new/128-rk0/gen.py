import random
import os

def generateHeader(pktType, ID):
    header = 0
    # Set bits [4:0] = ID
    header |= (ID & 0x1F)
    # Set bits [11:5] = 0 (already 0, but explicitly clear if needed)
    header &= ~(0x7F << 5)
    # Set bits [14:12] = pktType
    header |= ((pktType & 0x7) << 12)
    # Set bit [15] = 0 (already 0)
    header &= ~(1 << 15)
    # Set bits [20:16] = -1 (all 1s, which is 0x1F for 5 bits)
    header |= (0x1F << 16)
    # Set bits [27:21] = -1 (all 1s, which is 0x7F for 7 bits) - source column
    header |= (0x7F << 21)
    # Set bits [30:28] = 0 (already 0)
    header &= ~(0x7 << 28)
    # Calculate parity bit for bit [31]
    # XOR reduce bits [30:0]
    temp = header & 0x7FFFFFFF  # Mask bits [30:0]
    parity = 0
    while temp:
        parity ^= (temp & 1)
        temp >>= 1

    # Set bit [31] to inverse of parity (0 if odd number of 1s, 1 if even)
    if parity == 0:
        header |= (1 << 31)

    return header & 0xFFFFFFFF  # Ensure 32-bit unsigned


def generate_data(row, block_size, iter, filename) -> int:
    random.seed(random.randint(0, 1000000))

    os.makedirs(os.path.dirname(filename), exist_ok=True)

    with open(filename, 'w') as f:
        f.truncate(0)

        for i in range(iter):
            for j in range(block_size):
                data = []
                header = generateHeader(0, j)
                print(header)
                data.append(header)
                for k in range(row):
                    data.append(random.randint(0, 50))
                data.append(0)
                for item in range(0, len(data)-2, 4):
                    f.write(f'{data[item]} {data[item+1]} {data[item+2]} {data[item+3]}\n')
                f.write("TLAST\n")
                f.write(f'{data[len(data)-2]} {data[len(data)-1]}\n')


def generate_aie_param_data(row, iter, filename) -> int:
    os.makedirs(os.path.dirname(filename), exist_ok=True)

    with open(filename, 'w') as f:
        f.truncate(0)
        f.write('CMD,D,D,D,D,TLAST,TKEEP\n')
        f.write('STALL:1000,,,,,,\n')
        for i in range(iter):
            for j in range(row//4):
                f.write(f'DATA,{random.randint(0, 50)},{random.randint(0, 50)},{random.randint(0, 50)},{random.randint(0, 50)},0,-1\n')
        f.write('DATA,0,0,0,0,0,-1\n')


if __name__ == "__main__":

    data_dir = "./aie/data"

    row = 128
    block_size = 4
    iter = 1
    ptask = 1

    for task_id in range(1, ptask + 1):
        generate_data(row, block_size, iter, f"{data_dir}/{task_id}_sweep_in_0.txt")
        generate_data(row, block_size, iter, f"{data_dir}/{task_id}_sweep_in_1.txt")
        generate_data(row, block_size, iter, f"{data_dir}/{task_id}_norm_in_0.txt")

