Feature: This is a really cool game.

Scenario: Renee always win the game.
  Given "Renee" is logged in
  When she clicks move
  Then she wins the game
    And she sees the text "You Won!"

Scenario: Bethany always loses the game.
  Given "Bethany" is logged in
  When she clicks move
  Then she loses the game
    And she sees the text "You Lost!"