Feature: Converting metric
	In order to pack for London
	As a traveler
	I want to be told the Celsius temperature in Fahrenheit

Scenario:
  Given I have entered 0 into the converter
  And I set the type to "Celsius"
  When I press convert
  Then the result returned should be 32.0

Scenario:
  Given I have entered 21 into the converter
  And I set the type to "Celsius"
  When I press convert
  Then the result returned should be 69.8
