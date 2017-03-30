class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :articles

  def self.matching_articles(query)
    Category.all.select{ |subject| subject.name == query}
  end

  def self.list_articles(query)
    matching_articles(query).map{ |category| category.articles }
  end

end
