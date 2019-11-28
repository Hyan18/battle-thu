require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { Game.new(player_1, player_2) }
  describe "#attack" do
    it "should reduce hp when attacked" do
      expect( player_2 ).to receive( :reduce_hp ).with 10
      game.attack(player_2)
    end
  end
end
