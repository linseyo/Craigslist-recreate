require 'faker'
10.times do
  created = Category.create(title: Faker::Name.title)
  Articale.create(price: 10.00, email: "dillon@yahoo.com", title: Faker::Name.title, description: "Brand new cleats", category_id: created.id)
end
