require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.game(Player.new(params[:player_1_name]),
                     Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/attack' do
    @game = Game.instance
    @game.attack
    redirect '/play'
  end

  post '/super_attack' do
    @game = Game.instance
    @game.super_attack
    redirect '/play'
  end

  post '/heal' do
    @game = Game.instance
    @game.heal
    redirect '/play'
  end



  run! if app_file == $0

end
