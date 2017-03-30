get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/create' do
  erb :category_create
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :category
end





post '/categories' do
  p params
  @category = Category.create(title: params[:category][:title])
  redirect to("/categories/#{@category.id}")
end
