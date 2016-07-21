require_relative 'player'



class Game

attr_reader :current_player, :current_player, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    deduct_hp(player)

  end

  def switch_turn
    @current_player = opponent
  end

  def opponent
    (@players - [@current_player])[0]
  end

  private

  def deduct_hp(player)
    player.hit_points -= 10
  end


end
