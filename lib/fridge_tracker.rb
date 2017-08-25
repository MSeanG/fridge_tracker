require_relative '../config/environment'
require_relative '../app/models/fridge'
loop do
    puts "Enter an option:"
    puts "A) List all fridges"
    puts "B) Add a fridge"
    puts "C) Remove a fridge"
    option = gets.chomp.upcase
    puts "You selected #{option}"
    if option == "A"
        all_fridges = Fridge.all
        all_fridges.each_with_index do |fridge|
          puts "#{fridge.location}"
        end
    elsif option == "B"
        puts "Where do you want this fridge"
        fridge_location = gets.chomp.capitalize
        puts "What brand is your fridge"
        fridge_brand = gets.chomp.capitalize
        puts "Enter a size"
        fridge_size = gets.chomp
        puts "#{fridge_location} by #{fridge_brand} has a size of #{fridge_size}"
        Fridge.create(location: fridge_location, brand: fridge_brand, size: fridge_size)
    elsif option == "C"
        puts "We are going to remove a fridge"
        puts "remove your fridge from where?"
        remove_location = gets.chomp.capitalize
        puts "Removed fridge from #{remove_location}"
        Fridge.find_by(location: remove_location).delete
    elsif option == "EXIT" || "QUIT"
        break
    end
end