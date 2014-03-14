require './named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name)
		@nocturnal = noc
		@vulnerabilities = vul
		@dangers = dangers
		@legs = legs
	end

	def attack! human
		puts "hi from Monster"
		super
	end
end	
