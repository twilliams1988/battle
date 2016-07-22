class Player

attr_reader :name, :healthpoints

def initialize(name)
  @name = name
  @healthpoints = 100
end

def receive_damage
 @healthpoints -= Kernel.rand(1..21)
end

def receive_super_damage
  @healthpoints -= 50 if randomiser == 5
end

private

def randomiser
  Kernel.rand(1..5)
end

end
