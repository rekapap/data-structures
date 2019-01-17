# frozen_string_literal: true

require_relative '../lib/stack'

# PROBLEM:
# read a series of positive numbers from the stdin
# and every time you read one number
# print out the MAX and the MIN number in the stack
# if the number is -1 pop the top of the stack

def main
  puts ['0 - stop', '-1 - pop', 'any positive number get added to the stack']
  stack = Stack.new
  min = Stack.new
  max = Stack.new
  loop_numbers(stack, min, max)
end

def loop_numbers(stack, min, max)
  loop do
    number = ask_number
    case number
    when 0 then break
    when -1 then pop(stack, min, max)
    else
      add(stack, min, max, number)
    end
  end
end

def ask_number
  puts('Gimme a number')
  gets.chomp.to_i
end

def display_state(min, max)
  puts "Min: #{min.top}"
  puts "Max: #{max.top}"
end

def pop(stack, min, max)
  popped = stack.pop
  min = pop_min(popped, min)
  max = pop_max(popped, max)
  display_state(min, max)
end

def add(stack, min, max, number)
  return if number.negative?

  min = add_min(number, min)
  max = add_max(number, max)
  stack.push(number)
  display_state(min, max)
end

def add_min(number, min_stack)
  min_stack.push(number) if min_stack.empty? || min_stack.top >= number
  min_stack
end

def add_max(number, max_stack)
  max_stack.push(number) if max_stack.empty? || max_stack.top <= number
  max_stack
end

def pop_max(number, max_stack)
  max_stack.pop if number == max_stack.top
  max_stack
end

def pop_min(number, min_stack)
  min_stack.pop if number == min_stack.top
  min_stack
end

main
