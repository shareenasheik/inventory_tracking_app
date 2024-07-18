# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

items = ["Sportvy", "Sport General", "Hey Athlete", "Olympick", "Sprinterr", "FoulBall", "Sports Guild", "Top Match", "Sportslive.io", "Playmaker", "Kickett", "Upper Tier", "Sporting Life", "Beltway", "Saber Sports", "Gravity", "Relay Sports", "One Athletic", "Gym Shark"]
countries = ISO3166::Country.all_names_with_codes
items.each do |product|
	InventoryItem.create!(name: product, quantity: rand(1..100), location: countries.sample[1])
end