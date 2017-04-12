get '/catagories/:catagory_id/articles/new' do
  @catagory = Catagory.find(params[:catagory_id])
  erb :'articles/new', layout: false
end

post '/catagories/:catagory_id/articles' do
  @article = Article.create(params['article'])
  if request.xhr?
    erb :'articles/show', layout: false
  else
    redirect to "catagories/#{params[:catagory_id]}"
  end
end
