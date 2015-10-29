require "pry"

class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

#iteration0
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Christian's place", "Tres Cantos", 8, 86),
  Home.new("Ana's place", "Madrid", 4, 45),
  Home.new("Susana's", "Madrid", 6, 64),
  Home.new("Jona's place", "San Francisco", 3, 56),
  Home.new("Peyo's place", "Sanabria", 10, 98)
]

class Engine_app
	def initialize homes_array
		@homes = homes_array
	end
	#iteracion1: List of homes
	def list homes_array
		homes_array.each { |hm|
			puts
			puts hm.name + " in " + hm.city
			puts "Price: $" + hm.price.to_s + " a night"
		}
	end

	#iteration2: Sorting
	def sorting
		@sorted = @homes.sort do |hm1, hm2|
			hm1.price <=> hm2.price
		end
		puts
		list(@sorted)
	end

	#iteration3: Filter by city
	def filter_by_city
		city_filtered = gets.chomp
		@filtered = @homes.select do |hm|
			hm.city == city_filtered
		end
		puts
		list(@filtered)
	end

	#iteration4: Average
	def average_price
		@average = @homes.reduce(0.0) do |sum, hm|
			(sum + hm.price) / 2
		end
		puts
		puts "The average price is:"
		puts "$" + @average.to_s
	end

	#iteration5: Name your own price
	def your_price
		puts
		puts "What's your budget?"
		price = gets.chomp.to_i
		array_budget = @homes.select do |hm|
			price >= hm.price
		end
		list(array_budget)
	end
end

#binding.pry

#--------------------

class Menu
	def initialize homes_array
		puts
		puts "Wellcome to Textbnb"

		@menu_selection = ""
		@homes = homes_array
	end

	def start_app
		while @menu_selection != 0
			puts
			puts "1-List of houses"
			puts "2-Sort by price"
			puts "3-Filter by City"
			puts "4-Average price"
			puts "5-Filter by budget"
			puts
			puts "E-Exit"
			puts
			puts "What do you want to do: (select 1 to 5. Or E to exit)"
			@menu_selection = gets.chomp
			eng = Engine_app.new(@homes)
			if @menu_selection == "1"
				eng.list(@homes)
			elsif @menu_selection == "2"
				eng.sorting
			elsif @menu_selection == "3"
				eng.filter_by_city
			elsif @menu_selection == "4"
				eng.average_price
			elsif @menu_selection == "5"
				eng.your_price
			elsif @menu_selection == "e" || @menu_selection == "E"
				puts
				puts "Bye bye!! See you soon."
				puts
				break
			else
				puts
				puts "I don't understand you. Please select 1 to 5. Or E to exit."
				start_app
			end
		end
	end
end

start = Menu.new(homes)
start.start_app

# cities = homes.map do |hm|
# 	hm.city
# end
# puts cities

# price = homes.map { |hm| hm.price }
# puts price

# total_capacities = 0.0
# homes.each do |hm|
# 	total_capacities = total_capacities + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# total_capacities = homes.reduce(0.0) { |sum, hm| sum + hm.capacity}
# puts total_capacities

# total_prices = homes.reduce(0.0) { |sum, hm| sum + hm.price}
# puts "The average price is:"
# puts "$" + (total_prices / homes.length).to_s

# # Homes in San Juan
# homes.each_with_index do |hm, index|
# 	puts "Home Number #{index + 1}: #{hm.name}"
# end

# san_juan_homes = homes.select do |hm|
# 	hm.city == "San Juan"
# end
# #p san_juan_homes

# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
# 	hm.capacity >= 4
# end
# #p high_capacity_homes

# home_41_dollars = homes.find do |hm|
# 	hm.price == 41
# end

# puts "The first home that costs ¢41 is:"
# puts home_41_dollars.name

# sorted = homes.sort do |home1, home2|
# 	home1.name <=> home2.name
# end