class Article < ActiveRecord::Base
  belongs_to :catagory
  validates :price, :email, :title, :description, presence: true
end
