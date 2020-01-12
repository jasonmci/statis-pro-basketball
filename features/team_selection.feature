Feature: Team Selection

Scenario: Select visiting team
  Given I have not started the game
  When I start a new game
  And I select the visiting team
  Then the visiting team is loaded into the system
  And the visiting players are loaded into the system

Scenario: Select home team
  Given I have not started the game
  When I start a new game
  And I select the visiting team
  And I select the home team
  Then the home team is loaded into the system
  And the home players are loaded into the system