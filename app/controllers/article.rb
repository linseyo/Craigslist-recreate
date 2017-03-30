get '/articles' do
  @category = Category.list_articles(params["q"]).flatten
  erb :'/articles/index'  
end