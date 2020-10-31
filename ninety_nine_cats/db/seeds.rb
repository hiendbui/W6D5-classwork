# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

100.times do 
    Cat.create(
        name: Faker::Sports::Basketball.player,
        color: %w(black brown orange yellow).sample,
        birth_date: Faker::Date.birthday,
        sex: Faker::Gender.short_binary_type,
        description: Faker::Sports::Basketball.team
    )
end
