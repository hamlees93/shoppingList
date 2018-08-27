require 'date'

#FIXME: Make the greeting change based on time of day
puts "Hi. Please start your personal shopping Xperience by entering your name: "
name = gets.chomp.capitalize
#clear the terminal window to make it a bit cleaner
system "clear"
puts "Good morning #{name}."
puts "Its been a while since we've last seen you, so just remind us again, how many items would you like today? "
#FIXME: Eventually write something that ensures a number is entered and not a word
numberOfItems = gets.chomp.to_i
puts "Lovely. We will now ask you to choose those #{numberOfItems} items. "
sleep(1)

#Creating an array to store the items and an array to store the quantities and one to store both together
items = []
quantities = []
shoppingList = []
i = 1
while i <= numberOfItems
    puts "Item #{i}: "
    items[i - 1] = gets.chomp.downcase
    if items[i-1] == "ice cream" || items[i-1] == "icecream"
        puts "Sorry cob, can't be sneaking Ice Cream on the list. I've replaced it with broccoli."
        items[i-1] = "broccoli"
    end
    i += 1
end

for item in items
    puts "How many #{item}s would you like? "
    #FIXME: Again, try ensure user input is only integer
    quantities << gets.chomp.downcase
end

i = 0
while i < numberOfItems
    shoppingList << items[i].capitalize + " X " + quantities[i]
    i += 1
end

puts shoppingList