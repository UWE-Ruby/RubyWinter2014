Feature: MadLib Game
	As a person who enjoys MadLibs
	I want to enter words to create a MadLib.

Scenario: Begin Game
	Given I am not yet playing
	When I start a new MadLib
	Then I should see "MadLib types: Pirate, Student, Vacation"
	And I should see "Enter MadLib type:"

Scenario: Enter specific MadLib word
	Given I have started a game and chosen a type
	Then The computer prompts for a type of word
	And I enter a word

Scenario: Continue to enter MadLib words
	Given There are still words to add to the MadLib
	Then The computer prompts for a type of word
	And I enter a word

Scenario: There are no more MadLib words to enter
	Given I have entered all words for this MadLib
	Then I should see "Your MadLib is complete"
	And The computer should print out the completed MadLib
