module NodeTypes
  class Text
    attr_reader :string

    def initialize(string)
      @string = string
    end
  end

  class Element
    attr_reader :tag_name, :attributes

    def initialize(tag_name:, attributes: {})
      @tag_name = tag_name
      @attributes = attributes
    end
  end
end
