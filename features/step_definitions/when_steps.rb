When("I start a new game") do
    @messenger = StringIO.new
    game = Hoops::Game.new(@messenger)
    game.start('Warriors', 'Clippers')
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
  
When("I select the visiting team") do
  @league = Hoops::League.new('nba')
  @visiting_team = @league.team('Warriors')
end

When("I select the home team") do
  @league = Hoops::League.new('nba')
  @home_team = @league.team('Warriors')
end

When("I start a new game with the following teams:") do |table|
    visitors = table.hashes[0]["visitors"].downcase
    home     = table.hashes[0]["home"].downcase
    @league = Hoops::League.new('nba')
    @visiting_team = @league.team(visitors)
    @home_team     = @league.team(home)
end