# Seeding database with categories

categories = [
  'community',
  'housing',
  'for sale',
  'discussion',
  'jobs',
  'services',
  'gigs',
  'resumes'
]

categories.each do |category|
  Category.create(name: category)
end

#Seeding database with articles

articles = [
  'classes in UW', 
  'events in Seattle', 
  'apts in Wallingford', 
  'sublets in UDistrict',
  'furniture at Goodwill', 
  'cats at Meowtropolitan Cafe',
  'how to take care of your crocs', 
  'which sticker is the best sticker',
  'web developer', 
  'pizza eater',
  'light and electric cabling', 
  'pet sitter wanted',
  'music at Miyabi 45th', 
  'poet for speakeasy',
  'how to skip cliches', 
  'the how to on the handshake'
]

dummy_text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sapien mauris, gravida nec ligula sed, vulputate ullamcorper massa. Nam tincidunt, nunc sed varius iaculis, massa nibh iaculis odio, non tincidunt justo urna eu sapien."


article_category_ids = [
  1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8
]

articles.length.times do |index|
  Article.create(name: articles[index], text: dummy_text, category_id: article_category_ids[index])
end

