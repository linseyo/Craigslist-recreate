class Article < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :title, :description, :price, :contact
  before_create :generate_secret_key

  def generate_secret_key
    self.secret_link = SecureRandom.urlsafe_base64(5)
  end
end
