get '/categories/:category_id/articles/new' do
  @category = Category.find(params[:category_id])
  erb :'articles/new'
end

get '/categories/:category_id/articles/:id/:key_link' do
  @category = Category.find(params[:category_id])
  @article = Article.find_by(key_url: params[:key_link])
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

  redirect to "/categories/#{category.id}/articles/#{article.id}/#{article.key_url}"
end

get '/categories/:category_id/articles/:id/edit/:secret_key' do
  @article = Article.find_by(secret_link: params[:secret_key])
  @category = Category.find(params[:category_id])
  erb :'articles/edit'
end

put '/categories/:category_id/articles/:id' do
  Article.find(params[:id]).update(params['article'])
  redirect to "/categories/#{params[:category_id]}/articles/#{params[:id]}"
end






