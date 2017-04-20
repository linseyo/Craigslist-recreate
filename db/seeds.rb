
Category.delete_all
Article.delete_all

Category.create(name: 'House Rentals')
garden_tool_category = Category.create(name: 'Garden Tools')
Category.create(name: 'Dogs to Adopt')
Category.create(name: 'Parents for Sale')

this_article = Article.new(title: 'Lawnmower', description: '1992 model T, works well!',price: 2122,email: 'jordan@buynow.com',secret_key: 'abc')
garden_tool_category.articles << this_article

this_article = Article.new(title: 'shovel', description: 'brand new! use it to dig!',price: 500,email: 'trix@buynow.com',secret_key: '123')
garden_tool_category.articles << this_article
