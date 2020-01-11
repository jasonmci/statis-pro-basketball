Feature: Fast action deck

Scenario: Select the first card from the fast action card deck
  Given I have a set of fast action cards
  When I select the top card
  Then I see the details of the top card

Scenario: Drawing a card depletes the deck by one
  Given I have a set of fast action cards
  When I select a card
  Then I have one less card in the deck

Scenario: Shuffle the fast action card deck
  Given I have a set of fast action cards
  When I shuffle the deck
  Then the cards are in a random order

