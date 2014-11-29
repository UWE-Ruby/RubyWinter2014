require 'named_thing'
class Zombie
  include NamedThing

  def say_name
    "uuurrrgggghhhh #{@name}"
  end
end
