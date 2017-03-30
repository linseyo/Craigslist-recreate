# NOTE: Putting a lot of comments for my own comprehension later on - Julie

get '/' do

  # Creating redirect for user-experience & RESTful convention
  redirect to '/categories'
end

###################### READ #####################

get '/categories' do

  # Page that lists all categories
  erb :'categories/index'
end

get '/categories/:category_id/articles/:id'

  # Page that lists all articles in given category
  erb :'categories/show'
end

##################### CREATE #####################

get '/categories/:category_id/articles/new'

  # Page that contains form to create new article
  erb :'categories/new'
end

post '/categories/:category_id/articles'

  # Redirecting to article just created
  redirect to '/categories/:category_id/articles/:id'
end

##################### UPDATE #####################

get '/categories/:categories_id/articles/:id/edit'

  # Page that contains form to edit current article
  erb :'categories/edit'
end

put '/categories/:categories_id/articles/:id'

  # Redirecting to article just edited
  redirect to '/categories/:category_id/articles/:id'
end

##################### DESTROY #####################


