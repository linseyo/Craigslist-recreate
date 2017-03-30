get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :'/index'
end

get '/categories' do
  @category = Category.list_articles(params["q"]).flatten
  erb :'/articles/index'
end
