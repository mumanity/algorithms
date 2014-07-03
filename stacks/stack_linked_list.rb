class StackLinkedList
  attr_reader

  def initialize
    @node = nil
  end

  def add_child(value)
    n = StackLinkedList::Node.new(value)
    # binding.pry
    @child << n
    n
  end

  def remove_child
    @children.pop
  end

  def count
    @children.length
  end

  def peek
  end

class Node
  attr_accessor :value, :child

  def initialize(value)
    @value = value
    @child = []
  end

end

end



