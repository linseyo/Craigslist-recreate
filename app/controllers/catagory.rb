get '/catagories' do
  @catagory = Catagory.all
  erb :'catagories/index'
end

get '/catagories/:id' do
  @catagory = Catagory.find(params[:id])
  @articles = @catagory.articles
  erb :'articles/index'
end
