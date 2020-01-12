module Hoops
  class League

    def initialize(league_name)
      @teams = Dir['./lib/' + league_name + '/*.json']
    end

    def team(name)
      team_matcher = @teams.find { |team| team =~ /#{name.downcase}/ }
      file = File.open(team_matcher).read
      @team = JSON.parse file
    end

    def visiting_team(team)
      @visiting_team = team
    end

    def home_team(team)
      @home_team = team
    end
  end
end