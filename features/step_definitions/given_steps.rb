Given("I have not started the game") do
end

Given("I have a set of fast action cards") do
  @deck = Hoops::Deck.new("./lib/deck")
  @deck_count = @deck.count
end

