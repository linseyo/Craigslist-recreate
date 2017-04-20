# show all articles in a particular category
get '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @articles = @category.articles
  erb :"../views/articles/list"    
end

# show form to edit an article - but only if article's secret key has been entered
get '/categories/:category_id/articles/:id/edit' do 
  @article = Article.find(params[:id])
  if params[:key] == @article.secret_key
    "Add code to EDIT article with category:#{Category.find(params[:category_id]).name} and article description:#{Article.find(params[:id]).description}"
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
  random_string=('a'..'z').to_a.shuffle[0,5].join
  puts 'random string to follow'
  puts random_string
  this_category=Category.find(params[:category_id])
  puts 'params[article] to follow'
  p params['article']
  params['article']['secret_key'] = random_string
  new_article=Article.new(params['article'])
  this_category.articles << new_article
  this_category.save
  # get article id of just-saved article
  new_article_id=new_article.id
  @secret_url = "localhost:9393/categories/#{params[:category_id]}/articles/#{new_article_id}/#{random_string}"
  erb :'../views/articles/save'
end

# save updates made to this article
put '/categories/:category_id/articles/:id' do






end