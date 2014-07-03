class Node
  attr_accessor :children, :value, :parent

  def initialize(value)
    @value = value
    @children = []
    @parent = nil
  end
end

class Tree
  attr_reader :head, :head, :nodes

  def initialize(value)
    @head = nil
    @head2 = nil
    @nodes = []
  end

# can pass in tree.head for node
  def add_node(value, node=nil)
    new_node = Node.new(value)
      if node
        new_node.parent = node
        node.children << new_node
      else
        @head = new_node
      end
  end

  def remove_node(node)
    if node.parent
      parent = node.parent
      parent.children.delete_at(parent.children.index(node))
    end
    node
  end

  def create_tree(node)
    @head2 = remove_node(node)
  end

end


# tree.head.children.first
