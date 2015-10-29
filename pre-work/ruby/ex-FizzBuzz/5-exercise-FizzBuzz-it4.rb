puts "Final refactoring"

(1..100).each do |number|
	result = ""
	if number % 3 == 0
		result << "Fizz"
	end
	if number % 5 == 0
		result << "Buzz"	
	end
	if number.to_s[0].to_i == 1
		result = result + "Bang"
	end
	if result.length == 0
		result = number
	end
	puts result
end