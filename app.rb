require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @hit_message = session[:attack]
    erb :play
  end

  post '/attack' do
    session[:attack] = 'Wham! Kapow! Great hit!'
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
