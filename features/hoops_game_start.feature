Feature: Start a basketball game

Scenario: Start the game
  Given I have not started the game
  When I start a new game
  Then I see "Start a new basketball game"
  And I see "Select the visiting team: "

  