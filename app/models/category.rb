class Category < ActiveRecord::Base
  has_many :articles

  validates :title, uniqueness: true
end
