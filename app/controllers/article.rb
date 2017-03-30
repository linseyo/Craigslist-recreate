get '/articles/new/:catagory_id' do
  @catagory = Catagory.find(params[:catagory_id])
  params[:catagory_id]
  erb :'articles/new'
end

post '/articles/new/:catagory_id' do
  @article = Article.new(name: params)
end
