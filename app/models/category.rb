class Category < ActiveRecord::Base
  validates :title, uniqueness: true
  has_many :articales, {class_name: "Articale", source: :category}
end
