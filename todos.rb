# ask for a list of todos
# and print them back to us

# puts "What is your next todo?"

# #get string
# next_todo = gets

# puts "So this is your next todo.."
# puts next_todo

# puts "\n\n" #Carriage Return

# puts "[ ] #{next_todo}" # String Interpolation


#Working with integers and floats

nums = [1, 2, 3, 4, 5];

#First method
puts "Integer to string is #{nums[3]}"

#Second Method
puts "Number at subscript 3 is " + nums[3].to_s

puts "Wrong ans for 5 / 2 is " + (5/2).to_s

puts "Correct Ans for 5 / 2 is " + (5.to_f/2).to_s  


#Working with Strings

str_val = "this is a string"

puts "String is " + str_val

#capitalize => converts first letter of string to uppercase

puts "Capitalize is " + str_val.capitalize

#upcase => convert all letters to capital
puts "Upcase is " + str_val.upcase

str_val = str_val.upcase
puts "String now is " + str_val

#downcase => converts all letters to downcase
puts "Downcase is " + str_val.downcase 

#Working with Boolean

puts 1 == 1
puts "this" == "that"
puts 1 < 2
puts 1 > 2
puts 89 >= 89

#Chomp method is used to remove last characters from a string
puts "Fictional".chomp("al")

#Working with if statements
puts "Fictional or Non-fictional ?"

genre = gets.chomp.downcase

if genre == "fiction"
    puts "Try watching Cryptomania"
elsif genre == "non-fiction"
    puts "You should read the Ascent of Man by Jacob Bronowski!"
else
    puts "Oh I don't know about that genre"
end 