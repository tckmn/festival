#!/usr/bin/env python3

import sys

data = [list(map(float, a)) for a in map(str.split, sys.stdin.readlines())]
x, y = map(list, zip(*data))
mx, my = [sum(vals) / len(vals) for vals in (x, y)]
sx, sy = [(sum((v-mean)**2 for v in vals) / (len(vals)-1))**0.5
          for (vals, mean) in ((x, mx), (y, my))]
b1 = sum((x-mx)*(y-my) for (x, y) in data) / ((len(x)-1) * sx**2)
b0 = my - b1*mx
print(b0)
print(b1)
