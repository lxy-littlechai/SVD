import random

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

def generate_data(row, block_size, filename) -> int:
    random.seed(random.randint(0, 1000000))
    data = []
    with open(filename, 'w') as f:
        for i in range(block_size):
            header = generateHeader(0, i)
            data.append(header)
            for j in range(row):
                data.append(random.randint(0, 50))
            data.append(0)
            for item in range(0, len(data)-2, 4):
                f.write(f'{data[item]} {data[item+1]} {data[item+2]} {data[item+3]}\n')
            f.write("TLAST\n")
            f.write(f'{data[len(data)-2]} {data[len(data)-1]}\n')

if __name__ == "__main__":
    generate_data(32, 1, "../testAIEGold/data/1_1_sweep_inL.txt")
    generate_data(32, 1, "../testAIEGold/data/1_1_sweep_inR.txt")