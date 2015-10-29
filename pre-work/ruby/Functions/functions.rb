def say_hello(name)
	puts "Hello, #{name}!"
end
say_hello("Rafa")
say_hello("Xavi")
#say_hello("Isra", "Fernando") # too many arguments. It won't work.
say_hello("James" + " Bond")

def add(a, b)
	puts a + b
end
add((5 * 5), (5 + 3))
add((3 + 4) * 10, 8 - 4 / 2)
add((3 + 4) * 10, (8 - 4) / 2)

def taste(food)
	if food == "bacon"
		puts "Yummy!!! BACON!!!"
	elsif food == "spinach"
		puts "Urgh..."
	else
		puts "Can I have some bacon on the side?"
	end
end
taste "spinach"
taste "bacon"
taste "potato"

def square(number)
	number * number
end
square(4) # It will return 16

def multiply(a, b)
	a * b
end
multiply(4, 2) # It will return 8

def  add(a, b)
	return a + a
	return a + b
	return b + b
end
puts add(1, 3)

# def add(a, b)
# 	calc1 = a + a
# 	calc2 = a + b
# 	calc3 = b + b
# 	calc1, calc2, calc3
# end
# puts add(2, 4)

def square(num)
	sqr_num = num * num
	if sqr_num > 100
		return "Number too big!!"
	end
	sqr_num
end
puts square(5)