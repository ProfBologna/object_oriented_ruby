# items_1 = ["item_name" => "chair", "item_cost" => 5, "color" => "brown", "item_status" => true]

# item_2 = [item_name: table, item_cost: 80000, color: red, item_status: true]

# item_3 = [:item_name => "blanket", :item_cost => 999, :color => "blue", :item_status => false]

class Items
  attr_reader :name, :cost, :color, :availability
  attr_writer :cost, :availability

  def initialize(input_options)
    @name = input_options[:name]
    @cost = input_options[:cost]
    @color = input_options[:color]
    @availability = input_options[:availability]
  end

  # def name
  #   @name
  # end

  # def cost
  #   @cost
  # end

  # def cost=(new_cost)
  #   @cost = new_cost
  # end

  # def color
  #   @color
  # end

  # def availability
  #   @availability
  # end

  # def availability=(new_availability)
  #   @availability = new_availability
  # end


end

item3 = Items.new(
                  name: "blanket",
                  cost: 999, 
                  color: "blue", 
                  availability: false
                  )

class Furniture < Items

  attr_reader :wood
  def initialize(input_options)
    super
    @wood = input_options[:wood]
  end
end

item1 = Furniture.new(
                  name: "chair",
                  cost: 5, 
                  color: "brown",
                  availability: true,
                  wood: false
                  )

item2 = Furniture.new(
                  name: "table", 
                  cost: 80000, 
                  color: "red",
                  availability: true,
                  wood: true
                  )

p item1
p item2
p item3