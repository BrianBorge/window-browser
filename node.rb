class Node
  attr_accessor :type, :children

  def initialize(type:, children: [])
    @type = type
    @children = children
  end
end
