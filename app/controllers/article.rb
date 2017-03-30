get '/categories/:category_id/articles/new' do
  @category = Category.find(params[:category_id])
  erb :'articles/new'
end

get '/categories/:category_id/articles/:id/secret_key' do
  erb :'/articles/secret_key'
end

get '/categories/:category_id/articles/:id' do
  @article = Article.find(params[:id])
  @category = Category.find(params[:category_id])
  erb :'articles/show'
end

post '/categories/:category_id/articles' do

  article = Article.create(params['article'])
  category = Category.find(params[:category_id])
  category.articles << article

  redirect to "/categories/#{category.id}/articles/#{article.id}/secret_key"
end




