Feature: This is a really cool game.

Scenario: Chris always win the game.
  Given "Chris" is logged in
  When he clicks move
  Then he wins the game
    And he sees the text "You Won!"

Scenario: Bill always loses the game.
 Given "Bill" is logged in
 When he clicks move
 Then he loses the game
   And he sees the text "You Lose!"
