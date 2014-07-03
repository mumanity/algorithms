class StackArray
  attr_reader :stack

  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def pop(item)
    @stack.pop
  end

  def count
    @stack.length
  end

  def peek
    @stack.last
  end

end
