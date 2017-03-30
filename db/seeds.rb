# require_relative '../models/category'

categories = ["auto", "bikes", "books", "cell Phones", "electronics", "furniture", "photo + video", "tickets"]

categories.each do |category|
  Category.create!(name: category)
  end
