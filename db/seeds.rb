# db/seeds.rb

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

# Create Properties with Cloudinary image URLs
# ...

properties_data = [
  { name: 'Property 1', price: 100000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior1.jpg', user: user1 },
  { name: 'Property 2', price: 150000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior2.jpg', user: user2 },
  { name: 'Property 3', price: 120000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior3.jpg', user: user3 },
  { name: 'Property 4', price: 180000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior4.jpg', user: user4 },
  { name: 'Property 5', price: 200000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior5.jpg', user: user5 },
  { name: 'Property 6', price: 160000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior6.jpg', user: user6 },
  { name: 'Property 7', price: 130000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior7.jpg', user: user7 },
  { name: 'Property 8', price: 170000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior8.jpg', user: user8 },
  { name: 'Property 9', price: 140000, cloudinary_image_url: 'https://res.cloudinary.com/your-cloud-name/image/upload/v1234567890/house-exterior9.jpg', user: user9 }
  # Add more properties with Cloudinary image URLs as needed
]

properties_data.each do |property_data|
  Property.create!(property_data)
end

# ...


puts 'Seeding complete!'
