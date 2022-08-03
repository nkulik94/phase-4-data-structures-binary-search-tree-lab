require 'pry'
require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def check(node, value)
    if node
      if node.value == value
        node
      else
        check(node.value < value ? node.right : node.left, value)
      end
    end
  end

  def search(value)
    check(self.root, value)
  end

  def insert(value)
    node = Node.new(value)
    if !self.root
      self.root = node
      return node
    end

    self.root.add_child(node)
  end

end 

# binding.pry
# 0
