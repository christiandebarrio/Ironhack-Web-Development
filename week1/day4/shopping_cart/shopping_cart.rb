require 'pry'

class ShoppingCart
	attr_reader :list_cart

	def initialize
		@list_cart = {"": 0}
	end

	def add_item_to_cart item
    binding.pry
		if @list_cart[item.name].exists?
			@list_cart[item.name] += 1
		else
			@list_cart[item.name] = 1
		end
	end

	def show
		puts @list_cart
	end

	def cost

	end
end

class Apple
	attr_reader :name, :price

	def initialize
		@name = "apple"
		@price = 10
	end
end

class Orange
	def initialize
		@price = 5
	end
end

class Grape
	def initialize
		@price = 15
	end
end

class Banana
	def initialize
		@price = 20
	end
end

class Watermelon
	def initialize
		@price = 50
	end
end


cart = ShoppingCart.new
apple = Apple.new

cart.add_item_to_cart apple
cart.add_item_to_cart apple

#cart.add_item_to_cart :banana
#cart.add_item_to_cart :banana

cart.show
#1 apple: 10$
#2 bananas: 40$

#cart.cost = 50

list_fruits = {
	apple: 10,
	oranges: 5,
	grapes: 15,
	banana: 20,
	watermelon: 50
}

binding.pry