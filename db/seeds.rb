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
Property.destroy_all
User.destroy_all

# Create Users
user1 = User.create!(email: 'user1@example.com', password: '123456', first_name: 'John', last_name: 'Doe')
user2 = User.create!(email: 'user2@example.com', password: '123456', first_name: 'Jane', last_name: 'Doe')
user3 = User.create!(email: 'user3@example.com', password: '123456', first_name: 'Ryan', last_name: 'Juste')
user4 = User.create!(email: 'user4@example.com', password: '123456', first_name: 'Benjamin', last_name: 'Juste')
user5 = User.create!(email: 'user5@example.com', password: '123456', first_name: 'Olivier', last_name: 'Juste')
user6 = User.create!(email: 'user6@example.com', password: '123456', first_name: 'Guillaume', last_name: 'Juste')
user7 = User.create!(email: 'user7@example.com', password: '123456', first_name: 'Damien', last_name: 'Juste')
user8 = User.create!(email: 'user8@example.com', password: '123456', first_name: 'Jean-Marie', last_name: 'Juste')
user9 = User.create!(email: 'user9@example.com', password: '123456', first_name: 'Christel', last_name: 'Juste')
user10 = User.create!(email: 'user10@example.com', password: '123456', first_name: 'dany', last_name: 'Juste')

# Create Properties
property1 = Property.create!(name: 'Cozy Cottage', description: 'A nice and cozy cottage in the countryside.', price: 150.0, max_people: 4, location: 'Countryside', user_id: user1.id)
property2 = Property.create!(name: 'Beach House', description: 'Beautiful beach house with a sea view.', price: 200.0, max_people: 6, location: 'Beachside', user_id: user2.id)
property3 = Property.create!(name: 'Bungalow 1', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user3.id)
property4 = Property.create!(name: 'Bungalow 2', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user4.id)
property5 = Property.create!(name: 'Bungalow 3', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user5.id)
property6 = Property.create!(name: 'Bungalow 4', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user6.id)
property7 = Property.create!(name: 'Bungalow 5', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user7.id)
property8 = Property.create!(name: 'Bungalow 6', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user8.id)
property9 = Property.create!(name: 'Bungalow 7', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user9.id)
property10 = Property.create!(name: 'Bungalow 8', description: 'Beautiful beach house with a sea view.', price: 250.0, max_people: 6, location: 'Beachside', user_id: user10.id)

puts "Created #{User.count} users and #{Property.count} properties."
