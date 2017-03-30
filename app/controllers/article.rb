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
	
	
end