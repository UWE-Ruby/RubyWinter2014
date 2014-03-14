require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end

	def attack! human
		puts "hi from Vampire"
	end


protected # only instances of this class and subclasses (check definition)

	def bite! human

	end

private # only this instance

end
