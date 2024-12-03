# execute "make clear_all TARGET=hw" and "make clear_all" in all recursive subdirectories

import os

def clear_all(dir, level=0):
    print(f"Clearing all in {dir}")
    if os.path.isdir(dir) and level <= 4:
        # execute 
        os.system(f"make clear_all TARGET=hw -C {dir}")
        os.system(f"make clear_all -C {dir}")
        # if .ipcache exists, delete it
        if os.path.exists(os.path.join(dir, ".ipcache")):
            os.system(f"rm -rf {os.path.join(dir, '.ipcache')}")
        # if toppl directory exists, delete it
        if os.path.exists(os.path.join(dir, "toppl")):
            os.system(f"rm -rf {os.path.join(dir, 'toppl')}")
    else:
        return
    # recursively call clear_all for all subdirectories
    for subdir in os.listdir(dir):
        clear_all(os.path.join(dir, subdir), level + 1)

clear_all(".")