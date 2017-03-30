post '/categories/:category_id/articles' do
  @category = Category.find_by(id: params[:category_id])
  params['article']['category_id'] = params[:category_id]
  Article.create(params['article'])
  erb :'articles/confirmation'
end

get '/categories/:category_id/articles' do
  category = Category.find_by(id: params[:category_id])
  @articles = category.articles
  erb :'articles/index'
end

get '/categories/:category_id/articles/new' do
  @category = Category.find(params[:category_id])
  erb :'articles/new'
end

get '/categories/:category_id/articles/:id' do
  @article = Article.find(params[:id])
  erb :'articles/show'
end

# get '/categories/:category_id/articles'
