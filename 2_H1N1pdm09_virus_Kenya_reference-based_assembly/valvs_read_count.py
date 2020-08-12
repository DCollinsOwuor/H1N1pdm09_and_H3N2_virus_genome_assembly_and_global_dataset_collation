#!/usr/bin/python
import sys
with open(sys.argv[1], "r") as f:
    count = 1
    for en, i in enumerate(f):
        count += 1
    f.close()
print(count / 4)
