module Hoops
  class Deck
    describe "#draw" do
      let(:deck) { Deck.new('./lib/deck') }
      let(:draw) { deck.draw }
      it "has an id key" do
        expect(draw).to have_key "id"
      end
      it "has an action key" do
        expect(draw).to have_key "action"
      end
      it "has a rebound key" do
        expect(draw).to have_key "rebound"
      end
      it "has a shot_num key" do
        expect(draw).to have_key "shot_num"
      end
      it "has a advance key" do
        expect(draw).to have_key "advance"
      end
      it "has a jump_to key" do
        expect(draw).to have_key "jump_to"
      end
      it "has a block key" do
        expect(draw).to have_key "block"
      end
      it "has a z_reading key" do
        expect(draw).to have_key "z_reading"
      end
      it "has a press key" do
        expect(draw).to have_key "press"
      end
      it "has a foul_num key" do
        expect(draw).to have_key "foul_num"
      end
    end
  end
end 