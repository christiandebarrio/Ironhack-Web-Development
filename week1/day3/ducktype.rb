class Car
	def initialize wheels, sound
		@wheels = wheels
		@sound =sound
	end
end

class Moto
	def initialize wheels, sound
		@wheels = wheels
		@sound =sound

	end
end

class CountWheels
	def initialize
		@vehicles = []
	end

	def count_wheels
		@vehicles.each do |vehicle|
			vehicle.wheels
	end
end


car = Car.new(4, "Baaaa")
moto = Moto.new(2, "Meeee")

