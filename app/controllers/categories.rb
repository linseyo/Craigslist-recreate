get '/categories' do
  @categories = Category.all
  erb :'/category_index'
end

get '/categories/:category_id' do
  redirect to :'/categories/:category_id/articles'
end
