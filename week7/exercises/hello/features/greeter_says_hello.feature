Feature: greater says hello

In order to start learning RSpec and Cucumber
As a reader of the Rspec book
I want a greater to say hello

  Scenario: greeter says hello
    Given a greeter
    When I send it the greet message
    Then I should see "Hello Cucumber!"
