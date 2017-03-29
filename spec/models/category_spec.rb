require 'spec_helper'

describe Category do
  let (:category){ Category.create(name: "Petcare") }
  let (:params){ {
                  title: "I walk dogs!",
                  body: "Call me if you need a dogwalker! I charge per walk.",
                  price: 15,
                  contact: "201-999-0909",
                  category_id: category.id
                  } }
  let(:article){ Article.create(params) }
  it 'has at least one article' do
    expect(category.articles).to include article
  end
end
