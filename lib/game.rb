require_relative 'player'

class Game
  def attack(player)
    deduct_hp(player)
  end

  private
  def deduct_hp(player)
    player.hit_points -= 10
  end
end
