require_relative '../node'

module WindowBrowser
  module NodeTypes
    class Element < Node
      attr_reader :tag_name, :attributes

      def initialize(tag_name:, attributes: {}, children: [])
        @tag_name = tag_name
        @attributes = attributes

        super(children: children)
      end
    end
  end
end
