class Rover

def initialize(intix,inity,initdirection)
@x=intix
@y=inity
@direction=initdirection
end

#behaviour
def move
	if @direction=="N"
		@y= @y + 1
  elsif @direction=="S"
    @y=@y-1
  elsif @direction=="E"
    @x=@x+1
  else @direction=="W"
    @x=x-1
  end
end


def turnleft
  if @direction=="N"
  	@direction="W"
  elsif @direction=="W"
  	@direction="S"
  elsif @direction=="S"
  	@direction="E"
  else @direction=="E"
  	@direction="N"
  end
end

def turnright
  if @direction=="N"
    @direction="E"
  elsif @direction=="E"
    @direction="S"
  elsif @direction=="S"
    @direction="W"
  else @direction=="W"
    @direction="N"
    end      
end

def to_s
	"I am at #{@x}  #{@y}, facing: #{@direction}"
end

def read_instructions(instructions)
  instuctions.each do |x|
    if instructions=="L"
      turnleft
    elsif instructions=="R"
      turnright
    elsif instructions=="M"
      move
    else 
      puts "an error has occured"
    end
  end
end

end





puts "please enter plateau size, x and y co-ordinates separated by comma"
plateau_size=gets.chomp.split(",")
plateau_size.map! {|x| x.to_i}
puts plateau_size.inspect

puts "please enter initial x and y co-ordinates for the rover, separated by comma"
coordinates=gets.chomp.split(",")
coordinates.map! {|x| x.to_i}
puts coordinates.inspect

puts "please enter the initial direction of the rover: N, S, W or E"
initial_direction=gets.chomp.to_s
puts initial_direction.inspect

puts "please enter the commands for moving the rover: L for turning left, R for turning right, M for moving, ie, 'LMLLRMMRM' "
instructions=gets.chomp.split('')
puts instructions.inspect


my_rover=Rover.new(2,2,"N")
puts my_rover
my_rover.move
my_rover.turnleft
my_rover.turnright
my_rover.turnright
my_rover.turnright
my_rover.turnright
puts my_rover
my_newrover=Rover.new(3,3,"S")
puts my_newrover
my_newrover.move
my_newrover.move
my_newrover.turnright
my_newrover.turnright
my_newrover.move
my_newrover.move
my_newrover.move
puts my_newrover






