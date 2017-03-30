get '/categories' do
  @all_categories = Category.all
  @all_categories
  erb :'categories/index'
end

# Show all articles in a given category
get '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @category_articles = Article.where("articles.category_id = ?", params[:category_id])
  p @category_articles
  erb :'categories/articles'
end
