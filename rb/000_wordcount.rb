#!/usr/bin/env ruby

puts STDIN.each_with_object(Hash.new 0) do |word, hsh|
    hsh[word.chomp] += 1
end.map{|k, v| "#{k} #{v}"}
