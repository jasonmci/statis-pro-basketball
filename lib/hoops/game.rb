module Hoops
  class Game
    def initialize(output)
      @output = output
    end
    def start
      @output.puts "Start a new basketball game"
      @output.puts "Select the visiting team: "
    end
  end
end