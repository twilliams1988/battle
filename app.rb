require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking", "Jason", "Suse"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb(:index)
end
