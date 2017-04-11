get '/catagories/:catagory_id/articles/new' do
  @catagory = Catagory.find(params[:catagory_id])
  erb :'articles/new'
end

post '/catagories/:catagory_id/articles' do
  @article = Article.create(params['article'])
  redirect to "catagories/#{params[:catagory_id]}"
end
