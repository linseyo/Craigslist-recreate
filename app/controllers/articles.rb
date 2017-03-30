get '/articles' do
  @articles = Article.order(updated_at: :desc)
  if params[:key]
    @id = params[:id]
    @key = params[:key]
  end
  erb :'articles/index'
end

get '/articles/new' do
  @categories = Category.order(:name)
  erb :'articles/new'
end

post '/articles' do
  article = Article.create(params[:article])
  article.category = Category.find_by(name: params[:category])
  article.key = Article.generate_key
  article.save
  article.reload
  redirect "/articles?id=#{article.id}&key=#{article.key}"
end

get '/articles/:id' do
  @article = Article.find(params[:id])
    erb :'articles/show'
end

get '/articles/:id/edit' do
  @article = Article.find(params[:id])
  if params[:key] == @article.key
    erb :'articles/edit'
  else
    redirect '/articles'
  end
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
