require_relative 'node'
require_relative 'node_types'

class Dom
  attr_reader :root_node

  def initialize(node)
    @root_node = node
  end

  def self.text_node(string)
    Node.new(
      type: NodeTypes::Text.new(string)
    )
  end

  def self.element_node(tag_name:, attributes: {}, children: [])
    Node.new(
      type: NodeTypes::Element.new(
        tag_name: tag_name,
        attributes: attributes
      ),
      children: children
    )
  end
end
