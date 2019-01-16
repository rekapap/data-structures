# Stack data structure
class Stack
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

  def top
    1
  end
end