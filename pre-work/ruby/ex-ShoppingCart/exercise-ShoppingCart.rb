# Shopping Cart
# by @christian.

require 'date'

class Cart
	def initialize
		@total_items = [ ]
	end

	def add_item(item)
		@total_items.push(item)
	end

	def calculate_total
		@total_price = 0
		@total_items.each do |item|
			@total_price += item.price
		end
		puts "Total $#{@total_price}"
		@total_price
	end

	def list_items
		@total_items.each { |item| puts "#{item.name} - #{item.price}$"}
		# puts @total_items
	end

	def discount
		@discount = 0

		if @total_price >= 100
			discount = 10
			@discount += discount
			puts "To buy more than $100 you get a discount of $#{discount}"
			discount
		end

		num_apples = @total_items.map{ |item| item.name}.grep(/Apple/).size
		apple_price = @total_items.find{ |item| item.name == "Apple"}.price
		divmod_apple = num_apples.divmod(2)
		if num_apples > 0
			# puts "num_apples #{num_apples}"
			discount = divmod_apple.at(0) * apple_price
			@discount += discount
			puts "2x1 in apples. You get a discount of $#{discount}"
			# puts "divmod #{divmod_apple}"
			# puts "multiplicador #{divmod_apple.at(0)} resto #{divmod_apple.at(1)}"
			# puts "num_apples #{num_apples} discount $#{discount} total discount $#{@discount}"
			discount			
		end

		if @total_items.count > 5
			puts "discount accumulated $#{@discount}"
			discount = (@total_price - @discount) * 0.15
			@discount += discount
			puts "To buy more than 5 items, you get a 15% discount $#{discount}"
			discount
		end

		num_watermelons = @total_items.map{ |item| item.name}.grep(/Watermelon/).size
		watermelon_price = @total_items.find{ |item| item.name == "Watermelon"}.price
		if Date.today.saturday? || Date.today.sunday? || Date.today.monday?
			# puts "num_watermelons #{num_watermelons}"
			discount = (num_watermelons * watermelon_price) * 0.10
			@discount += discount
			puts "To buy on weekends, you get a 10% discount in watermelons $#{discount}"
			discount
		end
		puts "Your total discount is $#{@discount}"
		@total_price = @total_price - @discount
		puts "You have to pay $#{@total_price}"
		@total_price
	end

end

class Items
	attr_accessor :name, :price
	def initialize(name,price)
		@name = name
		@price = price
	end
end

class Apples < Items
end

class Oranges < Items
end

class Grapes < Items
end

class Bananas < Items
end

class Watermelons < Items
end

# defino precios de los items
apple = Apples.new("Apple", 10)
orange = Oranges.new("Orange",5)
grape = Grapes.new("Grape", 15)
banana = Bananas.new("Banana", 20)
watermelon = Watermelons.new("Watermelon", 50)

# oranges.price
# bananas.price

# creo y añado items a la Shopping Cart
my_cart = Cart.new
my_cart.add_item(apple)
my_cart.add_item(apple)
my_cart.add_item(apple)
my_cart.add_item(orange)
my_cart.add_item(grape)
my_cart.add_item(banana)
my_cart.add_item(watermelon)
my_cart.add_item(watermelon)
my_cart.add_item(watermelon)
my_cart.list_items
my_cart.calculate_total
my_cart.discount
