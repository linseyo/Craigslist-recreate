get '/articles' do
  @articles = Article.all
  erb :'articles/index'
end

get '/articles/:article_id' do
  @article = Article.find(params[:article_id])
  erb :'articles/show'
end
