get '/catagories/:catagory_id/articles/new' do
  @catagory = Catagory.find(params[:catagory_id])
  erb :'articles/new'
end


