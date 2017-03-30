get '/categories/:category_id/articles' do
  category = Category.where("id = #{params[:category_id]}")[0]
  @articles = category.articles
  erb :'article_index'
end
