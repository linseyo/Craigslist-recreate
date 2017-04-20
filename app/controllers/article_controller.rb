
def make_random_string(length)
  return ('a'..'z').to_a.shuffle[0,length].join
end

# show list of articles in a particular category
get '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @articles = @category.articles
  erb :"../views/articles/list"    
end

# show form to edit an article - but only if article's secret key has been entered
get '/categories/:category_id/articles/:id/edit' do 
  @article = Article.find(params[:id])
  if params[:key] == @article.secret_key
    erb :"../views/articles/edit"
  else
    redirect '/'
  end
end

# show form to create a new article
get '/categories/:category_id/articles/new' do 
  @category= Category.find(params[:category_id])
  erb :'../views/articles/new'
end

# show form to view an article
get '/categories/:category_id/articles/:id' do
  @article = Article.find(params[:id])
  @category = Category.find(params[:category_id])
  erb :"../views/articles/show"
end

# save newly created article
post '/categories/:category_id/articles' do
  # make new article record and shovel into category
  random_string= make_random_string(6)
  while Article.find_by(secret_key: random_string) != nil 
     random_string=('a'..'z').to_a.shuffle[0,5].join
  end
  this_category=Category.find(params[:category_id])
  params['article']['secret_key'] = random_string
  new_article=Article.new(params['article'])
  this_category.articles << new_article
  this_category.save
  # get article id of just-saved article
  new_article_id=new_article.id
  @save_or_create= 'create'
  @secret_url = "localhost:9393/categories/#{params[:category_id]}/articles/#{new_article_id}/edit?key=#{random_string}"
  erb :'../views/articles/save'
end

# save updates made to this article
put '/categories/:category_id/articles/:id' do
  puts 'in articles controller for put -save article - params to follow'
  p params
  @article = Article.find(params[:id])
  @article.title=params[:title]
  @article.description=params[:description]
  @article.price= params[:price]
  @article.save 
  cat_id = @article.category_id
  @secret_url = "localhost:9393/categories/#{cat_id}/articles/#{@article.id}/edit?key=#{@article.secret_key}"
  @save_or_create = 'save'
  erb :'../views/articles/save'
end