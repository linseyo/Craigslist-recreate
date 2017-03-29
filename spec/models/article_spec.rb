require_relative '../spec_helper'

describe Article do

  before(:each) do
    @article = Article.create(title: 'Thing for sale', price: 1400, description: 'Super cool thing', email: 'dan@myspace.com')
    @category = Category.create(name: 'Cool things')
  end

  describe 'associations' do
    it 'belongs to a category' do
      @article.category = @category
      expect(@article.category).to be @category
    end
  end
end
