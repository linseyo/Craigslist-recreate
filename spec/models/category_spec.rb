require_relative '../spec_helper'

describe Category do

  before(:each) do
    @article = Article.create(title: 'Thing for sale', price: 1400, description: 'Super cool thing', email: 'dan@myspace.com')
    @category = Category.create(name: 'Cool things')
  end

  describe 'associations' do
    it 'has articles' do
      @category.articles << @article
      expect(@category.articles).to include(@article)
    end
  end
end
