get '/categories' do
  @categories = Category.order(:name)
  erb :'categories/index'
end

get '/categories/new' do
  erb :'categories/new'
end

post '/categories' do
  Category.create(params)
  redirect '/categories'
end

get '/categories/:id/articles' do
  @category = Category.find(params[:id])
  @articles = @category.articles
  erb :'categories/show'
end
