# Create Posts
10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password

  )
end
users = User.all

# Create Comments
100.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
