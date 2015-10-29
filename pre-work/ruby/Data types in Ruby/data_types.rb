name = "mr. Bond"
capitalized_name = name.capitalize
puts "Hello #{capitalized_name}"

flavours = "choccolate, mint, strawberry, vanilla, caramel, chili"
flavours_array = flavours.split(", ") # .split divide un string con el patrón ", " y crea un array

"How many characters are in this string?".length

"awesome".include? "you"
"awesome".include? "me"
phrase = "Just kidding, you're awesome too"
phrase.include? "aw"

age = 28
cats = 5
stars_in_milkyway = 325_066_357_011 # you can separate thousands with an underscore to make it easy to read
age.odd? # age es par?
age.even? # age es impar?
age.round(-1) # returns 30
age.round(1) # returns 28.0

3.times {puts "beetlejuice"} # repit 3 times whatever

animals = ["Lions", "Tigers", "Bears"]
puts animals

numbers = ["One", 2, "Three"]
puts numbers
puts "---"
puts numbers[0] # will put "One"
puts "---"
puts numbers[1] # will put 2
puts "---"

my_array = []
my_array << "A" # << add item to the array
my_array.push "B" # .push add item to the array too
my_array.push "C"
puts my_array
my_array.delete_at 2 # delete de 3th item in your array
puts my_array

numbers_sort = [4, 6, 2, 4, 7, 12, 9, 12]
puts numbers_sort.sort # order the items lowest to highest
strings_sort = ["g", "e", "n", "w", "a"]
puts strings_sort.sort # sort (order) the letters in alphabetical order

puts flavours_array.join(", ") # .join une una array en un string separado por ", "

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
puts my_hash["AST"]
puts my_hash["GAL"]
puts my_hash
my_hash.has_key?("AST") # => true
my_hash.has_key?("CAT") # => false
my_hash.has_value?("Galicia") # => true

puts "What is this?".class
puts 3.class
puts [1,2,3].class