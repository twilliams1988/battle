class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name
  attr_accessor :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end
end
