require 'spec_helper'

describe Article do
  let(:article) { Article.create(title: 'Ham', email: 'ham.sandwich@gmail.com')}
  describe '#create_secret_link' do
    it 'outputs a string of 8 characters' do
      expect(article.secret_link.length).to eq(8)
    end
    it 'cannot equal key_url' do
      expect(article.secret_link).to_not eq(article.key_url)
    end
  end
  describe '#create_secret_url' do
    it 'outputs a string of 8 characters' do
      expect(article.key_url.length).to eq(8)
    end
    it 'cannot equal secret_link' do
      expect(article.key_url).to_not eq(article.secret_link)
    end
  end
end
