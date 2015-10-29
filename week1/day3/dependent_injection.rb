class Engine
	def initialize sound_engine
		@sound_engine = sound_engine
	end

	def turn_on
		print @sound_engine

	end

end

class Car
	def initialize sound_car, engine
		@sound_car = sound_car
		@engine = engine
	end

	def start
		@engine.turn_on
		puts @sound_car
	end

end


c1 = Car.new("Baaaaa", Engine.new("Ruuuuuuun"))
c1.start

c2 = Car.new("Baaaaa", Engine.new("kukukukuku"))
c2.start