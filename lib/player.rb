class Player

attr_reader :name, :healthpoints

def initialize(name)
  @name = name
  @healthpoints = 100
end

def receive_damage
 @healthpoints -= 10
end

end
