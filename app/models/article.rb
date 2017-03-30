class Article < ActiveRecord::Base
  belongs_to :category

  def self.generate_key
    (0...8).map { (65 + rand(26)).chr }.join
  end

end
