# show all articles in a particular category
get '/categories/:category_id/articles' do
  @category = Category.find(params[:category_id])
  @articles = @category.articles
  erb :"../views/articles/list"    
end

# show form to edit an article
get '/categories/:category_id/articles/:id/edit' do 
"Add code to EDIT article with category:#{Category.find(params[:category_id]).name} and article description:#{Article.find(params[:id]).description}"

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
  # "add code to VIEW article with category:#{Category.find(params[:category_id]).name} and article description:#{Article.find(params[:id]).description}"
  erb :"../views/articles/show"
end


# save article
post '/categories/:category_id/articles' do
  "about to save article!  need code here"
  # make new article record and shovel into category
  this_category=Category.find(params[:category_id])
  new_article=Article.new(params['article'])
  this_category.articles << new_article
  this_category.save
  "just saved to database!"
  # get article id of just-saved article
  new_article_id=new_article.id

  # generate secret url and display to user
  secret_url = 'localhost:9393/categories/#{params[:category_id]}/articles/#{new_article_id}'
  "The secret URL is: #{secret_url}"

  <a href="/" >Return to CraigsList, Junior, Homepage!></a>
end