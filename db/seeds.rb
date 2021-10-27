5.times do
    Client.create(
        first_name: Faker::Name.unique.first_name,
        last_name:  Faker::Name.unique.last_name,
        user_id: 107
    )
end

5.times do
    User.create(
            email: Faker::Name.unique.first_name + "@gmail.com",
            password: BCrypt::Password.create(Faker::Name.unique.first_name)
    )
end
#Client.delete_all


p "#{Client.count} client entries"
p "#{User.count} user entries"
