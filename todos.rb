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

# nums = [1, 2, 3, 4, 5];

# #First method
# puts "Integer to string is #{nums[3]}"

# #Second Method
# puts "Number at subscript 3 is " + nums[3].to_s

# puts "Wrong ans for 5 / 2 is " + (5/2).to_s

# puts "Correct Ans for 5 / 2 is " + (5.to_f/2).to_s  


# #Working with Strings

# str_val = "this is a string"

# puts "String is " + str_val

# #capitalize => converts first letter of string to uppercase

# puts "Capitalize is " + str_val.capitalize

# #upcase => convert all letters to capital
# puts "Upcase is " + str_val.upcase

# str_val = str_val.upcase
# puts "String now is " + str_val

# #downcase => converts all letters to downcase
# puts "Downcase is " + str_val.downcase 

#Working with Boolean

# puts 1 == 1
# puts "this" == "that"
# puts 1 < 2
# puts 1 > 2
# puts 89 >= 89

#Chomp method is used to remove last characters from a string
#puts "Fictional".chomp("al")

#Working with if statements
# puts "Fictional or Non-fictional ?"

# genre = gets.chomp.downcase

# if genre == "fiction"
#     puts "Try watching Cryptomania"
# elsif genre == "non-fiction"
#     puts "You should read the Ascent of Man by Jacob Bronowski!"
# else
#     puts "Oh I don't know about that genre"
# end 

# Working with Arrays

# books = ["Siddharta", "Shotgun", "Discovery World"]

# puts "Books length is " + books.length.to_s
# puts "First element is " + books[0]
# puts "Second element is " + books[1]
# puts "M1 Last element is " + books[books.length - 1]
# puts "M2 Last element is " + books.last
# puts "Adding new element 'Experience'"
# books.push("Experince")
# puts books

# nums = [2, 4, 200, 400]
# nums.each {|x| puts "The current number is #{x}"}

# new_nums = nums.map {|number| number*125}
# new_nums.each {|n| puts n}

# Practice Exercise 1
# names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
# new_names = names.map {|x| x.join(" ")}
# puts "New names are #{new_names}"

# Practice Exercise 2
# books = ["Design as Art", "Anathem", "Shogun"]
# authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

# books.map.with_index {|x, i| puts "#{books[i]} was written by #{authors[i]}"}

#Practice Exercise 3

todos = [
    ["Send invoice", "money"],
    ["Clean room", "organize"],
    ["Pay rent", "money"],
    ["Arrange books", "organize"],
    ["Pay taxes", "money"],
    ["Buy groceries", "food"]
  ]

new_todos = []
categories = []

todos.map {|x| 
    if categories.find {|y| y == x[1]} == nil
        categories.push(x[1])
    end
}

temp_category = []

categories.map {|category|
    items = [] 
    temp_category = []
    todos.map {|x|
    if x[1] == category
        items.push(x[0])
    end
    }
    
    temp_category.push(category)
    temp_category.push(items)
    new_todos.push(temp_category)
}

new_todos.map {|x| 
    puts x[0] + ":"

    x[1].map {|item|
    puts "    " + item
    }
}