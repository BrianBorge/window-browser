module WindowBrowser
  class Node
    attr_accessor :children

    def initialize(children: [])
      @children = children
    end

    def first_child
      children.first
    end

    def children?
      children.any?
    end

    def type
      self.class
    end
  end
end

