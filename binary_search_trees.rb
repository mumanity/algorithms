require 'pry-debugger'

class Node
  attr_accessor :left, :right, :value, :parent, :array

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @parent = nil
    @array = []
  end
end

class BinaryTree
  attr_reader :head, :nodes

  def initialize
    @head = nil
  end

  def add_node(value)
    new_node = Node.new(value)
    if @head == nil
      @head = new_node
    else
      node = @head
      while true
        if new_node.value > node.value
          if node.right
            node = node.right
          else
            new_node.parent = node
            node.right = new_node
            node = new_node
          end
        elsif new_node.value < node.value
          if node.left
            node = node.left
          else
            new_node.parent = node
            node.left = new_node
            node = new_node
          end
        else
          break
        end
      end
    end
  end

  def print
    if @head == nil
      puts 'the tree is empty'
    else
      node = @head
      binding.pry
      node.each do |n|
        @array << n.value
      end
      @array.sort
    end
  end

end


# load 'binary_search_trees.rb'
tree = BinaryTree.new
tree.add_node(5)
tree.add_node(4)
tree.add_node(3)
tree.add_node(9)
tree.add_node(11)
tree.add_node(7)






