require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  def players
    @player_1 = $game.player_1
    @player_2 = $game.player_2
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    players
    erb :play
  end

  get '/attack' do
    players
    $game.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
