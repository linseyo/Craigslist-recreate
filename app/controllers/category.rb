get '/categories' do
  @categories = Category.all
  erb :'categories/index'
end

get '/categories/new' do
  erb :'categories/new'
end

post '/categories' do
  Category.create(params['category'])
  redirect to '/categories'
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :'categories/show'
end
