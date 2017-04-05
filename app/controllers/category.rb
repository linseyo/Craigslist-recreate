require 'json'

get '/categories' do
  @categories = Category.all
  erb :'categories/index'
end

get '/categories/new' do
  erb :'categories/new'
end

post '/categories' do
  category = Category.create(params['category'])
  if request.xhr?
    category.to_json
  else
    redirect to '/categories'
  end
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :'categories/show'
end
