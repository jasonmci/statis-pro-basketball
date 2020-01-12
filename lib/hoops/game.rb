module Hoops
  class Game
    def initialize(output)
      @output = output
    end
    def start(visiting, home)
      @output.puts "Start a new basketball game"
      @output.puts "Select the visiting team"
      @output.puts "Visitors: #{visiting}"
      @output.puts "Home: #{home}"
    end
  end
end