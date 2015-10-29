puts "Bang if starts with 1"

(1..100).each do |number| 
	if number % 3 == 0 && number % 5 == 0
		if number.to_s[0].to_i == 1
			puts "FizzBuzzBang"
		else
			puts "FizzBuzz"
		end
	elsif number % 3 == 0
		if number.to_s[0].to_i == 1
			puts "FizzBang"
		else
			puts "Fizz"
		end
	elsif number % 5 == 0
		if number.to_s[0].to_i == 1
			puts "BuzzBang"
		else
			puts "Buzz"
		end
	else
		if number.to_s[0].to_i == 1
			puts "Bang"
		else
			puts "#{number}"
		end
	end		
end