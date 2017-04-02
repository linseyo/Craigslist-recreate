  get '/categories'  do
    @categories = Category.all
    erb :"../views/categories/show"
  end

  get '/categories/:category_id/articles' do
    @category=Category.find(params[:category_id])
    puts "CATEGORY to FOLLOW"
    p @category
    # @articles = Article.where(category_id: params[:category_id])
    @articles = @category.articles
 
    puts "Articles length is #{@articles.length}"
    puts "Articles count is #{@articles.count}"
    puts "ARTICLES TO FOLLOW:"
    p @articles
    erb :"../views/articles/show"    
  end