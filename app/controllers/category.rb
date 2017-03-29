get '/categories' do
  @all_categories = Category.all
  p @all_categories
  erb :'categories/index'
end
