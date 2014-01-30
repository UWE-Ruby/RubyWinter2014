require_relative 'named_thing'
require_relative 'other_thing'
class Human
  include NamedThing
  include OtherThing
end