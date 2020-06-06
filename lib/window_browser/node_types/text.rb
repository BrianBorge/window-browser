require_relative '../node'

module WindowBrowser
  module NodeTypes
    class Text < Node
      attr_accessor :string

      def initialize(string:, children: [])
        @string = string

        super(children: children)
      end
    end
  end
end
