get '/categories' do
  @all_categories = Category.all
  erb :'categories/index'
end


# Show all articles in a given category
get '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @category_articles = Article.where("articles.category_id = ?", params[:category_id])
  erb :'categories/articles'
end

get '/categories/new' do
  erb :'categories/new'
end

post '/categories' do
  Category.create(params['category'])
  redirect to '/categories'
end
