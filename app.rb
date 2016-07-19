<<<<<<< HEAD
require 'sinatra/base'

class Battlemon < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
=======
require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p @params
  @name = params[:name]
  erb(:index)
>>>>>>> 1836a6cba04c17ba8963eff70ae972405df6870b
end
