# ==    equals
# >      greater than
# <      less than
# >=    equal to or greater than
# <=    equal to or less than
# &&    and 
# ||       or
# !        not

puts "Tell me one animal"
animal = gets.chomp
if animal == "Dog"
	print "You like dogs. Woof!"
elsif animal =="Cat"
	print "You like cats. Meow!"
else
	print "You don't like cats or dogs? Okay."
end

numbers = [1,2,3]
for element in numbers
	puts "-> #{element}"
end

string = ""
# While the string's length is less than 10
while string.length < 10
	# Add an 'a'
	string = string + 'a'
end
puts "The final string is #{string}"
string_length = string.length
puts "The final string length is #{string_length}"

# .each in arrays
arraysnumbers = ["One", 2, "Three"]
arraysnumbers.each do |item|
	puts "--> #{item}"
end

# .each in hashes
my_hash ={}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
	puts "#{key} stands for #{value}"
end
