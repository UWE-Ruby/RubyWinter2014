class PirateTranslator
	def say (word)
		@word = word
	end
	
	def translate
		self.send("split")
	end
	
	def split
		
	end
		
end
