get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :'/index'
end

get '/articles/:category' do
  @category = params[:category]

  erb :'/articles/index'
end
