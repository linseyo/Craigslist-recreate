get '/articles/new/:catagory_id' do
  @catagory = Catagory.find(params[:catagory_id])
  erb :'articles/new'
end

post '/articles/new/:catagory_id' do
  @article = Article.create(params['article'])
  redirect to 'articles/index'
end
