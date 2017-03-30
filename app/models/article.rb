class Article < ActiveRecord::Base
  belongs_to :category

  validates :price, numericality: {less_than: 10000}
  validates :title, :email, :category_id, presence: true
end
