class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, :email, :secret_link, presence: true
end
