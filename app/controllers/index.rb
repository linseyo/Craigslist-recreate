get '/' do
  
  erb :index
end

get '/categories' do
  @categories = Category.all
  erb :'categories/index'
end
