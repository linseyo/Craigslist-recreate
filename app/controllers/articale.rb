get '/categories/:id/articales/create' do
  erb :articale_create
end

get '/categories/:category_id/articales/:id' do
  p params
   @articale = Articale.find(params[:id])
   @category = Category.find(params[:category_id])
  erb :articale

end



post '/categories/:category_id/articales' do
  @articale = Articale.create(params[:articale])
  redirect to("/articales/#{@articale.id}")
end
