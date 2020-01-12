module Hoops
  describe Game do
    describe "#start" do
      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }      
      it "sends a welcome message" do
        expect(output).to receive(:puts).with('Start a new basketball game')
        game.start('Team1', 'Team2')
      end
    end
  end
end