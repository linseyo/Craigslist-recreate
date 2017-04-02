  get '/categories'  do
    @categories = Category.all
    erb :"../views/categories/list"
  end

