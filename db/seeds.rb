# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to avoid duplication
User.destroy_all
Property.destroy_all

# Create Users
user1 = User.create!(email: 'user1@example.com', password: '123456', first_name: 'John', last_name: 'Doe')
user2 = User.create!(email: 'user2@example.com', password: '123456', first_name: 'Jane', last_name: 'Doe')

# Create Properties
property1 = Property.create!(name: 'Cozy Cottage', description: 'A nice and cozy cottage in the countryside.', price: 150.0, max_people: 4, location: 'Countryside', user: user1)
property2 = Property.create!(name: 'Beach House', description: 'Beautiful beach house with a sea view.', price: 200.0, max_people: 6, location: 'Beachside', user: user1)

puts "Created #{User.count} users and #{Property.count} properties."