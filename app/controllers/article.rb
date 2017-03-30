get '/articles' do
  @category = Category.list_articles(params["q"]).flatten
  @category_name = params["q"]
  erb :'/articles/index'  
end

get '/articles/show' do 
  @article = Article.find_article(params["q"]).first
  erb :'/articles/show'
end

get '/articles/new' do
  
  erb :'/articles/new'
end

post '/articles/new' do
  id = Category.find_id(params["new_category"].downcase).to_i
  Article.create(
                  title: params["new_title"],
                  price: params["new_price"],
                  email: params["new_email"],
                  description: params["new_description"],
                  category_id: id)
  redirect to '/'  
end