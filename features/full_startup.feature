Feature: Full startup feature

Scenario: Start a game with full rosters
  Given I have not started the game
  When I start a new game with the following teams:
      | visitors | home     |
      | warriors | clippers |
  Then I see the correct visiting team roster
  And I see the correct home team roster
  