require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/cat' do
  @cat_name = ["Amigo", "Oscar", "Viking", "Jason", "Suse"].sample
  erb(:index)
end

get '/jason' do
  "Jason's secret directory!"
end

get '/susan' do
  "helloooo :) :D ;)"
end

get '/rainbow' do
  "lemon drops and bunnies"
end
