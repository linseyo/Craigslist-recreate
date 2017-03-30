class Article < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category

  validates :name, presence: true
  validates :category_id, presence: true
end
