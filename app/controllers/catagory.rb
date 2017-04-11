get '/catagories' do
  @catagory = Catagory.all
  erb :'catagories/index'
end

get '/catagories/:id' do
  @catagory = Catagory.find(params[:id])
  @articles = @catagory.articles
  if request.xhr?
    erb :'articles/index', layout: false
  else
    erb :'articles/index'
  end
end
