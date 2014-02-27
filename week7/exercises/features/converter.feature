Feature: Converting metric
	In order to talk about the weather back home
	As a traveler in London
	I want to convert a Fahrenheit temperature to Celsius

Scenario:
	Given I have entered 32 into the converter
<<<<<<< HEAD
	And I set the type to "Fahrenheit"
=======
	And I set the type to Fahrenheit
>>>>>>> a2e55ab713c75cf40b90ba90effda2dc9a3eb2b2
	When I press convert
	Then the result returned should be 0.0
	
Scenario:
	Given I have entered 75 into the converter
<<<<<<< HEAD
	And I set the type to "Fahrenheit"
=======
	And I set the type to Fahrenheit
>>>>>>> a2e55ab713c75cf40b90ba90effda2dc9a3eb2b2
	When I press convert
	Then the result returned should be 23.9
	
