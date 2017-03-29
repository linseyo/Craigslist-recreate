categories = [
  "apts/housing rental", "books", "auto parts",
  "pet", "toys/games", "jobs", "photo/video"
    ]

categories.each do |category|
  Category.create(name: category)
end
