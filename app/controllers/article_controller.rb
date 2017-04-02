# show all articles in a particular category
get '/categories/:category_id/articles' do
  @category=Category.find(params[:category_id])
  @articles = @category.articles
  erb :"../views/articles/list"    
end

# show form to create a new article

get '/categories/:category_id/articles/new' do 

" Add code to create a new article with category:#{Category.find(params[:category_id]).name}"

end

# show form to edit an article
get '/categories/:category_id/articles/:id/edit' do 
"Add code to EDIT article with category:#{Category.find(params[:category_id]).name} and article description:#{Article.find(params[:id]).description}"

end

# show form to view an article
get '/categories/:category_id/articles/:id' do
  @article=Article.find(params[:id])
  @category=Category.find(params[:category_id])
  # "add code to VIEW article with category:#{Category.find(params[:category_id]).name} and article description:#{Article.find(params[:id]).description}"
  erb :"../views/articles/show"
end

