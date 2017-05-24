#!/usr/bin/env julia

seen = Dict{String, Int}()

for word in readlines()
    if haskey(seen, word)
        seen[word] += 1
    else
        seen[word] = 1
    end
end

for (word, times) in seen
    println(word, " ", times)
end
