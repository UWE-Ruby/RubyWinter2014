Feature: This is a really cool game.

Scenario: Lynn always win the game.
	Given Lynn is logged in 
	When she clicks move
	Then she wins the game
		And she sees the text "You Won!"

Scenario: Sam always loses the game.
	Given Sam is logged in 
	When she clicks move
	Then she loses the game
		And she sees the text "You Lost!"