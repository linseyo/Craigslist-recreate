require 'faker'

categories = ["auto", "bikes", "books", "cell Phones", "electronics", "furniture", "photo + video", "tickets"]

categories.each do |category|
  Category.create!(name: category)
  end

50.times do 
  Article.create!(title: Faker::Commerce.product_name, 
                 price: Faker::Commerce.price, 
                 email: Faker::Internet.email,
                 description: Faker::Hipster.paragraph,
                 category_id: [*1..8].sample)
end