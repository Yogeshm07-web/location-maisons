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
  { name: 'Oceanfront Paradis', price: 1000, cloudinary_image_url: 'https://t4.ftcdn.net/jpg/03/70/64/43/360_F_370644357_MDF4UXLAXTyyi2OyuK66tWW9cA2f8svL.jpg', user: user1 },
  { name: 'Elegant Countryside Manor', price: 1500, cloudinary_image_url: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', user: user2 },
  { name: 'Tropical Retreat Villa', price: 1200, cloudinary_image_url: 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=500&auto=format&fit=cro[…]3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGhvdXNlfGVufDB8fDB8fHww', user: user3 },
  { name: 'Luxurious Mountain View Mansion', price: 1800, cloudinary_image_url: 'https://images.unsplash.com/photo-1582610116397-edb318620f90?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D', user: user4 },
  { name: 'Charming Countryside', price: 2000, cloudinary_image_url: 'https://images.unsplash.com/photo-1571635685743-db0db8e31d9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D', user: user5 },
  { name: 'Modern City Skyline Penthouse', price: 1600, cloudinary_image_url: 'https://images.unsplash.com/photo-1603382401636-c352fb5755ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D', user: user6 },
  { name: 'Serene Lakeside Cottage', price: 1300, cloudinary_image_url: 'https://images.unsplash.com/photo-1594368381738-a9e6b8ffb609?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D', user: user7 },
  { name: 'Architectural Marvel in Florida', price: 1700, cloudinary_image_url: 'https://images.unsplash.com/photo-1603822455719-861b5afe1c50?w=500&auto=format&fit=cro[…]3wxMjA3fDB8MHxzZWFyY2h8MzV8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D', user: user8 },
  { name: 'Sunset View Chalet', price: 1400, cloudinary_image_url: 'https://images.unsplash.com/photo-1598228723793-52759bba239c?w=500&auto=format&fit=cro[…]3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGhvdXNlfGVufDB8fDB8fHww', user: user9 }
  # Add more properties with Cloudinary image URLs as needed
]

properties_data.each do |property_data|
  Property.create!(property_data)
end

# ...


puts 'Seeding complete!'
