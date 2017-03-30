require 'faker'

def create_article
  args = {}
  args[:title] = Faker::Commerce.product_name
  args[:description] = Faker::Lorem.paragraph(4)
  args[:email] = Faker::Internet.email
  args[:category_id] = rand(Category.all.length - 1)
  args[:price] = rand(10000)
  Article.create!(args)
end

Category.destroy_all

categories = []

10.times do
  categories << Faker::Commerce.department(1)
end

categories.uniq.each do |category|
  new_category = Category.new(title: category)
  rand(1..10).times { new_category.articles << create_article}
  new_category.save
end

