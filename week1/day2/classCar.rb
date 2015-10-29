class Car

	def initialize sound = "Boooooooaoaoaoaoa"
		@sound = sound
		@cities = "cities.txt"
	end

	def make_noise
		puts @sound
	end

	def self.make_more_noise car
		car.make_noise
		car.make_noise
	end

	def add_city city
		content = IO.read @cities
		content += city + " "
		IO.write @cities, content
	end

	def cities
		IO.read @cities
	end

end

class RacingCar < Car
	def initialize
		super("BROOOM")
	end

end

car1 = Car.new("Broooooom")
car2 = Car.new("Braaaaaam")
car3 = Car.new()

Car.make_more_noise(car1)

car1.add_city("Madrid")
car1.add_city("Toledo")
puts car1.cities

car4 = RacingCar.new()
car4.make_noise
car4.add_city("San Francisco")
puts car4.cities