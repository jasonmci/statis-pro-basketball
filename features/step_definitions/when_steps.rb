When("I start a new game") do
    @messenger = StringIO.new
    game = Hoops::Game.new(@messenger)
    game.start
end

When("I select the top card") do
  @card = @deck.draw
end

When("I shuffle the deck") do
  @deck.shuffle_deck
end

When("I select a card") do
  @card = @deck.draw
end
  