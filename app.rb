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
    if params[:attack]
      @game.attack
    elsif params[:super_attack]
      @game.super_attack
    elsif params[:heal]
      @game.heal
    elsif params[:poison]
      @game.poison_attack
    end
    redirect '/play'
  end

  run! if app_file == $0

end
