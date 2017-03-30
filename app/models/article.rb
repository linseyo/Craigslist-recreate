class Article < ActiveRecord::Base
  belongs_to :category

  before_validation :create_secret_link


  def create_secret_link
    if self.secret_link == nil

      key = ""
      8.times {key += self.random_character}

      until Article.find_by(secret_link: key) == nil do
        key = ""
        8.times {key += self.random_character}
      end
      self.secret_link = key
    end
  end

  def random_character
    coin = Random.new.rand(0..1)
    case coin
    when 0
      ('a'..'z').to_a.sample
    when 1
      rand(0..9).to_s
    end
  end

  validates :title, :email, :secret_link, presence: true
end
