Then("I see {string}") do |message|
  expect(@messenger.string.split("\n")).to include(message)
end

Then("I see the details of the top card") do
  expect(@card).to have_key('title')
end

Then("the cards are in a random order") do
  @deck
end