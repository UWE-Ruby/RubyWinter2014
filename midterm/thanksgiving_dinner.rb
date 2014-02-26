require './dinner.rb'
class ThanksgivingDinner < Dinner

	attr_accessor :guests
	attr_accessor :menu


	def initialize menu
		@diet = {diet: menu}
	end

	def menu
		
	end

	def seating_chart_size
		guests.join.inject(:+)
	end

end