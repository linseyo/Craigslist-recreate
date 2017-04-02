  get '/categories'  do
    @categories = Category.all
    erb :"../views/categories/show"
  end