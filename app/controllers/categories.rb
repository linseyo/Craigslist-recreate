get '/categories' do
  @categories = Category.all
  erb :'/categories/index'
end

get '/categories/new' do
  erb :'/categories/new'
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :'/categories/show'
end
