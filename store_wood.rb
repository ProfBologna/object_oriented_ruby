 module Samstore

  class Furniture < Items
    attr_reader :wood
    
    def initialize(input_options)
      super
      @wood = input_options[:wood]
    end
    
  end
end
