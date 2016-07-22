require_relative 'player'

class Game

attr_reader :player_1, :player_2, :current_player

def self.game(player_1,player_2)
  @game = Game.new(player_1,player_2)
end

def self.instance
  @game
end

def initialize(player_1 ,player_2)
  @player_1 = player_1
  @player_2 = player_2
  @current_player = [@player_1,@player_2]
  @loser = nil
end

def attack
  @current_player.last.receive_damage
  loser
  switch_turn
end

def super_attack
  @current_player.last.receive_super_damage
  loser
  switch_turn
end

def heal
  @current_player.first.receive_heal
  loser
  switch_turn
end

def switch_turn
  @current_player.reverse!
end

def loser
  @loser = @current_player.last if @current_player.last.healthpoints <= 0
  @loser
end

end
