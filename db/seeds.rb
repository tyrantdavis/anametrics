require 'faker'

# Create Member
member = User.create(
  name: 'Member',
  email: "member@example.com",
  password: 'password'
)
member.skip_confirmation!
member.save!

#Create users
5.times do
  user = User.create(
    name: Faker::Name.name,
    email:  Faker::Internet.email
    password: "password"
    )
    user.skip_confirmation!
    user.save!
end
users = User.all

# Create registered Applications
5.times do
  RegisteredApplication.create!(
    user: users.sample,
    name: Faker::App.name,
    url: Faker::Internet.url
  )
end
applcations = RegisteredApplication.all

# Create Events
events = ['scroll', 'click', 'register', 'download', 'vist']
25.times do
  Event.create!(
    registered_application: applcations.sample,
    name: events.sample
  )
end

puts "Seed finished"
puts "#{RegisteredApplication.count} applcations created"
puts "#{Event.count} events created"
