  get '/categories'  do
    @categories = Category.all
    erb :"../views/categories/show"
  end

  get '/categories/:category_id/articles' do
    @category=Category.find(params[:category_id])
    @articles = @category.articles
    erb :"../views/articles/show"    
  end