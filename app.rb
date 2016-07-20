require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    $game = Game.new
    $game.attack($player_1)
    redirect '/play'
  end

  run! if app_file == $0

end
