require_relative 'player'

class Game

attr_reader :player_1, :player_2, :current_player

def initialize(player_1 ,player_2)
  @player_1 = player_1
  @player_2 = player_2
  @current_player = [@player_1,@player_2]
end

def attack
  @current_player.last.receive_damage
  switch_turn
end

def switch_turn
  @current_player.reverse!
end

end
