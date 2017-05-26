#!/usr/bin/env ruby

def calc op, a, b
    case op
    when ?+ then b+a
    when ?- then b-a
    when ?* then b*a
    when ?/ then b/a
    end
end

# shunting-yard
stack = []
ops = []
gets.scan(/[0-9]+|[-+*\/()]/).each do |token|
    if token == ?(
        ops.push token
    elsif token == ?)
        until (op = ops.pop) == ?(
            stack.push calc op, stack.pop, stack.pop
        end
    elsif '+-*/'.include? token
        while ops.last && ops.last != ?( &&
                ('+-'.include?(token) || '*/'.include?(ops.last))
            stack.push calc ops.pop, stack.pop, stack.pop
        end
        ops.push token
    else
        stack.push token.to_i
    end
end

while op = ops.pop
    stack.push calc op, stack.pop, stack.pop
end

# there should always be exactly one item on the stack at this point
puts stack.last
