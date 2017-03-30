get '/articles' do
  @articles = Article.order(updated_at: :desc)
  erb :'articles/index'
end

get '/articles/new' do
  erb :'articles/new'
end

post '/articles' do
  Article.create(params)
  redirect '/articles'
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :'articles/show'
end

get '/articles/:id/edit' do
  @article = Article.find(params[:id])
  erb :'articles/edit'
end

put '/articles/:id' do
  @article = Article.find(params[:id])
  @article.title = params[:title]
  @article.price = params[:price]
  @article.description = params[:description]
  @article.email = params[:email]
  erb :'articles/show'
end

delete '/articles/:id' do
  Article.destroy(params[:id])
  redirect '/articles'
end
