class Article < ActiveRecord::Base
  belongs_to :category

  before_validation :create_secret_link, :create_key_url
  validates :title, :email, :secret_link, :key_url, presence: true

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

  def create_key_url
    if self.key_url == nil
      key = ""
      generate_random_string({key_url: key})
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

  private

  def generate_random_string(args)
    8.times {args[:key_url] += random_character}
    until Article.find_by(args) == nil  do
      args[:key_url] = ""
      8.times {args[:key] += random_character}
    end
    self.key_url = args[:key_url]
  end
end
