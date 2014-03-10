require "#{File.dirname(__FILE__)}/madlib_game.rb"

 describe MadLib do

	before do
		@madlib = MadLib.new()
		@madlib.madlib_types = ["Pirate", "LooneyTune", "Space", "Penguin"]
		@madlib.madlib = "test"
		@madlib.story_array = ["The @@@noun went to the @@@noun, and",
							"@@@verb some @@@adjective @@@noun."]
		@madlib.story = ""
		@madlib.word_array = []
	end

	it "should initialize @story and @word_array to empty" do
		@madlib.story.should be_empty
		@madlib.word_array.should be_empty
	end
 end
