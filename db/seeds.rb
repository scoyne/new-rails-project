require 'faker'

# Create Users
10.times do
  User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(10, 20, true)
  )
end

users = User.all


# Create Wikis
100.times do
  wiki = Wiki.create!(
    user: users.sample,
    title:  Faker::Coffee.blend_name,
    body:   Faker::Coffee.notes
  )
end
wikis = Wiki.all

admin = User.create!(
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)

premium = User.create!(
  email:    'premium@example.com',
  password: 'helloworld',
  role:     'premium'
)

standard = User.create!(
  email:    'standard@example.com',
  password: 'helloworld',
  role:     'standard'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
