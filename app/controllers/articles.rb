get '/articles' do
  @articles = Article.order(updated_at: :desc)
  erb :'articles/index'
end

get '/articles/new' do

end

post '/articles' do

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

end
