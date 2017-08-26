require "./store_item.rb"

module Samstore

  module Sale

    def on_sale
      puts "The #{name} is on sale!"
    end

    def sale_price
      @cost = @cost * 0.70
    end

  end
end