class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  # def get_child value
  #   if self.value == value
  #     self
  #   else
  #     self.value < value ? self.right : self.left
  #   end
  # end

  def correct_child node
    if self.value < node.value
      self.right = self.right ? self.right : node
    elsif self.value > node.value
      self.left = self.left ? self.left : node
    end
  end

  def add_child(node)
    child = self.correct_child(node)

    if child
      child = child.correct_child(node) until !child || child.value == node.value
    end

    child
  end
end
