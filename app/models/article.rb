class Article < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category

  def self.find_article(query)
    Article.all.select{ |listing| listing.title == query }
  end
end
