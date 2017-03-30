class Article < ActiveRecord::Base
  validates_presence_of :title, :body, :price, :contact
  belongs_to :category
end
