require 'pry'
require 'time'

module CameraPhoto
	def take_photo
		puts "Beatifull photo in #{@os}"
	end
end

class Device
	attr_reader :os

	def initialize os, inchs
		@os = os
		@inchs = inchs 
	end

	def show_time
		puts Time.now
	end
end

class Phone < Device

	include CameraPhoto

	def initialize os, inchs, agend
		super(os, inchs)
		@agend = agend
	end

	def add_contact_to_agend name, number
		@agend.add_contact(name,number)
	end

	def read_contact_from_agend name
		@agend.find_contact(name)
		@agend.show_contact
	end

	def call_from_agend name
		@agend.find_contact(name)
		puts "Calling ===> #{@agend.find_contact(name)}"

	end

end

class SmartWatch < Device
	include CameraPhoto

	#Doesn't need to have initialize because is the same than Device.
	def show_time
		puts "**** #{Time.now} ****"
	end

end

class Laptop < Device

	def initialize os, inchs, touchable = false
		super(os, inchs)
		@touchable = touchable
	end
end

class Agend
	def initialize
		@contacts_list=[]
	end

	def add_contact name, number
		@contacts_list << {name: name, number: number}
	end

	def find_contact name
		contact_selected = ""
		@contacts_list.each do |contact|
			if contact[:name] == name
				@contact_selected = contact[:name] + " :> " + contact[:number].to_s
			end
		end
		contact_selected
	end

	def show_contact
		puts @contact_selected
	end
end

class Microwave

	def heat food
		puts "Heat #{food}"
	end

	def show_time
		puts "Microvawe **** #{Time.now} ****"
	end
end


chr_phone = Phone.new("iOS", 5, Agend.new)
chr_sw = SmartWatch.new("iWatch", 1.5)
chr_laptop = Laptop.new("MacOS 10", 15, true)

chr_phone.add_contact_to_agend("Christian", 600000001)
chr_phone.add_contact_to_agend("Ana", 600000002)

chr_phone.read_contact_from_agend("Christian")
chr_phone.read_contact_from_agend("Ana")

chr_phone.call_from_agend("Christian")
chr_phone.call_from_agend("Ana")

chr_phone.take_photo
chr_sw.take_photo

chr_phone.show_time
chr_sw.show_time
chr_laptop.show_time

chr_microvave = Microwave.new
chr_microvave.heat("carrots")
chr_microvave.show_time

puts "---------------"

all_chr = [chr_microvave, chr_phone, chr_sw, chr_laptop]
all_chr.each do |instance|
	puts instance.show_time
end

#binding.pry