Feature: Safe Distance
	In order to be safe
	I need to maintain a safe distance from the car I am following
	I want to calculate the safe speed from the car I am following

Scenario:
	Given I have entered the preceeding car distance as 10 
	When I press calculate
	Then the result returned should be the safe speed

