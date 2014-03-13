Feature: Safe Distance
	In order to be safe
	I need to maintain a safe distance from the car I am following
	I want to calculate the safe speed from the car I am following
	


Scenario:
	Given I have entered 50 miles per hour into the calculator
	And I set the type of car to sedan
	And I set the preceeding car distance to 10 car lengths 
	When I press calculate
	Then the result returned should be safe
	
Scenario:
	Given I have entered 50 miles per hour into the calculator
	And I set the type of car to sedan
	And I set the preceeding car distance to 5 car lengths 
	When I press calculate
	Then the result returned should be unsafe