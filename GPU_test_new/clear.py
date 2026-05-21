import os
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed

def run_make_in_dir(dir_path):
    try:
        # First, run 'make clear_all TARGET=hw'
        clear_result = subprocess.run(['make', 'clear_all', 'TARGET=hw'], cwd=dir_path, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        # Then, run 'make all TARGET=hw'
        # result = subprocess.run(['make', 'all', 'TARGET=hw'], cwd=dir_path, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        # # Combine outputs of both commands for easier debugging
        # combined_stdout = (clear_result.stdout or '') + (result.stdout or '')
        # combined_stderr = (clear_result.stderr or '') + (result.stderr or '') + (result.stderr or '')
        return (dir_path, clear_result.returncode, clear_result.stdout, clear_result.stderr)
    except Exception as e:
        return (dir_path, -1, '', str(e)) + (result.stderr or '')

if __name__ == "__main__":
    dirs = [name for name in os.listdir('.') if os.path.isdir(name)]
    futures = []
    with ThreadPoolExecutor() as executor:
        for d in dirs:
            futures.append(executor.submit(run_make_in_dir, d))
        for f in as_completed(futures):
            dir_path, code, out, err = f.result()
            print(f"=== {dir_path}: Return Code {code} ===")
            if out:
                print(f"--- STDOUT ---\n{out}")
            if err:
                print(f"--- STDERR ---\n{err}")
