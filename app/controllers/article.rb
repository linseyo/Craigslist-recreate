get '/articles' do
  @category = Category.list_articles(params["q"]).flatten
  @category_name = params["q"]
  erb :'/articles/index'  
end

get '/articles/show' do 

  erb :'/articles/show'
end