get '/articles' do
  @articles = Article.all
  erb :'articles/index'
end

get '/categories/:category_id/articles/new' do
	@category = Category.find(params[:category_id])
	erb :'articles/new'
end

get '/articles/:article_id' do
  @article = Article.find(params[:article_id])
  erb :'articles/show'
end

post '/categories/:category_id/articles' do 
	new_article = Article.create(params['article'])
	@category = Category.find(params[:category_id])
	@category.articles << new_articles
	redirect to ('/categories/#{category.id}/articles/#{article.id}/secret_key')
end

get '/categories/#{category.id}/articles/#{article.id}/secret_key' do
	erb :'articles/secret_key'
end