require "./store_module.rb"

module Samstore

  class Items

    include Sale

    attr_reader :name, :cost, :color, :availability
    attr_writer :cost, :availability

    def initialize(input_options)
      @name = input_options[:name]
      @cost = input_options[:cost]
      @color = input_options[:color]
      @availability = input_options[:availability]
    end

    def print_info
      puts "The #{name} costs #{cost} and is #{color}."
    end
    
  end
end