#Remove any categories and articles from the database upon seeding
Category.delete_all
Article.delete_all


#Create a handful of categories to populate the database
Category.create!({
  name: 'Video Games'
  })

Category.create!({
  name: 'Pets'
  })

Category.create!({
  name: 'Pencils'
  })
