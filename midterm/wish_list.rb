class WishList
	include Enumerable

	attr_accessor :wishes

	def each 
		wishes.map.with_index do |w, i|
			wish = "#{i+1}" + ". " + w
			yield wish
		end
	end

end