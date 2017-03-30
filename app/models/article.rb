class Article < ActiveRecord::Base
  validates_presence_of :title, :body, :price, :contact
  belongs_to :category

  def secret_key
    @secret_key
  end

  def set_key
    @secret_key = 8.times.map { [*'0'..'9', *'a'..'z'].sample }.join
  end

end
