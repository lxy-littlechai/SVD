import os

def main():
    testcases = [128, 256, 512, 1024, 2048, 4096]

    for case in testcases:
        os.system(f"python3 main.py --PATH=./FPGA_test/{case} --COL={case} --ROW={case} --BATCH=1 --ITER=1 --optimize=1")
        os.system(f"python3 main.py --PATH=./GPU_test/{case} --COL={case} --ROW={case} --BATCH=100 --ITER=1 --optimize=1")

if __name__ == "__main__":
    main()