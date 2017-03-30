require 'faker'

20.times { Catagory.create(title: Faker::LordOfTheRings.character) }

50.times { Article.create(price: rand(10..500), email: Faker::Internet.email, title: Faker::ChuckNorris.fact, description: Faker::Lorem.paragraph(5, true, 5) )}
