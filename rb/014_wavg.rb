#!/usr/bin/env ruby

data = STDIN.map{|line| line.split.map &:to_f }
puts data.map{|n,w| n*w}.inject(:+) / data.map(&:last).inject(:+)
