#!/usr/bin/env python3

s = input()
for i in range(len(s)): print(s[i:] + s[:i])
