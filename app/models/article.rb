class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :email, presence: true
  validates :description, presence: true
  validates :secret_key, presence: true
end
