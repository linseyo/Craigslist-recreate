class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :articles

  # def matching_articles(query)
  #   Category.all.select{ |subject| subject.name == query}
  # end

  def self.list_articles(query)
    Category.all.select{ |subject| subject.name == query}.map{ |category| category.articles }
  end


end
