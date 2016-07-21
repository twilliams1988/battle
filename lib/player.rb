class Player

attr_reader :name, :healthpoints

def initialize(name)
  @name = name
  @healthpoints = 100
end

def receive_damage
 @healthpoints -= Kernel.rand(1..21)
end

end
