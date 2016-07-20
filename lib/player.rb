class Player

attr_reader :name, :healthpoints

def initialize(name)
  @name = name
  @healthpoints = 100
end

def reduce_hp
  @healthpoints -= 10
end


end
