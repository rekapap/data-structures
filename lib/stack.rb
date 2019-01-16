# frozen_string_literal: true

# Stack data structure
class Stack
  EMPTY_STACK_ERROR = 'Stack is empty!'

  def initialize
    @data = []
  end

  # returns true if no elements in the stack
  def empty?
    @data.empty?
  end

  # puts an element on the top of the stack
  def push(element)
    @data.push(element)
  end

  # returns the top element of the stack
  def top
    raise EMPTY_STACK_ERROR if @data.empty?

    @data.last
  end
end
