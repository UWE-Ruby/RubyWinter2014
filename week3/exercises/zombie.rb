require_relative 'named_thing'

class Zombie
  include NamedThing
  
  def say_name
    "uuurrrrggggghhhhh #{@name}"
  end
end