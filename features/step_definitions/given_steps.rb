Given("I have not started the game") do
end

Given("I have a set of fast action cards") do
  # provide the location of the fast action cards
  # this will fetch the cards and put them into a list which can then
  # be randomized
  @deck = Hoops::Deck.new("./lib/deck")
end

