require 'faker'

Category.delete_all
Article.delete_all

category_names = [
                  "Petcare",
                  "Clothes",
                  "Furniture",
                  "Tutoring"
                 ]

category_names.each do |name|
  Category.find_or_create_by(name: name)
end

params = {
          title: Faker::Commerce.product_name,
          body: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3),
          price: Faker::Commerce.price,
          contact: Faker::Internet.free_email,
          category_id: (rand(4) + 1)
          }

20.times { Article.create(params) }
