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
