# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fridge.destroy_all
Food.destroy_all
Drink.destroy_all

frigidaire = Fridge.create!(
  location: "Kitchen",
  brand: "Frigidaire",
  size: 3.3
)
frigidaire.food = [
  Food.create(name: "Hamburger",weight: "1",vegan: false)
]
frigidaire.drink = [
  Drink.create(name: "Milk",size: "128",alcoholic: false)
]
# samsung = Fridge.create(name: "Samsung")