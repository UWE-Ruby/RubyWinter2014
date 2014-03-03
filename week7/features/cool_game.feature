Feature: This is a really cool game.

Scenario:  Jack always wins the game.
  Given "Jack" is logged in
  When he clicks move
  Then he wins the game
    And he sees the text "You Won!"
  
  Scenario:  Owen always loses the game.
  Given "Owen" is logged in
  When he clicks move
  Then he loses the game
    And he sees the text "You Lost!"
