class Player

attr_reader :name, :healthpoints
attr_accessor :poison

def initialize(name)
  @name = name
  @healthpoints = 100
  @poison = false
  @poison_damage = [1,2,3,4,5]
end

def receive_damage
 @healthpoints -= Kernel.rand(1..21)
 check_poison
end

def receive_super_damage
  @healthpoints -= 50 if randomiser == 5
  check_poison
end

def receive_heal
 @healthpoints += Kernel.rand(1..21)
 check_poison
end

def receive_poison
if @poison_damage == []
  @poison = false
  @poison_damage = [1,2,3,4,5]
else
  @healthpoints -= @poison_damage.pop
end
end

def check_poison


if @poison == true
  receive_poison
end
end

private

def randomiser
  Kernel.rand(1..5)
end

end
