#!/usr/bin/env julia

n = parse(Int, readline())
digits = chomp(readline())
b = length(digits)
converted = []

while n ≠ 0
    unshift!(converted, digits[n % b + 1])
    n ÷= b
end

println(join(converted))
