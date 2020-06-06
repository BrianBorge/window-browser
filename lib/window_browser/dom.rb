require_relative 'node_types/text'
require_relative 'node_types/element'

module WindowBrowser
  class Dom
    attr_reader :root_node

    def initialize(node)
      @root_node = node
    end

    def self.text_node(string)
      NodeTypes::Text.new(string: string)
    end

    def self.element_node(tag_name:, attributes: {}, children: [])
      NodeTypes::Element.new(
        tag_name: tag_name,
        attributes: attributes,
        children: children
      )
    end
  end
end

dom = WindowBrowser::Dom.new(
  WindowBrowser::Dom.element_node(
    tag_name: 'div',
    children: [
      WindowBrowser::Dom.element_node(tag_name: 'div'),
      WindowBrowser::Dom.element_node(tag_name: 'span'),
      WindowBrowser::Dom.element_node(tag_name: 'p'),
      WindowBrowser::Dom.element_node(
        tag_name: 'div',
        children: [
          WindowBrowser::Dom.element_node(tag_name: 'div'),
          WindowBrowser::Dom.element_node(tag_name: 'span'),
          WindowBrowser::Dom.element_node(tag_name: 'p')
        ]
      )
    ]
  )
)

puts dom.root_node.children.count
