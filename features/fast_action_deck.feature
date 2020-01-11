Feature: Fast action deck

Scenario: Select the first card from the fast action card deck
  Given I have a set of fast action cards
  When I select the top card
  Then I see the details of the top card

Scenario: Shuffle the fast action card deck
  Given I have a set of fast action cards
  When I shuffle the deck
  Then the cards are in a random order
  
