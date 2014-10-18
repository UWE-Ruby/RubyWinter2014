Feature: This is a really cool game.

Scenario: Kristian always wins the game
  Given "Kristian" is logged in
  When he clicks move
  Then he wins the game
    And he sees the text "You Won!"

Scenario: Bethany always loses the game
  Given "Bethany" is logged in
  When she clicks move
  Then she loses the game
    And she sees the text "You Lost!"