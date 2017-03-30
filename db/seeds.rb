categories = ["auto", "bikes", "books", "cell Phones", "electronics", "furniture", "photo + video", "tickets"]

categories.each do |category|
  CreateCategories.new(name: category)
  end
