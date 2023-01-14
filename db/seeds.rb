require 'faker'

puts "Seeding roles..."

5.times do 
    Role.create(
        character_name: Faker::Name.name 
    )
end

15.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.phone_number,
        hired: Faker::Boolean.boolean,
        role_id: rand(1..5)
    )
end


puts "Done seeding!"