require 'spec_helper'

describe Article do
  let (:category){ Category.create(name: "Petcare") }
  let (:params){ {
                  title: "I walk dogs!",
                  body: "Call me if you need a dogwalker! I charge per walk.",
                  price: 15,
                  contact: "201-999-0909",
                  category_id: category.id
                  } }
  let(:article){ Article.create(params) }
  it 'belongs to a category' do

    expect(article.category).to eq category
  end
end
