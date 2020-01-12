Then("I see {string}") do |message|
  expect(@messenger.string.split("\n")).to include(message)
end

Then("I see the details of the top card") do
  expect(@card).to have_key('action')
end

Then("the cards are in a random order") do
  @deck
end

Then("I have one less card in the deck") do
  expect(@deck.count).to equal (@deck_count - 1)
end

Then("the visiting team is loaded into the system") do
  expect(@visiting_team).to have_key("city")
end

Then("the visiting players are loaded into the system") do
  expect(@visiting_team["players"]).to be_kind_of Array
end

Then("the home team is loaded into the system") do
  expect(@home_team).to have_key("city")
end

Then("the home players are loaded into the system") do
  expect(@home_team["players"]).to be_kind_of Array
end

Then("I see the correct visiting team roster") do
  expect(@visiting_team["players"].count).to be > 1
end
  
Then("I see the correct home team roster") do
    expect(@home_team["players"].count).to be > 1
end