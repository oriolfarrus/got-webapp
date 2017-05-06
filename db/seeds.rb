User.create!(name:  "Example User",
             email: ENV['ADMIN_EMAIL'],
             password:              ENV['ADMIN_PASSWORD'],
             password_confirmation: ENV['ADMIN_PASSWORD'],
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)

end

#Create microposts for the first 6 users
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

Season.create!(name: "Primavera", modifier: 8)
Season.create!(name: "Verano", modifier: 2)
Season.create!(name: "Otonyo", modifier: 0)
Season.create!(name: "Invierno", modifier: -10)
