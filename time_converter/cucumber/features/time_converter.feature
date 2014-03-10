Feature: 24 hour UTC to USA Time Converter
	In order to easily convert Current UTC time to USA time
	As a developer 
	I want to convert the UTC time to the desired USA time zone.

Scenario:
	Given I have entered 06:00:00
	And I have selected "PST"
	When I press convert
	Then the result returned should be 22:00:00

