get '/categories/:category_id/articles' do
  category = Category.where("id = #{params[:category_id]}")[0]
  @articles = category.articles
  erb :'article_index'
end

get '/categories/:category_id/articles/:id' do
  @article = Article.find(params[:id])
  erb :'article_show'
end
