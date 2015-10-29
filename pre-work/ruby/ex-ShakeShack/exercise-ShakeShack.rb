class ShackShop
	def initialize
		@list_milkshakes = [ ]
	end

	def add_milkshake(milkshake)
		@list_milkshakes.push(milkshake)
	end

	def checkout_milkshakes
		total_price_checkout = 0
		@list_milkshakes.each do |milkshake|
			print milkshake.name, " - ", milkshake.price_of_milkshake, "€\n"
			total_price_checkout += milkshake.price_of_milkshake
		end
		print "Total: ", total_price_checkout, "€\nThank's for comming"
		total_price_checkout
	end

end

class MilkShake
	attr_reader :name
	def initialize(name)
		@name = name
		@base_price = 3
		@ingredients = [ ]		
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		# Let's establish what our counter should be before we start adding ingredients into the mix
		total_price_of_milkshake = @base_price
		# Add each infredient price to our total
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		# Return our total price to whoever called for it
		total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

# creo milkshakes
nizars_milkshake = MilkShake.new("Nizar's MilkShake")
joes_milkshake = MilkShake.new("Joe's MilkShake")
house_milkshake = MilkShake.new("House MilkShake")

# creo ingredients
banana = Ingredient.new("Banana", 2)
orange = Ingredient.new("Orange", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)

# añado ingredientes a los diferentes milksahakes
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

joes_milkshake.add_ingredient(orange)
joes_milkshake.add_ingredient(banana)

house_milkshake.add_ingredient(banana)
house_milkshake.add_ingredient(orange)
house_milkshake.add_ingredient(chocolate_chips)

# creo un cliente y añado los milkshakes que quiere
client0001 = ShackShop.new
client0001.add_milkshake(joes_milkshake)
client0001.add_milkshake(nizars_milkshake)
client0001.add_milkshake(house_milkshake)

# imprimo el ticket del cliente
puts client0001.checkout_milkshakes