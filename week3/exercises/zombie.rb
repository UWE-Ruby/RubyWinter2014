require './named_thing.rb'

class Zombie
  include NamedThing

  def say_name
  	"uuuuurrrgggghhhh #{@name}"
  end
end
