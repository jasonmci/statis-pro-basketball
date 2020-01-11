module Hoops
  class Deck
    def initialize(deck)
      # load all the json files from this directory
      @deck = Dir[deck + '/*.json']
    end
    def draw
      file = File.open(@deck.shift).read
      @card = JSON.parse file
    end

    def shuffle_deck(seed=1)
      @deck.shuffle!(Random.new(seed))
    end
  end
end