require './lib/game'
require './lib/player'
require 'sinatra/base'

class Battlemon < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    if @game.gameover
      redirect '/gameover'
    else
      @game.attack(@game.opponent)
      @game.switch_turn
      erb :attack
    end
  end

  get '/gameover' do
    erb :gameover
  end

  get '/battle' do
    erb :battle
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
