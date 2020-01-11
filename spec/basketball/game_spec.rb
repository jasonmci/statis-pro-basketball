module Hoops
  describe Game do
    describe "#start" do
      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }      
      it "sends a welcome message" do
        expect(output).to receive(:puts).with('Start a new basketball game')
        game.start
      end
      it "prompts to select a team" do
        expect(output).to receive(:puts).with('Select the visiting team: ')
        game.start
      end
    end
  end
end