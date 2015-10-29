puts "Hello, world!"
puts "I"
puts "like"
puts "pie."

print "Cookies"
print "are"
print "good"
print "too."

# This is a comment
puts "Hello, world!"
puts "Hello again!" # This also works for a comment

my_variable = 10
my_other_variable = "ten"

operation_result = 12*34
puts "Operation results is "
puts operation_result

a_string = "This is a String"
another_string = 'This is also a String'
multiline_string = """
A long time ago in a galaxy far, far away...

It is a period of civil war. Rebel
spaceships, stricking from a hidden
base, have won their fisrt victory
against the evil Galactic Empire.
"""

puts "Hello\nworld"
puts 'Hello\nworld'

name = "Rafael"
puts "Hi #{name}"

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."
IO.write('name.txt', name)

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

file_content = IO.read("hello.rb")
puts "The source file contains :\n#{file_content}"
