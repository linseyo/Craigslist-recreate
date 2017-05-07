categories = [
  "apts/housing rental", "books", "auto parts",
  "pet", "toys/games", "jobs", "photo/video"
    ]

categories.each do |category|
  Category.create(name: category)
end


Article.create(title: "Puppy For Sale", description: "Want a new puppy? Need a friend? Selling a husky for a cheap and good price! Good pup & well trained!", contact: "puppy4sale@pup.com", price: 400, category_id: 4)


Article.create(title: "Harry Potter Complete Collection", description: "Mint Condition! Never read! Hardcover!", contact: "jkrowling@hogwarts.org", price: 2000, category_id: 2)

Article.create(title: "Full Set of Spare Tires!", description: "Had an accident? I got some spare tires...", contact: "theyseemerolling@car.com", price: 50, category_id: 3)

Article.create(title: "Chessboard", description: "Missing a chessboard? Well I got one. No chess pieces though...", contact: "checkmate@chess.com", price: 3, category_id: 5)

Article.create(title: "Canon 60D Body Only", description: "Selling a Canon 60D body. Mint Condition! Great for photo enthusiast", contact: "photonerd@gmail.com", price: 500, category_id: 7)

Article.create(title: "Olympus EM10 MKII", description: "Micro 4/3! Used for 1 month. Includes kit lens", contact: "microdot@gmail.com", price: 600, category_id: 7)
