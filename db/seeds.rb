categories = ["Gaming", "Sports", "Media", "Politics", "For Sale", "Apartments", "Food"]

categories.each {|category| Category.create(name: category) }
