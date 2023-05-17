import os
import sys

if len(sys.argv) > 2:
    print("Need at least one argument.")
    sys.exit(0)

filepath = sys.argv[1]
barepath = ".".join(filepath.split(".")[:-1])

os.system(f"as {filepath} -o {barepath}.o")
os.system(f"gcc {barepath}.o -o {barepath} -nostdlib -static")