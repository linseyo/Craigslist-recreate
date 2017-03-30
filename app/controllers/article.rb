get '/articles' do
  @articles = Article.all
  erb :'articles/index'
end

get '/categories/:category_id/articles/:id/secret_key' do
  article = Article.find(params[:id])
  @secret_key = article.secret_link
	erb :'articles/secret_key'
end

get '/categories/:category_id/articles/new' do
	@category = Category.find(params[:category_id])
	erb :'articles/new'
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :'articles/show'
end

post '/categories/:category_id/articles' do
	new_article = Article.create(params['article'])
	category = Category.find(params[:category_id])
	category.articles << new_article
	redirect to "/categories/#{category.id}/articles/#{new_article.id}/secret_key"
end
