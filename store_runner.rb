require "./store_item.rb"
require "./store_wood.rb"


item3 = Samstore::Items.new(
                  name: "blanket",
                  cost: 999, 
                  color: "blue", 
                  availability: false
                  )

item1 = Samstore::Furniture.new(
                  name: "chair",
                  cost: 5, 
                  color: "brown",
                  availability: true,
                  wood: false
                  )

item2 = Samstore::Furniture.new(
                  name: "table", 
                  cost: 80000, 
                  color: "red",
                  availability: true,
                  wood: true
                  )

item2.print_info

p item2.on_sale